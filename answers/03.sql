select
    MAX(c.name) name,
    AVG(height) avg_height
from
    countries c
    INNER JOIN players p ON c.id = p.country_id
GROUP BY
    c.id