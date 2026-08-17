select c.region,sum(s.totalsales) as total_revenue,count(distinct s.orderid) as total_orders,rank()over(order by sum(s.totalsales) desc) as region_rank
from sales s
inner join customers c
on c.customerid=s.customerid
group by c.region
