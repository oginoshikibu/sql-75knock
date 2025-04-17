SELECT
    group_name,
    MAX(ranking),
    MIN(ranking)
FROM
    countries
GROUP BY
group_name
;