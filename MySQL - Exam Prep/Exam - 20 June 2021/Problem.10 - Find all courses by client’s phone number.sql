DELIMITER ##

CREATE FUNCTION udf_courses_by_client(phone_num VARCHAR(20))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN(
SELECT count(co.`id`)  FROM `clients` as c
JOIN `courses` as co
ON c.`id` = co.`client_id`
WHERE c.`phone_number` = phone_num
);
END ##

DELIMITER ;

SELECT udf_courses_by_client ('(803) 6386812') as `count`; 
SELECT udf_courses_by_client ('(831) 1391236') as `count`;
SELECT udf_courses_by_client ('(704) 2502909') as `count`;

