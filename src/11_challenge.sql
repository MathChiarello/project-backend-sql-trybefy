SELECT
    title AS Album,
    release_year AS 'Ano de lançamento',
    artists.name AS Artista
FROM albums
    INNER JOIN artists ON albums.artist_id = artists.id
WHERE
    title LIKE '%you%'
ORDER BY release_year ASC;