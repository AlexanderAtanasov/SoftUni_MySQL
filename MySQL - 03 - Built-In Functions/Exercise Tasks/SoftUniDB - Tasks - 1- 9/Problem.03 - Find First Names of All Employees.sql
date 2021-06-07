SELECT `first_name` FROM `employees`
WHERE `department_id` IN (3,10) 
AND (date_format(`hire_date`,'%Y')  BETWEEN '1995' AND '2005')
ORDER BY `employee_id`;