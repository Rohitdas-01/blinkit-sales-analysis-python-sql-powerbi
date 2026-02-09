select * from [dbo].[blinkit_data]

-- Q1. Underperforming outlets within the same location tier

WITH outlet_sales AS (
SELECT Outlet_Identifier,
Outlet_Location_Type,
cast((SUM(sales)) as decimal(10,2)) AS total_sales
FROM [dbo].[blinkit_data]
GROUP BY Outlet_Identifier, Outlet_Location_Type
),
ranked_outlets AS (
SELECT *,
RANK() OVER (PARTITION BY Outlet_Location_Type ORDER BY total_sales ASC) AS sales_rank
FROM outlet_sales
)

SELECT *
FROM ranked_outlets
WHERE sales_rank <= 3
ORDER BY outlet_location_type, total_sales;

-- Q2. Top 20% items contributing to total sales

WITH item_sales AS (
    SELECT Item_Identifier,
           CAST(SUM(Sales) AS DECIMAL(18,2)) AS total_sales
    FROM blinkit_data
    GROUP BY Item_Identifier
),
ranked_items AS (
    SELECT *,
           CAST(SUM(total_sales) OVER () AS DECIMAL(18,2)) AS grand_total_sales,
           CAST(
               SUM(total_sales) OVER (
                   ORDER BY total_sales DESC
                   ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
               ) AS DECIMAL(18,2)
           ) AS running_sales
    FROM item_sales
)
SELECT *,
       CAST(
           CAST(running_sales * 100.0 / grand_total_sales AS DECIMAL(5,2))
           AS VARCHAR(10)
       ) + '%' AS cumulative_sales_pct
FROM ranked_items
WHERE (running_sales * 100.0 / grand_total_sales) <= 80;

-- Q3. High-rated items but low sales (Hidden Opportunities)

SELECT
    Item_Type,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS avg_rating,
    CAST(SUM(Sales) AS DECIMAL(18,2)) AS total_sales
FROM blinkit_data
GROUP BY Item_Type
HAVING AVG(Rating) >= 4
AND SUM(Sales) < (
       SELECT AVG(total_sales)
       FROM (
           SELECT SUM(Sales) AS total_sales
           FROM blinkit_data
           GROUP BY Item_Type
       ) t
   )
ORDER BY avg_rating DESC;

-- Q4. Sales efficiency of new vs old outlets

SELECT
    CASE
        WHEN Outlet_Establishment_Year >= 2015 THEN 'New Outlet'
        ELSE 'Old Outlet'
    END AS outlet_age_group,
    COUNT(DISTINCT Outlet_Identifier) AS outlet_count,
    CAST(
        SUM(Sales) / COUNT(DISTINCT Item_Identifier)
        AS DECIMAL(18,2)
    ) AS sales_per_item
FROM blinkit_data
GROUP BY
    CASE
        WHEN Outlet_Establishment_Year >= 2015 THEN 'New Outlet'
        ELSE 'Old Outlet'
    END;


-- Q5. Top Item Categories with Most Fluctuating Sales

SELECT Top 5 Item_Type, Cast(STDEV(Sales) as decimal(10,2)) AS sales_fluctuation
FROM blinkit_data
GROUP BY Item_Type
ORDER BY sales_fluctuation DESC;




