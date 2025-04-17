SELECT
    *
FROM
    players
WHERE
    weight / POW(height / 100, 2) >= 20
    AND weight / POW(height / 100, 2) < 21