SELECT
    c.group_name,
    COUNT(g.id) cnt
FROM
    countries c
    LEFT OUTER JOIN pairings p ON c.id = p.my_country_id
    LEFT OUTER JOIN goals g ON p.id = g.pairing_id
WHERE
    p.kickoff BETWEEN '2014-06-13 0:00:00'
    AND '2014-06-27 23:59:59'
GROUP BY
    c.group_name
ORDER BY
    c.group_name ASC