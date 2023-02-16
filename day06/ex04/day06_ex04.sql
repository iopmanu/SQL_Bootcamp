-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
alter table person_discounts
    add constraint ch_nn_person_id check (person_id is not null),
    add constraint ch_nn_pizzeria_id check (pizzeria_id is not null),
    add constraint ch_nn_discount check (discount is not null),
    alter column discount set default 0,
    add constraint ch_range_discount check (discount between 0 AND 100);

select * from person_discounts;