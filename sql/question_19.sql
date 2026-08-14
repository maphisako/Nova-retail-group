with Excutive_Management_report as(select year(s.orderdate ) as order_year,sum(s.unitprice*s.quantity) as total_revenue,sum(s.unitprice-p.costprice) as total_profit,sum((s.profit/s.totalsales)*100)as overall_margin,count(distinct s.orderid) as order_count,avg(s.unitprice) as average_order_value
from sales s
inner join products p
on s.productid=p.productid
group by year(s.orderdate))
select*
from Excutive_Management_Report
where order_year in (2023,2024)
