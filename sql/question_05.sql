select satisfaction,count(feedbackid)
from customer_feedback
group by 1
order by count(feedbackid)
