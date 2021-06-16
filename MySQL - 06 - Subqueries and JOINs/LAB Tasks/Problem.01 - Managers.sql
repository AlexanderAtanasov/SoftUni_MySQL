SELECT e.`employee_id`, 
concat_ws(' ', `first_name`, `last_name`) AS `full_name`,
d.`department_id`, `name` AS `department_name` FROM `employees` AS `e`
JOIN `departments` as `d`
ON e.employee_id = d.manager_id
ORDER BY `employee_id`
LIMIT 5;