SELECT 
    pr.`name` AS `product_name`,
    pr.`price`,
    pr.`best_before`,
    CONCAT(SUBSTRING(pr.`description`, 1, 10),
            '...') AS `short_description`,
    p.`url`
FROM
    `products` AS pr
        JOIN
    `pictures` AS p ON pr.`picture_id` = p.`id`
WHERE
    YEAR(p.`added_on`) < 2019
        AND pr.`price` > 20
        AND CHAR_LENGTH(pr.`description`) > 100
ORDER BY pr.`price` DESC;