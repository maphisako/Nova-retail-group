select sum(Totalsales) as total_sales,year(orderdate) as year,month(orderdate) as month
from sales
  where year(orderdate)='2024'
  group by 1,2,3
order by year,month
