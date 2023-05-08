SELECT    
(SELECT COUNT(*) FROM songs) AS cancoes,
(SELECT COUNT(*) FROM artist) AS artistas,
(SELECT COUNT(*) FROM album) AS albuns;