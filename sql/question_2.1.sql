select sum(totalsales) as total_revenue,p.category,sum(s.profit) as total_profit
from sales s
innerjoin products p
on p.productid=s.productid
group by p.category
order by total_revenue desc
