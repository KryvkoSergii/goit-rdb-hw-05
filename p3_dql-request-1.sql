select od.order_id, avg(od.quantity) 
from (select * from order_details where quantity > 10 ) as od
group by od.order_id