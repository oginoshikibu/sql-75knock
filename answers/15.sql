SELECT
    p.kickoff,
    c1.name,
    c2.name,
    c1.ranking,
    c2.ranking,
    (
        SELECT
            COUNT(g.id)
        FROM
            goals g
        WHERE
            g.pairing_id = p.id
    ) cnt
FROM
    pairings p
    LEFT OUTER JOIN countries c1 ON c1.id = p.my_country_id
    LEFT OUTER JOIN countries c2 ON c2.id = p.enemy_country_id
WHERE
    c1.group_name = "C"
    and c2.group_name = "C"
ORDER BY
    p.kickoff ASC,
    c1.ranking ASC