SELECT
    p.name,
    p.position,
    p.club,
    CASE
        WHEN NOT EXISTS (
            SELECT
                *
            FROM
                goals g
            WHERE
                g.player_id = p.id
            -- LIMIT
            --     1
            -- なぜかこれを入れると動かない
        ) THEN 0
        ELSE (
            SELECT
                COUNT(g.player_id)
            FROM
                goals g
            WHERE
                g.player_id = p.id
            GROUP BY
                g.player_id
        )
    END cnt
FROM
    players p
ORDER BY
    cnt DESC