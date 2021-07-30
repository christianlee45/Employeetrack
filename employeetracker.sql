drop database if exists employeetrack_db;
create database employeetrack_db;

use employeetrack_db





CREATE TABLE `department` (
  `id` int DEFAULT NULL,
  'name' varchar(30) DEFAULT NULL
  'primary key' (id)
);
INSERT INTO department (id, name) 
	values (1,'sales');
INSERT INTO department (id, name) 
	values (2,'management');
INSERT INTO department (id, name) 
	values (3,'sales');
INSERT INTO department (id, name) 
	values (4,'sales');
INSERT INTO department (id, name) 
	values (5,'management');
INSERT INTO department (id, name) 
	values (6,'sales');
INSERT INTO department (id, name) 
	values (7,'sales');
INSERT INTO department (id, name) 
	values (8,'sales');
INSERT INTO department (id, name) 
	values (9,'maintenance');
INSERT INTO department (id, name) 
	values (10,'maintenance');



create TABLE `employee` (
  `id` int DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `role_id` varchar(100) DEFAULT NULL,
  `manager_id` int DEFAULT NULL
  'primary key' (id)
);
INSERT INTO employee (id, first_Name, last_Name, role_id, manager_id) 
	values (1, 'mike', 'daniels', 1 ,2 );
INSERT INTO employee (id, first_Name, last_Name, role_id, manager_id) 
	values (2, 'erica', 'sawyer', 2 ,null );
INSERT INTO employee (id, first_Name, last_Name, role_id, manager_id) 
	values (3, 'helen', 'bolton', 3 ,2 );
INSERT INTO employee (id, first_Name, last_Name, role_id, manager_id) 
	values (4, 'pam', 'smith', 4 ,2 );
INSERT INTO employee (id, first_Name, last_Name, role_id, manager_id) 
	values (5, 'ben', 'jones', 5 ,null );
INSERT INTO employee (id, first_Name, last_Name, role_id, manager_id) 
	values (6, 'henry', 'bell', 6 ,5 );
INSERT INTO employee (id, first_Name, last_Name, role_id, manager_id) 
	values (7, 'isaac', 'foxx', 7 ,5 );
INSERT INTO employee (id, first_Name, last_Name, role_id, manager_id) 
	values (8, 'randy', 'davis', 8 ,5 );
INSERT INTO employee (id, first_Name, last_Name, role_id, manager_id) 
	values (9, 'peter', 'akerson', 9 ,5 );
INSERT INTO employee (id, first_Name, last_Name, role_id, manager_id) 
	values (10, 'zane', 'mccloud', 10 ,5 );


CREATE TABLE `role` (
  `id` int DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `salary` decimal(10,0) DEFAULT NULL,
  `department_id` int DEFAULT NULL
  'primary key' (id)
) ;
INSERT INTO role (id, title, salary, department_id) 
	values (1,'salesman', 50000,1);
INSERT INTO role (id, title, salary, department_id) 
	values (2,'manager', 80000,2);
INSERT INTO role (id, title, salary, department_id) 
	values (3,'saleswoman', 50000,3);
INSERT INTO role (id, title, salary, department_id) 
	values (4,'saleswoman',50000,4);
INSERT INTO role (id, title, salary, department_id) 
	values (5,'manager',800000,5);
INSERT INTO role (id, title, salary, department_id) 
	values (6,'salesman',50000,6);
INSERT INTO role (id, title, salary, department_id) 
	values (7,'salesman',50000,7);
INSERT INTO role (id, title, salary, department_id) 
	values (8,'salesman',50000,8);
INSERT INTO role (id, title, salary, department_id) 
	values (9,'janitor',370000,9);
INSERT INTO role (id, title, salary, department_id) 
	values (10,'janitor',370000,10);

