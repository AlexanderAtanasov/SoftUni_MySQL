DELIMITER $$

CREATE FUNCTION `ufn_count_employees_by_town`(town_name VARCHAR(20))
RETURNS INTEGER
DETERMINISTIC
BEGIN
	
RETURN (SELECT 
    COUNT(`employee_id`) AS `count`
FROM
    `employees` AS e
        JOIN
    `addresses` AS a USING (`address_id`)
        JOIN
    `towns` AS t USING (`town_id`)
WHERE
    t.`name` = town_name);
     END$$
DELIMITER ;