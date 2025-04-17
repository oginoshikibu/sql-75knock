SELECT
    AVG(height),
    AVG(weight)
FROM
    players
WHERE
    position = "GK"
