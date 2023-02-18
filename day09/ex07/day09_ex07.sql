-- Active: 1675786573135@@127.0.0.1@5432@kaif@public
create function func_minimum(variadic arr numeric[]) returns numeric as
$$
    select min($1[i]) from generate_subscripts($1, 1) g(i);
$$ language SQL;

SELECT func_minimum(VARIADIC arr => ARRAY[10.0, -1.0, 5.0, 4.4]);