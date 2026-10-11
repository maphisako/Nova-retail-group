select c.Region,SUM(s.TotalSales) AS Total_Sales,
  COUNT(DISTINCT s.OrderID) AS Total_Orders,
  RANK() OVER (ORDER BY SUM(s.TotalSales) DESC) AS Rank
FROM sales_2 s
INNER JOIN customers_2 c ON s.CustomerID = c.CustomerID
GROUP BY c.Region
ORDER BY Rank
