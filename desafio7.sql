SELECT a.artist_name AS artista,
al.album_name AS album,
COUNT(f.user_id) AS seguidores
FROM SpotifyClone.artist AS a
JOIN SpotifyClone.album AS al ON a.artist_id = al.artist_id
JOIN SpotifyClone.following_artist AS f ON f.artist_id = al.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC

;