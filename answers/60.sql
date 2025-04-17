SELECT
    p.name,
    g.goal_time
FROM
    players p
    LEFT OUTER JOIN goals g on p.id = g.player_id