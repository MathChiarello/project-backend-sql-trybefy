SELECT artists.name AS Artista, albums.title AS Álbum, songs.title AS Música
FROM songs
    INNER JOIN albums ON songs.album_id = albums.id
    INNER JOIN artists ON albums.artist_id = artists.id
WHERE
    artists.name <> 'The Beatles'
ORDER BY 1, 2, 3;