-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
comment on table person_discounts is 'Personal discounts for visitors of pizzerias group';
comment on column person_discounts.id is 'Discount id number';
comment on column person_discounts.person_id is 'Person id number related to person table';
comment on column person_discounts.pizzeria_id is 'Pizzeria id number related to pizzeria table';
comment on column person_discounts.discount is 'Discount in percents';
