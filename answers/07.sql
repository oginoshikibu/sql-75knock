SELECT
    p.name,
    p.position,
    p.club,
    CASE
        WHEN COUNT(g.player_id) IS NULL THEN 0
        ELSE COUNT(g.player_id)
    END cnt
FROM
    players p
    LEFT OUTER JOIN goals g ON p.id = g.player_id
GROUP BY
    p.id,
    p.name,
    p.position,
    p.club
ORDER BY
    cnt DESC