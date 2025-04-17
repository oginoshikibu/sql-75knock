SELECT
    p.name,
    c.name,
    g.goal_time
FROM
    players p
    INNER JOIN countries c on c.id = p.country_id
    INNER JOIN goals g on p.id = g.player_id