with annual_sales as(select year(OrderDate) as year,sum(totalsales) as sales_revenue 
from sales 
where year(OrderDate) in (2024,2023)
group by OrderDate)
select year,sales_revenue,lag(sales_revenue)over(order by year) as last_term_sales
from annual_sales
