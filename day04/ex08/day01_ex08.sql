-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
drop view if exists
v_generated_dates,
v_persons_female,
v_persons_male,
v_price_with_discount,
v_symmetric_union;

drop materialized view mv_dmitriy_visits_and_eats;