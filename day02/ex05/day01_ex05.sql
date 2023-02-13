-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
select name from person
where age >= 25 and gender = 'female'
order by name