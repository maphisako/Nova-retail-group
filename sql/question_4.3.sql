with Product_Portfolio_Optimization as(select s.profit,count(distinct s.orderid) as sales_volume,((s.profit/s.totalsales)*100) as profit_margin,avg(f.rating) as rating,dense_rank()over(order by s.profit asc) as rank
from sales s
inner join customer_feedback f
on s.orderid=f.orderid
group by profit,profit_margin)
select*
from product_portfolio_optimization
limit 5

BUSINESS RECOMMENDATION

Give products with less margin a bit more attention as they have higher ratings and fair sales volume despite low margins
