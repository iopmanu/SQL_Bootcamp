-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
create or replace function fnc_persons_female() returns table(
                                                id bigint,
                                                name varchar,
                                                age integer,
                                                gender varchar,
                                                address varchar) as
$$ select * from person where person.gender = 'female'
$$ language SQL;

create or replace function fnc_persons_male() returns table(
                                                id bigint,
                                                name varchar,
                                                age integer,
                                                gender varchar,
                                                address varchar) as
$$ select * from person where person.gender = 'male'
$$ language SQL;

select * from fnc_persons_female();
select * from fnc_persons_male();