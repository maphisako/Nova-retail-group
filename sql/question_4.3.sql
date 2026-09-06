WITH product_performance AS (
  SELECT 
    p.ProductID,
    p.ProductName,
    p.Category,
    COUNT(DISTINCT s.OrderID) AS Total_Orders,
    SUM(s.Quantity) AS Total_Units_Sold,
    SUM(s.TotalSales) AS Total_Revenue,
    SUM(s.Profit) AS Total_Profit,
    ROUND((SUM(s.Profit) / SUM(s.TotalSales)) * 100, 2) AS Profit_Margin_Percent
  FROM sales_2 s
  INNER JOIN products_2 p ON s.ProductID = p.ProductID
  GROUP BY p.ProductID, p.ProductName, p.Category
),
product_ratings AS (
  SELECT 
    cf.ProductCategory,
    AVG(cf.Rating) AS Avg_Rating,
    COUNT(*) AS Number_of_Reviews
  FROM customer_feedback_2 cf
  GROUP BY cf.ProductCategory
)
SELECT 
  pp.ProductID,
  pp.ProductName,
  pp.Category,
  pp.Total_Orders,
  pp.Total_Units_Sold,
  pp.Total_Revenue,
  pp.Total_Profit,
  pp.Profit_Margin_Percent,
  pr.Avg_Rating,
  pr.Number_of_Reviews,
  CASE 
    WHEN pp.Total_Revenue < 50000 AND pp.Profit_Margin_Percent < 20 THEN 'Consider Discontinuing'
WHEN pp.Total_Revenue < 50000 AND pp.Profit_Margin_Percent >= 20 THEN 'Monitor Closely'
    ELSE 'Keep'
  END AS Recommendation
FROM product_performance pp
LEFT JOIN product_ratings pr ON pp.Category = pr.ProductCategory
ORDER BY pp.Total_Revenue ASC
LIMIT 5


Bottom 5 Products by Revenue:

Water Bottle (R33,422) - 35.37% margin → Monitor Closely
Scented Candles (R41,601) - 33.87% margin → Monitor Closely
Yoga Mat (R48,991) - 35.34% margin → Monitor Closely
Electric Kettle (R50,424) - 36.34% margin → Keep
Sunglasses (R64,618) - 35% margin → Keep
Recommendation: The bottom 3 products (Water Bottle, Scented Candles, Yoga Mat) should be monitored closely. While they have healthy profit margins (33-36%), their low revenue suggests limited demand. All products maintain above 30% profit margin and reasonable customer ratings (~3.7), so none are immediate candidates for discontinuation.
