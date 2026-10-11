select  p.ProductName, p.Category, SUM(s.TotalSales) AS Total_Sales,
  SUM(s.Profit) AS Total_Profit,
  ROUND((SUM(s.Profit) / SUM(s.TotalSales)) * 100, 2) AS Profit_Margin_Percent
FROM sales_2 s
INNER JOIN products_2 p ON s.ProductID = p.ProductID
GROUP BY p.ProductName, p.Category
ORDER BY Profit_Margin_Percent DESC
