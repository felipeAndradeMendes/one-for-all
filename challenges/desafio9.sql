SELECT
	COUNT(ph.user_id) AS musicas_no_historico
FROM
	play_history AS ph
		INNER JOIN
	user_person AS up ON ph.user_id = up.user_id
    WHERE up.user_name LIKE '%Barbara Liskov%';