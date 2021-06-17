SELECT e1.`employee_id`, e1.`first_name`, e1.`manager_id`, e2.`first_name` AS `manager_name`
FROM `employees` as e1
JOIN `employees` as e2
ON e1.`manager_id` = e2.`employee_id`
WHERE e1.`manager_id` in (3,7)
ORDER BY `first_name`;
 
