select p.productname,p.category,sum(p.unitprice*s.quantity) as total_sales,sum(s.unitprice-p.costprice) as total_profit,round(sum(s.unitprice-p.costprice)/sum(p.unitprice*s.quantity)*100, 2) as profit_margin
from sales s
inner join products p
on p.productid=s.productid
group by p.productname,p.category
order by profit_margin
