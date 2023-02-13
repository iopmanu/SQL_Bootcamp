-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
with address_duplicates as (select first.name as first_person,
                                   second.name as second_person,
                                   first.address as d_address,
                                   first.id as first_id,
                                   second.id as second_id
                            from person first join person second 
                            on first.address = second.address)
select first_person, second_person, d_address
from address_duplicates
where first_id > second_id
order by first_person, second_person, d_address