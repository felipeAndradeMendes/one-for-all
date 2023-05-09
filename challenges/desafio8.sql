SELECT
	artist_name AS artista,
    album_name AS album
FROM
	album As al 
		INNER JOIN
	artist As ar ON ar.artist_id = al.artist_id
    WHERE artist_name LIKE '%Elis Regina%'
    ORDER BY album;