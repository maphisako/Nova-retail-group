with best_selling_product as(select p.category,p.productname,(s.unitprice-p.costprice) as total_revenue
from products p
inner join sales s
on p.productid=s.productid)
select*
from best_selling_product
group by productname,category,total_revenue
