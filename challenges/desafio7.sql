SELECT
	ar.artist_name AS artista,
    al.album_name AS album,
	COUNT(ufa.artist_id) AS pessoas_seguidoras
FROM
	album AS al
		INNER JOIN 
	artist AS ar ON al.artist_id = ar.artist_id
		INNER JOIN
	users_following_artists AS ufa ON ufa.artist_id = ar.artist_id
    GROUP BY artista, album
    ORDER BY pessoas_seguidoras DESC, artista, album;