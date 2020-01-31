select * from test_schema.t_log
order by id_user, action_date desc;

update test_schema.t_log set action_name = 'INSERT_2' where id = 7;

with a as (select	row_number() over w as rnk,
    				id_user			as id_user,
    				first_value(l.action_name) over w as action_name ,
    				first_value(l.action_date) over w as action_date
			from	test_schema.t_log l
    		window	w as (PARTITION BY id_user order by action_date desc, id desc)
    	)
select u.first_name||' '||u.middle_name||' '||u.last_name as FIO,
    	a.action_date,
    	a.action_name
from test_schema.t_user u
    left join a on a.id_user = u.id_user and a.rnk = 1
;

select * from test_schema.tttt
;

call test_schema.p_test();