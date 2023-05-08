SELECT
	us.user_name AS pessoa_usuaria,
    COUNT(ph.user_id) AS musicas_ouvidas,
    ROUND((SUM(s.duration_seconds) / 60), 2) AS total_minutos 
FROM 
	play_history As ph
		INNER JOIN
	user_person AS us ON ph.user_id = us.user_id
		INNER JOIN 
	songs AS s ON ph.song_id = s.song_id
    GROUP BY pessoa_usuaria
    ORDER BY pessoa_usuaria;