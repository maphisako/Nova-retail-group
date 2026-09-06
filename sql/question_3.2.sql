SELECT 
  c.CustomerID,
  CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
  c.Region,
  c.Channel AS Primary_Channel,
  SUM(s.TotalSales) AS Total_Purchases,
  COUNT(DISTINCT s.OrderID) AS Number_of_Orders,
  ROUND(SUM(s.TotalSales) / COUNT(DISTINCT s.OrderID), 2) AS Average_Order_Value
FROM sales_2 s
INNER JOIN customers_2 c ON s.CustomerID = c.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName, c.Region, c.Channel
HAVING COUNT(DISTINCT s.OrderID) > 3
ORDER BY Total_Purchases DESC


