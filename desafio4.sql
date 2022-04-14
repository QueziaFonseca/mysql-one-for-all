SELECT
  u.user_name AS usuario,
  IF(
    MAX(h.date) LIKE '2021%',
    'Usuário ativo',
    'Usuário inativo'
  ) AS condicao_usuario
FROM
  SpotifyClone.user AS u
  INNER JOIN SpotifyClone.history AS h ON u.user_id = h.user_id
group by
  u.user_name
ORDER BY
  u.user_name;

  -- LIKE: para valores que contenham parte do que se quer de encontrar
  -- %: equivale a qualquer valor independente da numero de caracteres