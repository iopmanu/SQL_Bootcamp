-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
create view v_price_with_discount as
with discount as (select person.name as person_name,
                         menu.pizza_name as pizza_name,
                         menu.price as price,
                         round(menu.price * 0.9, 0)as discount_price
                  from person join person_order on person_order.person_id = person.id
                              join menu on person_order.menu_id = menu.id)
select * from discount
order by person_name, pizza_name;

select * from v_price_with_discount;