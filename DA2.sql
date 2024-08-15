create Database practical;
show databases;
use practical;

create table class3( sno int, sname varchar(10), degree varchar(10),percentage int);
show tables;
insert into class3 values('2367','Rahul', 'Grad','80'),('17103','kunal','BTECH','75'),('2343','John','PG','88'),('5678','kamal','BSC','80'),('4538','Reet','MSc','79');
update class3 ('2367',
select*from class3