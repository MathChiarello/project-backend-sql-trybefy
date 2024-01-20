SELECT U.full_name AS 'Pessoa usuária', COUNT(A.id) AS 'Artistas que segue'
FROM
    users U
    INNER JOIN artists_followers AF ON U.id = AF.user_id
    INNER JOIN artists A ON A.id = AF.artist_id
GROUP BY
    1
ORDER BY 1;