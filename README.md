## NOVA RETAIL GROUP-Sales Analytics

## PROJECT OVERVIEW
This project is build for a fictional growing South-African retail company operating across 10 stores in 5 provinces through physical stores and an online platform.The goal is to understand customer behaviour,sales performances at the more in depth level,identify growth opportunities and help a business to make informed business decisions through the use data.

![Power BI Dashboard](Nova%20retail%20sales%20dashboard.png)

## The problem
Nova Retail Group operates across 10 stores in 5 provinces through physical and an online platform and therefore there is no view across all stores as the manager can see their own performance not overall performance of a company as a whole, this project is therefore meant to create a single source of truth and look at products and their categories in depth.

## Questions addressed by this project
1.1 A list of products in the Electronics category

1.2 Customer count in each category

1.3 10 most recent orders

1.4 List of all products with unitprice less than R1000

1.5 Count of Feedback responses that exist for each satisfaction level

2.1 Total revenue for each product category

2.2 Top 5 customers by total purchase amount

2.3 Total sales by month for 2024

2.4 Physical Store performance vs online platform performance

2.5 Product Category and average customer ratings for each product

3.1 Products with the highest total sales in each category

3.2 Customer lifetime value

3.3 Profit margin percentage for each product

3.4 Year-over-Year growth 

3.5 Regional performance ranking

4.1 Customer Satisfaction vs Repeat Purchases

4.2 Discount effectiveness

4.3 Product Portfolio optimization

Part 5 Executive Management report detailing overall business performance and insights

sql queries to above questions are saved in the sql folder


## Tools and Technologies
SQL: Used to query, retrieve, and analyze the dataset.

Databricks: Used to load the dataset, execute SQL queries, and validate the correctness of query results.

Microsoft Power BI: Used to load the dataset separately, create visualizations, and develop interactive dashboards.

## Methodology
Data Loading in Databricks: The dataset was loaded into Databricks to provide an environment for executing and testing SQL queries.

SQL Query Validation: SQL queries were executed in Databricks to check the accuracy of the results and ensure they met the intended analytical requirements.

Data Loading in Power BI: The dataset was independently imported into Power BI for visualization and reporting.

Data Visualization: Charts, graphs, and other visual elements were created in Power BI to present the findings and highlight important trends and patterns.
Analysis and Reporting: The visualizations were used to communicate the key insights derived from the analysis

## Requirements

To review this project, you may need:

Access to Databricks to execute and review the SQL queries.

Microsoft Power BI Desktop to open and explore the report.

The original dataset used for the project which are available in the repository

## Key findings
Orders with no discount are most profitable, with each 10% increase in discount reducing profit margin by approximately 5-6 percentage points.

The bottom 3 products (Water Bottle, Scented Candles, Yoga Mat) should be monitored closely. While they have healthy profit margins (33-36%), their low revenue suggests limited demand. All products maintain above 30% profit margin and reasonable customer ratings (~3.7), so none are immediate candidates for discontinuation.














