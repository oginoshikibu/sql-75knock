SELECT
    (
        SELECT
            c.name
        FROM
            countries c
        WHERE
            c.id = p.my_country_id
    ) name,
    COUNT(g.goal_time)
FROM
    goals g
    LEFT OUTER JOIN pairings p ON p.id = g.pairing_id
WHERE
    g.pairing_id IN (39, 103)
GROUP BY
    name