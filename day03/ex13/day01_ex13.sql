-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
delete from person_order
where person_order.order_date = '2022-02-25';

delete from menu
where menu.pizza_name = 'greek pizza';