SELECT
	al.album_name AS album,
    COUNT(fs.song_id) AS favoritadas
FROM 
	favorite_songs AS fs
		INNER JOIN
	songs AS s ON fs.song_id = s.song_id
		INNER JOIN
	album AS al ON s.album_id = al.album_id
    GROUP BY album
    ORDER BY favoritadas DESC, album
    LIMIT 3;