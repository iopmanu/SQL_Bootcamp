-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
select v_persons_female.name
from v_persons_female
union all
select v_persons_male.name
from v_persons_male
order by name
