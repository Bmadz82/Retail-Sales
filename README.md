Problem Statement
The business lacks a consolidated view of its sales performance and customer purchasing behavior. Without analyzing historical transaction data, it is difficult to identify which product categories are most profitable, which customer segments (by age and gender) contribute most to revenue, and how sales fluctuate throughout the year. This lack of insight hinders effective inventory management and targeted marketing.

Aim of the Project
The primary aim is to analyze the retail sales dataset to evaluate business performance, understand customer demographics, and identify seasonal trends to provide actionable insights for growth.

Objectives (Steps Taken to Solve)
To achieve the project aim, the following steps were executed:

Data Acquisition: Loaded the retail_sales_dataset.csv containing 1,000 transaction records.

Data Cleaning & Preprocessing: * Checked for missing values and duplicates.

Converted the Date column into a datetime format for time-series analysis.

Descriptive Statistical Analysis: Calculated key metrics such as mean, median, and standard deviation for age, quantity, and price.

Customer Demographics Analysis: Grouped data by Gender and Age to identify the core customer base.

Product Performance Analysis: Aggregated sales data by Product Category to determine top-performing items.

Time-Series Analysis: Resampled data by month to identify peak sales periods and seasonal trends.

Summary of Results
Total Revenue: The total sales recorded across all transactions amounted to $456,000.

Top Category: Electronics is the highest revenue-generating category ($156,905), while Clothing saw the highest volume of units sold (894).

Customer Insights: * The average customer age is 41 years.

Female customers accounted for a slightly higher share of total revenue ($232,840) compared to male customers ($223,160).

Seasonal Trends: May 2023 was the most successful month for the business, followed by October and December, indicating a potential boost during spring and year-end holidays.

Tools Used
Programming Language: Databricks (SQL)

PowerBI: * Pandas: For data manipulation and aggregation.

Data Format: CSV (Comma Separated Values)
