SELECT 
    a.`name`,
     (CASE
        WHEN HOUR(`START`) BETWEEN 6 AND 20 THEN 'Day'
        ELSE 'Night'
    END) AS `day_time`,
    co.`bill`,
    cl.`full_name`,
    c.`make`,
    c.`model`,
    cat.`name` AS `category_name`
   
FROM
    `courses` AS co
        JOIN
    `addresses` AS a ON co.`from_address_id` = a.`id`
        JOIN
    `clients` AS cl ON co.`client_id` = cl.`id`
        JOIN
    cars AS c ON co.`car_id` = c.`id`
        JOIN
    `categories` AS cat ON c.`category_id` = cat.`id`
ORDER BY co.`id`
;

