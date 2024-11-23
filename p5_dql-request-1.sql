drop function if exists CalculateDivision;

delimiter //

create function CalculateDivision(arg1 float, arg2 float)
returns float
reads sql data
begin
	declare result float;
    set result = arg1/arg2;
    return result;
end //

delimiter ;

select od.*, CalculateDivision(od.quantity, 5) from order_details as od;