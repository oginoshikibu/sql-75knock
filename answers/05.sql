SELECT
    kickoff,
    (
        SELECT
            c1.name
        FROM
            countries c1
        WHERE
            c1.id = p.my_country_id
    ) country1,
    (
        SELECT
            c1.name
        FROM
            countries c1
        WHERE
            c1.id = p.enemy_country_id
    ) country2
FROM
    pairings p
ORDER BY
    kickoff ASC

-- inner joinでも可能