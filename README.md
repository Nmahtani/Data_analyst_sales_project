# Sales Project with SQL and PowerBI

## Overview
This project involves the process of ETL (Extract, Transform, Load) using a dataset in `.csv` format. The data is extracted, cleaned, and transformed using MySQL, and the final result is visualized using PowerBI.

## Project Steps
1. **Extraction**:
   - Import a `.csv` file containing sales data into MySQL.

2. **Transformation**:
   - Clean and transform the data in MySQL, including:
     - Removing records with missing or null values.
     - Converting product names to lowercase.
     - Calculating additional columns (e.g., `Tax`, `Discount`).
     - Standardizing specific values in certain fields.

3. **Load and Visualization**:
   - After transforming the data, it is exported from MySQL for further visualization.
   - The data is loaded into PowerBI to create useful visualizations and insights.

## Tools Used
- **MySQL** for data cleaning and transformation.
- **PowerBI** for data visualization and dashboard creation.
