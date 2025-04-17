SELECT
    p.birth,
    TIMESTAMPDIFF(YEAR, p.birth, "2014-06-13") age,
    p.name,
    p.position
FROM
    players p
ORDER BY
    age DESC