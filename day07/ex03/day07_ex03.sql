-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
with visits as (
    select pizzeria.name as pizzeria_name,
           count(person_visits.pizzeria_id) as count,
           'visit' as action_type
    from pizzeria join person_visits on person_visits.pizzeria_id = pizzeria.id
    group by pizzeria.name
    order by count desc
), orders as (
    select pizzeria.name as pizzeria_name,
           count(pizzeria.id) as count,
           'order' as action_type
    from person_order join menu on person_order.menu_id = menu.id
                      join pizzeria on menu.pizzeria_id = pizzeria.id
    group by pizzeria.name
    order by count desc
), orders_and_visits_union as (
    select pizzeria_name, count
    from visits
    union all
    select pizzeria_name, count
    from orders
)

select pizzeria_name, sum(count) from orders_and_visits_union
group by pizzeria_name
order by sum desc, pizzeria_name;
