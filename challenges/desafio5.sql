SELECT 
	s.song_name AS cancao,
    COUNT(ph.song_id) AS reproducoes
FROM 
	play_history AS ph
		INNER JOIN
	songs AS s ON ph.song_id = s.song_id
    GROUP BY cancao
    ORDER BY reproducoes DESC, cancao ASC
    LIMIT 2;