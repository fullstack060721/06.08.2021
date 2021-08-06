create or replace FUNCTION hello_world() RETURNS varchar
language plpgsql AS
    $$
        BEGIN
            RETURN CONCAT('Hello ','World! ', ' ', current_timestamp);
        END;
    $$;


select * from hello_world();

create or replace FUNCTION sp_sum(a double precision, b double precision) RETURNS double precision
language plpgsql AS
    $$
        DECLARE
            sum double precision := 0;
        BEGIN
            sum := a + b;
            RETURN sum;
        END;
    $$;

select * from sp_sum(4.5, 12.888);

create or replace FUNCTION sp_sum_diff(x int, y int, OUT the_sum int, OUT the_diff int) AS
    $$
        BEGIN
            the_sum := x + y;
            the_diff := x - y;
        END;
    $$ LANGUAGE plpgsql;

select * from sp_sum_diff(8, 12);
select * from sp_sum_diff(y => 10, x => 20);

-- targil
--create or replace FUNCTION  sp_statistics(x double precision, y double precision ,OUT the_mul double precision,
--        OUT the_div double precision)




