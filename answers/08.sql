SELECT
    p.position,
    CASE
        WHEN COUNT(g.player_id) IS NULL THEN 0
        ELSE COUNT(g.player_id)
    END cnt
FROM
    players p
    LEFT OUTER JOIN goals g ON p.id = g.player_id
GROUP BY
    p.position
ORDER BY
    cnt DESC