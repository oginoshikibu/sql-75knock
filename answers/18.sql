SELECT
    kickoff,
    SUBTIME(kickoff, "12:00:00") jp
FROM
    pairings
WHERE
    my_country_id = 1
    AND enemy_country_id = 4