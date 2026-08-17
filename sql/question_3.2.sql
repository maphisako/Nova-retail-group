select sum(totalsales) as total_purchases,count(s.orderid) as number_of_orders,avg(s.totalsales) as average_order_value,c.region,c.channel,c.customerid
from customers c
inner join sales s
on c.customerid=s.customerid
inner join products p
on p.productid=s.productid
group by c.region,c.channel,c.customerid
having count(s.orderid)>3
order by total_purchases desc
