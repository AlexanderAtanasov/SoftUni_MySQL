/* Using this to check the missing products

SELECT * FROM `products`
WHERE `id` NOT IN ( SELECT `product_id` FROM `products_stores`);
*/ 
INSERT INTO `products_stores` 
VALUES 
(9,1),
(10,1),
(13,1),
(16,1),
(18,1);