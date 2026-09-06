WITH customer_satisfaction AS (
  SELECT 
    cf.CustomerID,
    CASE 
      WHEN AVG(cf.Rating) >= 4 THEN 'High Satisfaction (4-5)'
      ELSE 'Low Satisfaction (1-3)'
    END AS Satisfaction_Level
  FROM customer_feedback_2 cf
  GROUP BY cf.CustomerID
),
customer_orders AS (
  SELECT 
    s.CustomerID,
    COUNT(DISTINCT s.OrderID) AS Number_of_Orders
  FROM sales_2 s
  GROUP BY s.CustomerID
)
SELECT 
  cs.Satisfaction_Level,
  COUNT(DISTINCT cs.CustomerID) AS Total_Customers,
  AVG(co.Number_of_Orders) AS Avg_Orders_per_Customer,
  SUM(co.Number_of_Orders) AS Total_Orders
FROM customer_satisfaction cs
INNER JOIN customer_orders co ON cs.CustomerID = co.CustomerID
GROUP BY cs.Satisfaction_Level
ORDER BY cs.Satisfaction_Level DESC

  BUSINESS INSIGHT
  
  Surprising Finding: Low satisfaction customers (rating 1-3) actually average 5.54 orders per customer, while high satisfaction customers (rating 4-5) average 5.04 orders. However, there are more highly satisfied customers (252 vs 185), leading to more total orders from the satisfied group (1,269 vs 1,024).w that majority of those satisfied make more repeat purchases.

  
