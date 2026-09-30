# sales-data-analysis-python-sql-powerbi

An end-to-end sales data analysis project using Python (Pandas),
## MySQL, and Power BI.

## Workflow
Raw Excel Data → Python/Pandas Cleaning → Cleaned CSV → MySQL → SQL
Analysis → Power BI Dashboard

## Dataset
The raw Excel dataset contains 500 sales records. After cleaning and
removing invalid/missing order dates, the final cleaned dataset contains
482 records.

Fields include: - Order_ID - Order_Date - Customer - Region - Product -
Sales - Cost - Profit - Year - Month

## Python Data Cleaning
The Jupyter Notebook uses Pandas to: - Import the raw Excel dataset -
Convert Excel serial dates into proper dates - Remove duplicate
records - Validate the Order_Date column - Remove rows with missing
order dates - Calculate Profit = Sales - Cost - Extract Year and
Month - Export the cleaned dataset as CSV

## SQL Analysis

The cleaned data is loaded into MySQL and analyzed through four queries
covering:
1.Regional Performance
2. Product Performance
3. Monthly Sales & Profit
4.Top Customers
The SQL queries are stored in sql/sales_analysis.sql.

## Power BI Dashboard

The dashboard provides: - Total Sales - Total Profit - Total Orders -
Profit Margin - Monthly Sales Trend - Profit by Region - Sales by
Product - Region and Year filters - Dynamic regional sales insight

The dynamic insight changes according to the selected region and year.

## Tools Used

Tool               Purpose

Excel              Raw data source
Python / Pandas    Data cleaning and transformation
Jupyter Notebook   Python workflow
MySQL              Data storage and SQL analysis
Power BI           Interactive dashboard and visualization
GitHub             Project documentation

## Repository Structure

sales-data-analysis-python-sql-powerbi/
├── README.md
├── data/
│   ├── sales.xlsx
│   └── sales_cleaned.csv
├── python/
│   └── salescleaning.ipynb
├── sql/
│   └── sales_analysis.sql
├── powerbi/
│   └── Sales_Dashboard.pbix
└── screenshots/
    └── sales_dashboard.png

## Key Learning Outcomes

* Data cleaning using Pandas
* Handling missing and duplicate records
* Date transformation
* Feature creation
* CSV preparation
* MySQL data loading
* SQL aggregation and grouping
* Business-oriented analysis
* Power BI visualization
* DAX measures
* Interactive filters and dynamic insights

## Project Note
This project was developed as a learning and portfolio project. It
combines a guided project workflow with additional SQL analysis and
interactive Power BI features to demonstrate an end-to-end data
analytics process.

## Dashboard Preview
![Blinkit_dashboard](https://github.com/anchalpatial899-hash/Blinkit-dashboard/blob/main/blinkit_dashboard.png))
