-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
drop function fnc_persons_female();
drop function fnc_persons_male();

create or replace function fnc_persons(in pgender varchar default 'female')
                                        returns table(
                                                       id bigint,
                                                       name varchar,
                                                       age integer,
                                                       gender varchar,
                                                       address varchar) as
$$
select * from person where person.gender = pgender
$$ language SQL;

select * from fnc_persons('male');
select * from fnc_persons();