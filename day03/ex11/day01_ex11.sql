-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
insert into menu values(19, 2, 'greek pizza', 800);
update menu
set price = price * 0.9
where menu.pizza_name = 'greek pizza';
select * from menu;
delete from menu where id >= 19