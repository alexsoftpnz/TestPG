CREATE OR REPLACE FUNCTION test_schema.func_p1(in par int) RETURNS setof record --(line text, number int, vip boolean)
as
$$
begin

	-- Тестирование pipeline функции
return query (select t.trash as line, t.tas as number, false::boolean as vip from test_schema.tttt t);
end;
$$
	language PLPGSQL;
