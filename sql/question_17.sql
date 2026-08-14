with Discount_Effectiveness as(select totalsales,profit,round((s.unitprice-p.costprice)/(p.unitprice*s.quantity)*100, 2) as profit_margin
from sales s
inner join products p 
on s.productid=p.productid)
select *,
CASE when profit_margin=0 then 'no_discount'
when profit_margin<=10 then 'standard_discount'
when profit_margin<=20 then 'promotional_discount'
else 'heavy_discount'
end as Discount_bands
from Discount_Effectiveness
