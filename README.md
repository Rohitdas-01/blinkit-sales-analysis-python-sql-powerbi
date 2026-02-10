# 🛒 Blinkit Sales Analysis  
[![Python](https://img.shields.io/badge/Python-EDA-yellow?logo=python&logoColor=white)]()  
[![SQL Server](https://img.shields.io/badge/SQL%20Server-Analysis-red?logo=microsoftsqlserver&logoColor=white)]()  
[![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-orange?logo=powerbi&logoColor=white)]()  
[![GitHub](https://img.shields.io/badge/Repository-Active-brightgreen?logo=github)](https://github.com/Rohitdas-01/blinkit-sales-analysis-python-sql-powerbi)

---

## 📌 Table of Contents  
- [Overview](#overview)  
- [Business Requirement](#business-requirement)  
- [Dataset](#dataset)  
- [Tools & Technologies](#tools--technologies)  
- [Project Structure](#project-structure)  
- [Exploratory Data Analysis (EDA)](#eda)  
- [EDA Insights](#eda-insights)  
- [SQL Insights](#sql-insights)  
- [Dashboard](#dashboard)  
- [How to Run This Project](#how-to-run-this-project)  
- [Contact](#contact)

---

## <a id="overview"></a>🧾 Overview  
This project analyzes Blinkit sales data to understand sales performance, customer ratings, product distribution, and outlet behavior.  
The workflow includes:

1. **Python (Jupyter Notebook):** Data cleaning, transformations, and EDA  
2. **SQL Server:** Deeper structured analysis  
3. **Power BI:** Interactive dashboard for insights and KPI tracking  

The goal is to support better decision-making in sales strategy, product planning, and outlet performance.

---

## <a id="business-requirement"></a>🎯 Business Requirement  
The objective is to analyze Blinkit’s sales, ratings, outlet characteristics, and product attributes to meet the business requirements:

### **KPI Requirements**
- Total Sales  
- Average Sales  
- Number of Items Sold  
- Average Customer Rating  

### **Analysis Requirements**
1. Total Sales by Fat Content  
2. Total Sales by Item Type  
3. Fat Content by Outlet for Total Sales  
4. Total Sales by Outlet Establishment Year  

### **Chart Requirements**
5. Percentage of Sales by Outlet Size  
6. Sales by Outlet Location  
7. All Metrics by Outlet Type  

These requirements help evaluate trends, compare outlet performance, study product demand, and understand customer preferences.

---

## <a id="dataset"></a>📂 Dataset  
- **Total Rows:** **8,523**  
- **Total Columns:** **13**  
- **Missing Values:** Missing values found in *Item Weight*  
- **Key Columns:**  
  - Outlet Size, Outlet Type, Location Type  
  - Item Type, Item Fat Content, Item Visibility  
  - Item Weight, Item Outlet Sales  
  - Rating  

---

## <a id="tools--technologies"></a>🛠 Tools & Technologies  
| Tool | Usage |
|------|--------|
| 🐍 **Python** | Data cleaning, EDA, chart generation |
| 🧮 **SQL Server** | Analytical queries and pattern extraction |
| 📊 **Power BI** | Dashboard creation |
| 📓 **Jupyter Notebook** | EDA workflow |
| 🗂 **GitHub** | Version control |

---

## <a id="project-structure"></a>📁 Project Structure  
```
blinkit-sales-analysis-python-sql-powerbi/
│
├── README.md
├── Business Requirement.pdf
├── blinkit_sales_report.pdf
│
├── notebooks/
│ └── exploratory_data_analysis.ipynb
│
├── sql/
│ └── blinkit_analysis_queries.sql
│
├── images/
│ └── blinkit_dashboard.png
│
└── dashboard/
└── blinkit_dashboard.pbix
```

---

## <a id="eda"></a>📊 Exploratory Data Analysis (EDA)

### Performed in Python (Jupyter Notebook):
- Loaded dataset and reviewed structure  
- Checked data types, unique values, and summary statistics  
- Cleaned *Item Fat Content* values (`LF → Low Fat`, `Reg → Regular`)  
- Handled missing values in **Item Weight**  
- Renamed all columns to **snake_case** for consistency  
- Created basic sales and rating visualizations  
- Exported cleaned dataset for SQL analysis  

---

## <a id="eda-insights"></a>🧠 EDA Insights (Key Findings)

- **Total Sales:** **$1,201,681**  
- **Average Sales:** **$141**  
- **Number of Items Sold:** **8,523**  
- **Average Rating:** **4.0**  

### Additional Observations  
- Low Fat and Regular items show clear sales differences across outlets  
- Some item types show significantly higher demand  
- Larger outlets contribute a **higher percentage of total sales**  
- Tier 3 locations generate **stronger sales** compared to others  
- Newer outlets display more consistent performance in certain categories  
- Ratings remain stable across product segments with minor variations  

---

## <a id="sql-insights"></a>🧠 Insights From SQL Analysis  

- Identified **underperforming outlets** within the same location tier  
- Found the **top 20% items** contributing to the majority of total sales  
- Detected **high-rated items with low sales**, showing missed opportunities  
- Compared **sales efficiency** of new vs old outlets  
- Identified **top fluctuating product categories** impacting inventory planning  
- Analyzed sales behavior across outlet sizes, types, and establishment years  

---

## <a id="dashboard"></a>📈 Dashboard (Power BI)

The Power BI dashboard presents:

- Key metrics: Total Sales, Average Sales, Items Sold, Average Rating  
- Sales by Fat Content  
- Sales by Item Type  
- Sales by Outlet Size & Location  
- Year-wise Outlet Establishment performance  
- Metrics by Outlet Type  

### **Dashboard Image**  
![Blinkit Sales Dashboard](images/dashboard.png)

---

## <a id="how-to-run-this-project"></a>▶️ How to Run This Project  

### Step 1 - Clone the Repository**
```bash
git clone https://github.com/Rohitdas-01/blinkit-sales-analysis-python-sql-powerbi.git
```
### **Step 2 - Run Exploratory Data Analysis (Python)

Open Jupyter Notebook

Navigate to notebooks/
Run:
```bash
exploratory_data_analysis.ipynb
```
This includes:
- Data loading
- Data cleaning
- Feature preparation
- Basic visual summaries
- Exporting cleaned dataset for SQL
- 
### Step 3 - Load Data into SQL Server

1. Import the cleaned CSV
2. Execute SQL queries from:
```bash
sql/blinkit_analysis_queries.sql
```
### Step 4 - Open Power BI Dashboard
```bash
dashboard/blinkit_dashboard.pbix
```
Step 5 - Review Final Outputs
- blinkit_sales_report.pdf
- Power BI dashboard
- SQL insights

---

## <a id="contact"></a>📞 Contact


**Rohit Das**

**<img src="https://upload.wikimedia.org/wikipedia/commons/4/4e/Gmail_Icon.png" width="20px"> Email:**  
rohit.41.das@gmail.com  

**<img src="https://cdn-icons-png.flaticon.com/512/174/174857.png" width="20px"> LinkedIn:**  
https://www.linkedin.com/in/rohit-das-jsr/


