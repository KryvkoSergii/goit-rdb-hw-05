select od.* from order_details as od
where od.order_id in (select o.id from orders as o where o.shipper_id=3)