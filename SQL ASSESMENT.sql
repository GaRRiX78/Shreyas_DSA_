create table sql_employee(id int,first_name varchar(20),last_name varchar(20),department_id int,salary int(20),years_worked int);
insert into sql_employee values(1,'Diane','Turner',1,5330,4),(2,'clarence','Robinson',1,3617,2),(3,'Eugene','Phillips',1,4877,2),(4,'phillip','Mitchell',1,5259,3),
(5,'Ann','Wright',2,2094,5),(6,'Charles','Wilson',2,5167,5),(7,'Russel','Johnson',2,3762,4),(8,'Jacqueline','Cook',2,6923,3),(9,'Larry','lee',3,2796,4);
create table sql_game(
Id int, Name varchar(25),platform varchar(15),genre varchar(25),editor_rating int,size int, released date, updated date);
insert into sql_game values("1","Go Bunny","ios","action","5","101","2015-05-01","2015-07-13");
insert into sql_game values("2","Fire Rescue","ios","action","9","36","2015-07-30","2016-09-27");
insert into sql_game values("3","Eternal Stone"," iOS"," adventure"," 10 ","125" ,"2015-03-20", "2015-10-25");
insert into sql_game values("4"," Froggy Adventure"," iOS"," adventure"," 7"," 127"," 2015-05-01"," 2015-07-02");
insert into sql_game values("5","Speed Race"," iOS"," racing ","7 ","127"," 2015-03-20", "2015-07-25");
insert into sql_game values("6","Monsters in dungeon","Android","adventure","9","10","2015-12-01","2015-12-15");
insert into sql_game values("7","shoot in time","Android","shooting","9","123","2015-12-01","2016-03-20");
create table stock_change(
Id int,product_id int,quantity decimal,changed date);
insert into stock_change values("1","5","-90","2016-09-11");
insert into stock_change values("2","2","-91","2016-08-16");
insert into stock_change values ("3","5","-15","2016-06-08");
insert into stock_change values("4","2","51","2016-06-10");
insert into stock_change values("5","1","-58","2016-08-09");
insert into stock_change values("6","1","-84","2016-09-28");
insert into stock_change values("7","4","56","2016-06-09");
insert into stock_change values("8","5","73","2016-09-22");
insert into stock_change values("9","1","-43","2016-06-07");
insert into stock_change values("10","2","-79","2016-07-27");
/*Queries*/
/*1*/
SELECT first_name, last_name, salary, 
(SELECT SUM(salary) FROM sql_employee) AS total_salary 
FROM sql_employee;
/*2*/
SELECT first_name, last_name, salary, 
(SELECT COUNT(*) FROM sql_employee WHERE salary > 4000) AS count_high_earners 
FROM sql_employee 
WHERE salary > 4000;
/*3*/
SELECT name, platform, editor_rating,
       RANK() OVER (ORDER BY editor_rating DESC)
FROM sql_game;
/*4*/
SELECT name,genre,updated, 
       RANK() OVER (ORDER BY updated DESC)
FROM sql_game;
/*5*/
select platform,genre,name
from sql_game
where ("updated==released");
/*6*/


/*7*/
SELECT COUNT(*) 
FROM stock_change
WHERE product_id='5';
select product_id, quantity,changed
from stock_change;
/*8*/
SELECT product_id,
  SUM(quantity) AS total_quantity
FROM stock_change
GROUP BY product_id
ORDER BY SUM(quantity) DESC;
/*9*/
SELECT YEAR(changed) AS Year, 
SUM(product_id) 
AS Total_product_id FROM stock_change   
GROUP BY YEAR(changed);
/*10*/


