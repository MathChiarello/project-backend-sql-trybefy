SELECT albums.title AS 'Álbum', SUM(duration_in_seconds) AS 'Duração'
FROM albums
    INNER JOIN songs ON songs.album_id = albums.id
GROUP BY
    1
ORDER BY 2 DESC;