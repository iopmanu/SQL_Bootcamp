-- Active: 1675701551542@@127.0.0.1@5432@mablever@public
select (
    select name
    from person
    where person.id = person_order.person_id
) from person_order
where (person_order.menu_id = 13 or person_order.menu_id = 14 or person_order.menu_id = 18)
        and (person_order.order_date = '2022-01-07');