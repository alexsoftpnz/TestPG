SELECT
	i AS id,
	i/2 AS p,
	format('%60s', i%2) AS v
INTO test_schema.btg
FROM
	generate_series(1, 1000000) i;

VACUUM test_schema.btg;

ANALYSE test_schema.btg;
EXPLAIN ANALYZE
SELECT
	count(*)
FROM
	test_schema.btg
GROUP BY
	p, v;