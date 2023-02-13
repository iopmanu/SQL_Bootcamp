-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
select 
    objects_description.object_name
from (
    select name as object_name
    from person
    union all
    select pizza_name as object_name
    from menu
) as objects_description
order by object_name;