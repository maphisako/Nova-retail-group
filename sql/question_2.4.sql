select c.channel,count(s.orderid) as number_of_orders,avg(p.unitprice) as average_order_value,sum(s.totalsales) as total_revenue
from customers c
inner join sales s
on c.customerid=s.customerid
inner join products p
on s.productid=p.productid
group by s.orderid,p.unitprice,totalsales,c.channel
