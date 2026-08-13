with annual_sales as(select year(s.orderdate) as year,sum(s.unitprice*s.quantity) as total_sales
from sales s
where year(s.orderdate) in (2023,2024)
group by year(orderdate))
select *, round(total_sales,2) as rounded_sales, round((total_sales-lag(total_sales) over(order by year))/lag(total_sales) over(order by year)*100,2) as growth_percentage
from annual_sales
order by year
