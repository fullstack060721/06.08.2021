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


