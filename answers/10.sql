SELECT
    COUNT(g.id)
FROM
    goals g
WHERE
    g.player_id IS NULL