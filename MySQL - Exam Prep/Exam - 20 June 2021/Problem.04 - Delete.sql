DELETE FROM `clients` as cl
WHERE cl.`id` NOT IN (
SELECT c.`client_id` FROM `courses` as c
);
