SELECT A.name AS 'Artista', COUNT(A.id) AS 'Total de seguidores'
FROM
    artists A
    INNER JOIN artists_followers AF ON A.id = AF.artist_id
GROUP BY
    1
HAVING
    COUNT(A.id) < 5;