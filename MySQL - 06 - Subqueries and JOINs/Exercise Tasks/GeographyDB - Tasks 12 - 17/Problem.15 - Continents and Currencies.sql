SELECT 
    c1.`continent_code`,
    c1.`currency_code`,
    IF(COUNT(currency_code) = (SELECT 
                COUNT(currency_code)
            FROM
                `countries` AS c2
            WHERE
                c1.`continent_code` = c2.`continent_code`
            GROUP BY `continent_code` , `currency_code`
            ORDER BY COUNT(currency_code) DESC
            LIMIT 1),
        COUNT(currency_code),
        'No') AS `currency_usage`
FROM
    `countries` AS c1
GROUP BY `continent_code` , `currency_code`
HAVING `currency_usage` > 1
ORDER BY `continent_code` , `currency_code`
;