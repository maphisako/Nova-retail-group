select total_sales,year(orderdate) as year,month(orderdate) as month
from sales
  where orderdate='2024'
  group by 1,2,3
order by year,month
