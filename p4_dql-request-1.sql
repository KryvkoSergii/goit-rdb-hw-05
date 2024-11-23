with FilteredOrderDetails as (
	select * from order_details 
    where quantity > 10 
)
select od.order_id, avg(od.quantity)
from FilteredOrderDetails as od
group by od.order_id
limit 10