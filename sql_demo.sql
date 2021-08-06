create or replace FUNCTION hello_world() RETURNS varchar
language plpgsql AS
    $$
        BEGIN
            RETURN CONCAT('Hello ','World! ', ' ', current_timestamp);
        END;
    $$;


select * from hello_world();
