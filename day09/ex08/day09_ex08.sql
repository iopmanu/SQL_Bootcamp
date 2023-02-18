-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
create or replace function fnc_fibbonaci(in pstop integer default 10) returns setof integer as
$$
    with recursive main(first_number, second_number) as
                        (values (0, 1) 
                        union all 
                        select greatest(first_number, second_number), first_number + second_number
                        from main
                        where second_number < pstop)
select first_number from main;
$$ language SQL;

select * from fnc_fibbonaci();

select * from fnc_fibbonaci(100);