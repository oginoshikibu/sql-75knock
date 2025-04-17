SELECT
    p1.kickoff,
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
            g.pairing_id = p1.id
    ) cnt1,
    (
        SELECT
            COUNT(g.id)
        FROM
            goals g
        WHERE
            g.pairing_id = p2.id
    ) cnt2
FROM
    pairings p1
    LEFT OUTER JOIN countries c1 ON c1.id = p1.my_country_id
    LEFT OUTER JOIN countries c2 ON c2.id = p1.enemy_country_id
    LEFT OUTER JOIN pairings p2 ON c2.id = p2.my_country_id
    AND c1.id = p2.enemy_country_id
    AND p1.kickoff = p2.kickoff
WHERE
    c1.group_name = "C"
    and c2.group_name = "C"
ORDER BY
    p1.kickoff ASC,
    c1.ranking ASC