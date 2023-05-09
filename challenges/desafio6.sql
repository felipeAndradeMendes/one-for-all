SELECT
	UCASE(MIN(p.plan_value)) AS faturamento_minimo,
  UCASE(MAX(p.plan_value)) AS faturamento_maximo,
  UCASE(ROUND(AVG(p.plan_value), 2)) AS faturamento_medio,
  UCASE(SUM(p.plan_value)) AS faturamento_total
FROM 
	plan as p
		INNER JOIN
	user_person AS up ON up.plan_id = p.plan_id;