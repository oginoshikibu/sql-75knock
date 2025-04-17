SELECT
    position,
    AVG(height),
    AVG(weight)
FROM
    players
WHERE
    position = "GK"
GROUP BY
    position