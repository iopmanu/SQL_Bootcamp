-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
create view v_symmetric_union as
with R as (select *
           from person_visits
           where person_visits.visit_date = '2022-01-02'),
     S as (select *
           from person_visits
           where person_visits.visit_date = '2022-01-06'),
     R_minus_S as (select R.person_id from R
                   except
                   select S.person_id from S),
     S_minus_R as (select S.person_id from S
                   except
                   select R.person_id from R)
select * from S_minus_R
union
select * from R_minus_S
order by person_id;
