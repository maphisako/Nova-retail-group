WITH yearly_sales AS (
  SELECT 
    YEAR(OrderDate) AS Year,
    SUM(TotalSales) AS Total_Sales
  FROM sales_2
  GROUP BY YEAR(OrderDate)
)
SELECT 
  y1.Year AS Year_2023,
  y1.Total_Sales AS Sales_2023,
  y2.Year AS Year_2024,
  y2.Total_Sales AS Sales_2024,
  ROUND(((y2.Total_Sales - y1.Total_Sales) / y1.Total_Sales) * 100, 2) AS Growth_Percent
FROM yearly_sales y1
CROSS JOIN yearly_sales y2
WHERE y1.Year = 2023 AND y2.Year = 2024

