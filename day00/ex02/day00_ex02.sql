-- Active: 1675701551542@@127.0.0.1@5432@mablever@public
select name, rating from pizzeria
where (rating >= 3.5 and rating <= 5.0)
order by rating DESC;

select name, rating from pizzeria
where rating between 3.5 and 5.0
order by rating DESC;