select od.*, (select o.customer_id from orders as o where o.id=od.order_id) as customer_id 
from order_details as od
limit 10