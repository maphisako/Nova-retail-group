select avg(f.rating),p.category,count(f.feedbackid) as number_of_reviews
from customer_feedback f
inner join sales s
on s.orderid=f.orderid
inner join products p
on s.productid=p.productid
group by p.category
having count(f.feedbackid)>=50
