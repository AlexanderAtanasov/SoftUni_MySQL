SELECT 
    e.`employee_id`,
    CONCAT(e.`first_name`, ' ', e.`last_name`) AS `employee_name`,
    CONCAT(em.`first_name`, ' ', em.`last_name`) AS `manager_name`,
    d.`name` AS `department_name`
FROM
    `employees` AS e
        JOIN
    `employees` AS em ON em.`employee_id` = e.`manager_id`
        JOIN
    `departments` AS d ON e.`department_id` = d.`department_id`
ORDER BY `employee_id`
LIMIT 5;