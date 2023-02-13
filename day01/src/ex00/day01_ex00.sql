-- Active: 1675786573135@@127.0.0.1@5432@kaif
select 
    objects_description.object_id, 
    objects_description.object_name
from (
    select id as object_id, lower(pizza_name) as object_name, pizza_name as sort
    from menu
    union
    select id as object_id, name as object_name, lower(name) as sort
    from person
) as objects_description
order by object_id, sort;