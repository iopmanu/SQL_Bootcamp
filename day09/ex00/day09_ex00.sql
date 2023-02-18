-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
create table person_audit (
    created timestamp with time zone default now() not null,
    type_event char(1) constraint ch_type_event check (type_event in ('I', 'U', 'D')),
    row_id bigint not null,
    name varchar,
    age integer,
    gender varchar,
    address varchar
);

create or replace function fnc_trg_person_insert_audit() returns trigger as
$trg_person_insert_audit$
begin
    if (tg_op = 'INSERT') then
        insert into person_audit select now(), 'I', NEW.*;
    end if;
    return NULL;
end;
$trg_person_insert_audit$ language plpgsql;

create trigger trg_person_insert_audit
after insert on person for each row
execute procedure fnc_trg_person_insert_audit();

insert into person values(10, 'Damir', 22, 'male', 'Irkutsk');