select name
from pizzeria  
where id in(
	select person_id
	from person_order 
	where menu_id in (13,14,18)
	and order_date = '2022-01-07'
);
