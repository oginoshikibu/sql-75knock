SELECT
    *
FROM
    players
WHERE
    (
        position = "FW"
        OR position = "MF"
    )
    AND height < 170