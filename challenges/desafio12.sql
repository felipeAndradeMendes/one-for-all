SELECT
	ar.artist_name AS artista,
	CASE
		WHEN COUNT(fs.song_id) >= 5 THEN 'A'
        WHEN COUNT(fs.song_id) BETWEEN 3 AND 4 THEN 'B'
        WHEN COUNT(fs.song_id) BETWEEN 1 AND 2 THEN 'C'
        ELSE '-'
 	END AS ranking   
FROM
	favorite_songs AS fs
		RIGHT JOIN
	songs AS s ON fs.song_id = s.song_id
		INNER JOIN 
	album AS al ON s.album_id = al.album_id
		INNER JOIN
	artist AS ar ON ar.artist_id = al.artist_id
    GROUP BY artista
    ORDER BY COUNT(fs.song_id) DESC, artista;