select p.productname,p.category,sum(s.totalsales) as total_revenue,sum(s.profit) as total_profit,round((total_profit)/(total_revenue)*100, 2) as profit_margin
from sales s
inner join products p
on p.productid=s.productid
group by p.productname,p.category
order by profit_margin desc
