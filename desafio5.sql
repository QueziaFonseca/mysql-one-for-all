SELECT
  so.song_name AS cancao,
  COUNT(h.date) AS `reproducoes`
FROM
  SpotifyClone.song AS so
  INNER JOIN SpotifyClone.history AS h ON so.song_id = h.song_id
GROUP BY
  so.song_name
ORDER BY
  reproducoes DESC,
  cancao
LIMIT
  2;
-- LIMIT limita a quantidade de respostas ao numero escolhido