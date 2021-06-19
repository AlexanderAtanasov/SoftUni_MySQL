DELIMITER ##

CREATE PROCEDURE udp_update_product_price(address_name VARCHAR (50)) 

BEGIN
DECLARE amount INT;
IF (LEFT(address_name,1) = 0)
  THEN set amount := 100;
  else set amount := 200;
  end if;

UPDATE `stores` as s
JOIN `addresses` as a
ON s.`address_id` = a.`id`
JOIN `products_stores` as ps
ON s.`id` = ps.`store_id`
JOIN `products` as p
ON ps.`product_id` = p.`id`
SET `price` = `price` + amount 
WHERE a.`name` = address_name;


END ##
DELIMITER ;
