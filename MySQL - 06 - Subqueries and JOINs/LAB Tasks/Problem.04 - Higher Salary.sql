SELECT COUNT(`employee_id`) FROM `employees`
WHERE `salary` > 
(SELECT avg(`salary`) FROM `employees`);