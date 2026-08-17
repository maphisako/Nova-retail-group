select f.satisfaction,count(distinct s.orderid) as total_order_count,count(distinct c.customerid) as total_customers
from customer_feedback f
inner join customers c
on f.customerid=c.customerid
inner join sales s
on s.customerid=c.customerid
group by f.satisfaction

BUSINESS INSIGHT

Highly satisfied customers total number of orders amount to 2740, which is 69.27% higher than those that are least satisfied.This show that majority of those satisfied make more repeat purchases.
