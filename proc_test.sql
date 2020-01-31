create or replace procedure test_schema.p_test()
as
$$
	begin
		insert into test_schema.tttt (trash)

		values ('Text'::text);
		commit;
	end
$$
LANGUAGE PLPGSQL;