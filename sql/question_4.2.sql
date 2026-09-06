
SELECT 
  CASE 
    WHEN DiscountPercent = 0 THEN '0%'
    WHEN DiscountPercent BETWEEN 1 AND 10 THEN '1-10%'
    WHEN DiscountPercent BETWEEN 11 AND 20 THEN '11-20%'
    WHEN DiscountPercent BETWEEN 21 AND 30 THEN '21-30%'
    ELSE 'Over 30%'
  END AS Discount_Band,
  COUNT(*) AS Number_of_Orders,
  SUM(TotalSales) AS Total_Sales,
  SUM(Profit) AS Total_Profit,
  ROUND((SUM(Profit) / SUM(TotalSales)) * 100, 2) AS Profit_Margin_Percent
FROM sales_2
GROUP BY 
  CASE 
    WHEN DiscountPercent = 0 THEN '0%'
    WHEN DiscountPercent BETWEEN 1 AND 10 THEN '1-10%'
    WHEN DiscountPercent BETWEEN 11 AND 20 THEN '11-20%'
    WHEN DiscountPercent BETWEEN 21 AND 30 THEN '21-30%'
    ELSE 'Over 30%'
  END
ORDER BY Profit_Margin_Percent DESC

Clear Trend: Higher discounts significantly erode profit margins:

0% discount: 39.98% profit margin (1,000 orders, R7M sales)
1-10% discount: 35.36% profit margin (887 orders, R6.2M sales)
11-20% discount: 27.46% profit margin (433 orders, R2.7M sales)
21-30% discount: 18.62% profit margin (180 orders, R989K sales)
Insight: Orders with no discount are most profitable, with each 10% increase in discount reducing profit margin by approximately 5-6 percentage points.

