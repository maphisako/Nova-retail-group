INSIGHT 1

The margin has increased by 10.69%

SUPPORTING QUERY;with Excutive_Management_report as(select year(s.orderdate ) as order_year,sum(s.unitprice*s.quantity) as total_revenue,sum(s.unitprice-p.costprice) as total_profit,round(sum((s.profit/s.totalsales)*100),2) as overall_margin,count(distinct s.orderid) as order_count,avg(s.unitprice) as average_order_value
from sales s
inner join products p
on s.productid=p.productid
group by year(s.orderdate))
select*
from Excutive_Management_Report
where order_year in (2023,2024)

INSIGHT 2

Give products with sales volume a bit more advertising attention as some have higher ratings but less volume sold

SUPPORTING QUERY;with Product_Portfolio_Optimization as(select s.profit,count(distinct s.orderid) as sales_volume,((s.profit/s.totalsales)*100) as profit_margin,avg(f.rating) as rating,dense_rank()over(order by s.profit asc) as rank
from sales s
inner join customer_feedback f
on s.orderid=f.orderid
group by profit,profit_margin)
select*
from product_portfolio_optimization
limit 5

INSIGHT 3

16% of total customers are neutral about their satisfaction of the products and it may hurt tghe sales in the long run if there are no changes made to convert them to satisfied

SUPPORTING QUERY;select f.satisfaction,count(distinct s.orderid) as total_order_count,count(distinct c.customerid) as total_customers
from customer_feedback f
inner join customers c
on f.customerid=c.customerid
inner join sales s
on s.customerid=c.customerid
group by f.satisfaction

