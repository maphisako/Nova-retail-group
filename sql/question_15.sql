select c.region,sum(s.unitprice*s.quantity) as total_sales,count(distinct s.orderid) as total_orders,rank()over(order by sum(s.unitprice*s.quantity) desc) as region_rank
from sales s
inner join customers c
on c.customerid=s.customerid
group by c.region
