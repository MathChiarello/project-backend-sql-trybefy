SELECT artists.name AS Artista, COUNT(albums.id) AS 'Quantidade de álbuns'
FROM albums
    INNER JOIN artists ON albums.artist_id = artists.id
GROUP BY
    artists.name
ORDER BY COUNT(albums.id) DESC, artists.name;