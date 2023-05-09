SELECT   		
	CASE		
		WHEN up.user_age <= 30 THEN 'Até 30 anos'
		WHEN up.user_age BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
		ELSE 'Maior de 60 anos'
 	END AS faixa_etaria,
    COUNT(DISTINCT up.user_id) AS total_pessoas_usuarias,
    COUNT(fs.user_id) AS total_favoritadas
FROM
	user_person AS up
		LEFT JOIN
	favorite_songs AS fs ON fs.user_id = up.user_id	
    GROUP BY faixa_etaria
    ORDER BY faixa_etaria;