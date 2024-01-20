SELECT A.title AS Álbum, COUNT(H.id) AS 'Quantidade de músicas reproduzidas'
FROM
    users U
    INNER JOIN history_play_songs H ON U.id = H.user_id
    INNER JOIN songs S ON H.song_id = S.id
    INNER JOIN albums A ON S.album_id = A.id
GROUP BY
    1
ORDER BY 2 DESC, 1
LIMIT 5;