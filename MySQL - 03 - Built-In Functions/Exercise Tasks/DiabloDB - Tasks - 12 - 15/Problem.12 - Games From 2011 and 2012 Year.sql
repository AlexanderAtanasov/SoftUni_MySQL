SELECT `name`, date_format(`start`,'%Y-%m-%d') AS 'start' FROM games
WHERE year(`start`) BETWEEN 2011 AND 2012
ORDER BY `start`,`name`
LIMIT 50;