CREATE SCHEMA `project_management_db`;

use `project_management_db`;

CREATE TABLE `employees` (
`id` INT(11) PRIMARY KEY AUTO_INCREMENT,
`first_name` VARCHAR(30),
`last_name` VARCHAR(30),
`project_id` INT(11)
);

CREATE TABLE `projects` (
`id` INT(11) PRIMARY KEY AUTO_INCREMENT,
`client_id` INT (11),
`project_lead_id` INT(11)
);

CREATE TABLE `clients` (
`id` INT(11) PRIMARY KEY AUTO_INCREMENT,
`client_name` VARCHAR(100)
);

ALTER TABLE `projects`
ADD CONSTRAINT fk_projects_clients
FOREIGN KEY (`client_id`)
REFERENCES `clients`(`id`);

ALTER TABLE `projects`
ADD CONSTRAINT fk_project_employees
FOREIGN KEY (`project_lead_id`)
REFERENCES `employees`(`id`);

ALTER TABLE `employees`
ADD CONSTRAINT fk_employee_project
FOREIGN KEY (`project_id`)
REFERENCES `projects`(`id`);