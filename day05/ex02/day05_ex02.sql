-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
create index idx_person_name on person using btree (upper(person.name));

explain analyse
select name
from person
where upper(name) is not null;