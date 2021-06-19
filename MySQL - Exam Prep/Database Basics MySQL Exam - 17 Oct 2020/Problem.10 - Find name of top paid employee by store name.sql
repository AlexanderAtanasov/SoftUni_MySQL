CREATE  FUNCTION `udf_top_paid_employee_by_store`(store_name VARCHAR(50)) RETURNS text 
    DETERMINISTIC
RETURN (

SELECT CONCAT(`first_name`,' ', `middle_name`, '. ', `last_name`,' ', 'works in store for',
' ', floor(DATEDIFF('2020-10-18',`hire_date`)/365),' years' )  FROM `employees` AS e
JOIN `stores` AS s
ON e.`store_id` = s.`id`
WHERE `name` = store_name
ORDER BY `salary` DESC
LIMIT 1);