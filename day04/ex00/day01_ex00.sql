-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
create view v_persons_female as
select *
from person
where person.gender = 'female';

create view v_persons_male as
select *
from person
where person.gender = 'male';
