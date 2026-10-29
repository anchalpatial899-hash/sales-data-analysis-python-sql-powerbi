Python Data Cleaning 
This folder contains the Jupyter Notebook used to prepare the sales dataset for SQL analysis and Power BI reporting.
Workflow
Raw Excel (sales.xlsx) → Pandas Cleaning → Cleaned CSV (sales_cleaned.csv) → MySQL (salesdb.sales_data)
Dataset
- Original records: 500
- Cleaned records: 482
- Output: sales_cleaned.csv
- Fields: Order_ID, Order_Date, Customer, Region, Product, Sales, Cost, Profit, Year, Month
Python Data Cleaning
The notebook uses Python and Pandas to:
1. Read the original Excel file.
2. Convert Excel serial dates to valid dates.
3. Remove duplicate rows.
4. Convert invalid order dates to missing values and remove rows without valid dates.
5. Calculate Profit = Sales - Cost.
6. Extract Year and Month from Order_Date.
7. Export the cleaned dataset to sales_cleaned.csv.
