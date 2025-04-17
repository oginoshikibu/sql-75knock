SELECT
    kickoff,
    c1.name,
    c2.name
FROM
    pairings p
    INNER JOIN countries c1 ON c1.id = p.my_country_id
    INNER JOIN countries c2 ON c2.id = p.enemy_country_id