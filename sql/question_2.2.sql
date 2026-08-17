select concat(c.FirstName,' ',c.LastName) as full_name, sum(s.totalsales) as total_purchase_amount, c.customerid, dense_rank() over (order by sum(s.totalsales) desc) as customer_rank
from sales s
inner join customers c
on s.customerid=c.customerid
group by c.customerid, c.FirstName, c.LastName
limit 5
