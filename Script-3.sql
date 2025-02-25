SELECT 
    name,
    CASE 
        WHEN name = 'Denis' THEN 'true'
        ELSE 'false'
    END AS check_name 
FROM person   
where id in(
	select person_id
	from person_order 
	where menu_id in (13,14,18)
	and order_date = '2022-01-07'
);