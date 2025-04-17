SELECT
    g.goal_time,
    c.name,
    p.position,
    p.name
FROM
    goals g
    LEFT OUTER JOIN players p ON p.id = g.player_id
    LEFT OUTER JOIN countries c ON c.id = p.country_id