SELECT A.name AS 'Artista'
FROM
    artists A
    INNER JOIN artists_followers AF ON A.id = AF.artist_id
GROUP BY
    1
HAVING
    COUNT(A.id) = 6
LIMIT 1;