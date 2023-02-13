-- Active: 1675701551542@@127.0.0.1@5432@mablever@public
select distinct person_id from person_visits
where (visit_date >= '2022-01-06' and visit_date <= '2022-01-09') or
        (person_id = 2);
