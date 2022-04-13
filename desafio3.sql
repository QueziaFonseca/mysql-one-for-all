SELECT
  DISTINCT u.user_name AS usuario,
  COUNT(h.song_id) AS qtde_musicas_ouvidas,
  ROUND((SUM(s.duration_seconds) / 60), 2) AS total_minutos
FROM
  SpotifyClone.user AS u
  INNER JOIN SpotifyClone.history AS h ON u.user_id = h.user_id
  INNER JOIN SpotifyClone.song AS s ON s.song_id = h.song_id
GROUP BY
  user_name;

-- SUM soma
  -- ROUND arredonda com o numero de casas decimais que eu escolher