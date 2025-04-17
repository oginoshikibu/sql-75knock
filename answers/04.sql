SELECT
    (
        SELECT c.name FROM countries c WHERE c.id = p.country_id
    ) name,
    AVG(height) avg_height
FROM
    players p
GROUP BY
    country_id
ORDER BY
    avg_height DESC