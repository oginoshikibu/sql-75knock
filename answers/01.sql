SELECT
    *
FROM
    countries
WHERE
    ranking = (select MAX(ranking) FROM countries)
    OR
    ranking = (select MIN(ranking) FROM countries)
;