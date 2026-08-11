select region,count(customerid) as customer_count
from customers
group by 1
