SELECT
  COUNT(distinct song_id) AS cancoes,
  COUNT(distinct ar.artist_id) AS artistas,
  COUNT(distinct al.album_id) AS albuns
FROM
  SpotifyClone.song AS so
  INNER JOIN SpotifyClone.artist AS ar ON ar.artist_id = so.artist_id
  INNER JOIN SpotifyClone.album AS al ON so.artist_id = al.artist_id;
-- resumo dos comandos usados
  -- COUNT conta
  -- DISTINCT elimina repetidos
  -- AS dá um apelido para a nova coluna
  -- INNER JOIN junta as tabelas
  -- ON indica a coluna de interseção entre as tabelas