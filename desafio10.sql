SELECT
  s.song_name AS nome,
  COUNT(h.user_id) as reproducoes
FROM
  SpotifyClone.song AS s
  JOIN SpotifyClone.history AS h ON s.song_id = h.song_id
  JOIN SpotifyClone.user AS u ON u.user_id = h.user_id
WHERE
  u.plan_id = 1
  OR u.plan_id = 4
GROUP BY
  nome
ORDER BY
  nome;