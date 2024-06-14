CREATE DATABASE  IF NOT EXISTS `employees_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `employees_db`;


DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
                    `id` int(11) NOT NULL AUTO_INCREMENT,
                    `first_name` varchar(150) DEFAULT NULL,
                    `last_name` varchar(150) DEFAULT NULL,
                    `salary` int(11) NOT NULL,
                    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

insert into employee(id, first_name, last_name, salary) values ('1', 'Ivan', 'Ivanov', '1000');
insert into employee(id, first_name, last_name, salary) values ('2', 'Maria', 'Popova', '700');
insert into employee(id, first_name, last_name, salary) values ('3', 'Petar', 'Petrov', '1500');
insert into employee(id, first_name, last_name, salary) values ('4', 'Kalina', 'Angelova', '800');
