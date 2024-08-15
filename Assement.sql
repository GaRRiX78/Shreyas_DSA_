create table employee(id int,first_name varchar(20),last_name varchar(20),department_id int,salary int(20),years_worked int);
insert into employee values(1,'Diane','Turner',1,5330,4),(2,'clarence','Robinson',1,3617,2),(3,'Eugene','Phillips',1,4877,2),(4,'phillip','Mitchell',1,5259,3),
(5,'Ann','Wright',2,2094,5),(6,'Charles','Wilson',2,5167,5),(7,'Russel','Johnson',2,3762,4),(8,'Jacqueline','Cook',2,6923,3),(9,'Larry','lee',3,2796,4);
/*Queries*/
SELECT first_name, last_name, salary, 
(SELECT SUM(salary) FROM employee) AS total_salary 
FROM employee;

SELECT first_name, last_name, salary, 
(SELECT COUNT(*) FROM employee WHERE salary > 4000) AS count_high_earners 
FROM employee 
WHERE salary > 4000;

create table single_order1( id int,placed date,total_price numeric(6,2));
insert into single_order values(1,'10/7/2016',3876.76),
(2,'10/07/2016',3949.21),(3,'18-07-2016',2199.46),(4,'13-06-2016',2659.63),(5,'13-06-2016',602.03), (6,'13-06-2016',3599.83),(7,'29-06-2016',4402.04),(8,'21-08-2016',4553.89),
(9,'30-08-2016',3575.55),(10,'01-08-2016',4973.43),(11,'05-08-2016',3252.83),(12,'05-08-2016',3796.42);

