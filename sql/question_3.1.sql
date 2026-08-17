with best_selling_product as(select p.category,p.productname,round(sum(s.totalsales), 2) as total_revenue,row_number()over(partition by p.category order by sum(s.totalsales) desc) as category_rank
from products p
inner join sales s
on p.productid=s.productid
group by p.category,p.productname)
select*
from best_selling_product
where category_rank=1
