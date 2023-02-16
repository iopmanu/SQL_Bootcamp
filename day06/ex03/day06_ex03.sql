-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
create unique index idx_person_discounts_unique on person_discounts(person_id, pizzeria_id);

SET ENABLE_SEQSCAN TO off;

explain analyse
select* from person_discounts
where person_id = 3 and pizzeria_id = 10