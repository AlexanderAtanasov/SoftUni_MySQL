SELECT `peak_name`, `river_name`, 
lower(CONCAT(`peak_name`,substring(`river_name`,2))) AS 'mix'
FROM `peaks`,`rivers`
WHERE right(`peak_name`,1)=left(`river_name`,1)
ORDER BY `mix`;