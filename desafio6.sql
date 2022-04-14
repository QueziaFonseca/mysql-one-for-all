SELECT 
    ROUND(MIN(p.plan_value), 2) AS faturamento_minimo,
    ROUND(MAX(p.plan_value), 2) AS faturamento_maximo,
    ROUND(AVG(p.plan_value), 2) AS faturamento_medio,
    ROUND(SUM(p.plan_value), 2) AS faturamento_total
FROM
    SpotifyClone.user AS u
        JOIN
    SpotifyClone.plan AS p ON p.plan_id = u.plan_id
;