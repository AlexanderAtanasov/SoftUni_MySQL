SELECT AVG(`salary`) FROM `employees`
GROUP BY `department_id`
ORDER BY AVG(`salary`)
LIMIT 1;