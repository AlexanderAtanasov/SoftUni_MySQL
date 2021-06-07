SELECT `name`,
IF(hour(`start`) BETWEEN 0 AND 11 ,'Morning',
IF(hour(`start`) BETWEEN 12 AND 17 , 'Afternoon','Evening') 
) AS 'Part of the Day' ,
IF(`duration` <= 3, 'Extra Short',
IF(`duration` BETWEEN 4 AND 6,'Short',IF(`duration` between 7 and 10,'Long','Extra Long'))) AS 'Duration'
FROM games;