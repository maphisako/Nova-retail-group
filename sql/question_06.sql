select sum(s.unitprice*s.quantity),p.category,s.unitprice*s.quantity as total_revenue,s.totalsales-p.costprice as total_profit
from sales s
innerjoin products p
on p.productid=s.productid
group by p.category
order by total_revenue desc
