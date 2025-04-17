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
            COUNT(g2.id)
        FROM
            goals g2
            LEFT JOIN pairings p2 ON p2.id = g2.pairing_id
        WHERE
            p2.my_country_id = p1.enemy_country_id
            AND p2.enemy_country_id = p1.my_country_id
    ) cnt2,
    (
        SELECT
            COUNT(g.id)
        FROM
            goals g
        WHERE
            g.pairing_id = p1.id
    ) - (
        SELECT
            COUNT(g2.id)
        FROM
            goals g2
            LEFT JOIN pairings p2 ON p2.id = g2.pairing_id
        WHERE
            p2.my_country_id = p1.enemy_country_id
            AND p2.enemy_country_id = p1.my_country_id
    ) diff
FROM
    pairings p1
    LEFT OUTER JOIN countries c1 ON c1.id = p1.my_country_id
    LEFT OUTER JOIN countries c2 ON c2.id = p1.enemy_country_id
WHERE
    c1.group_name = "C"
    and c2.group_name = "C"
ORDER BY
    p1.kickoff ASC,
    c1.ranking ASC