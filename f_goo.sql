create or replace function f_goo (p_param1 in int)--, p_line out text, p_tx out text )
returns record
as
    $$
    begin
		select	nm::text	as nm,
		    	'Test'::text	as tm
        from generate_series(1,p_param1) t(nm);
	end;
    $$
language plpgsql;