SELECT
    name,
    DATE_FORMAT(birth, '%Y年%m月%d日')
FROM
    players