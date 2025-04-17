SELECT
    TIMESTAMPDIFF(YEAR, birth, "2014-06-13") age,
    COUNT(id) cnt
FROM
    players
GROUP BY
    age
ORDER BY
    age ASC