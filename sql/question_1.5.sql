select satisfaction,count(feedbackid) as feedback_count
from customer_feedback
group by 1
order by count(feedbackid) desc
