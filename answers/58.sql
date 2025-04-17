SELECT
    p.name,
    c.name,
    uniform_num
FROM
    players p
    LEFT OUTER JOIN countries c ON c.id = p.country_id