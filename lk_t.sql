CREATE or replace FUNCTION test_schema.func1(in par int) RETURNS setof record --(line text, number int, vip boolean)
as
$$
	-- Тестирование pipeline функции
select t.trash as line, t.tas as number, false::boolean as vip from test_schema.tttt t;
$$
	language SQL;
