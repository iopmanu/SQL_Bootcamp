-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
create or replace function fnc_trg_person_update_audit() returns trigger as
$trg_person_update_audit$
begin
    if (tg_op = 'UPDATE') then
        insert into person_audit select now(), 'U', OLD.*;
    end if;
    return null;
end;
$trg_person_update_audit$ language plpgsql;

create trigger trg_person_update_audit
after update on person for each row
execute function fnc_trg_person_update_audit();

update person set name = 'Bulat' where person.id = 10;
update person set name = 'Damir' where person.id = 10;

select * from person_audit;