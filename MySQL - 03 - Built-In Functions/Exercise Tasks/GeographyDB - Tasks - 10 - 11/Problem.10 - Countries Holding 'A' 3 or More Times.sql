SELECT `country_name`, `iso_code` FROM `countries`
WHERE lower(`country_name`) LIKE '%a%a%a%'
ORDER BY `iso_code`;