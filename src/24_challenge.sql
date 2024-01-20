SELECT U.full_name AS Nome, COUNT(H.id) AS 'Quantidade de músicas reproduzidas'
FROM users U
    INNER JOIN history_play_songs H ON U.id = H.user_id
GROUP BY
    U.full_name
ORDER BY 2 DESC, 1;