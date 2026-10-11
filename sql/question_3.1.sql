with best_selling_product as(
SELECT 
    p.Category,
    p.ProductName,
    SUM(s.TotalSales) AS Total_Revenue,
    RANK() OVER (PARTITION BY p.Category ORDER BY SUM(s.TotalSales) DESC) AS rank
  FROM sales_2 s
  INNER JOIN products_2 p ON s.ProductID = p.ProductID
  GROUP BY p.Category, p.ProductName
)
SELECT 
  Category,
  ProductName,
  Total_Revenue
FROM product_sales
WHERE rank = 1
ORDER BY Total_Revenue DESC
