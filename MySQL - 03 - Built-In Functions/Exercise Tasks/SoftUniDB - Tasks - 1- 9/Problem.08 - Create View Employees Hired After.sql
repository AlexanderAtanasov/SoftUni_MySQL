CREATE VIEW `v_employees_hired_after_2000` AS 
SELECT `first_name`, `last_name` FROM `employees`
WHERE date_format(`hire_date`, '%Y') > 2000;

SELECT * FROM `v_employees_hired_after_2000`;