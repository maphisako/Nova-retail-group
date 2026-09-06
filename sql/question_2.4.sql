select c.channel,count(s.orderid) as number_of_orders,avg(Totalsales) as average_order_value,sum(s.totalsales) as total_revenue
from customers c
inner join sales s
on c.customerid=s.customerid
group by s.orderid,p.unitprice,totalsales,c.channel
