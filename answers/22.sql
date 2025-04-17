SELECT
    TIMESTAMPDIFF(YEAR, birth, "2014-06-13") - TIMESTAMPDIFF(YEAR, birth, "2014-06-13") % 5 age,
    position,
    COUNT(id) cnt,
    AVG(height),
    AVG(weight)
FROM
    players
GROUP BY
    age, position
ORDER BY
    age ASC, position ASC
