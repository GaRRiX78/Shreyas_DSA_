create table Employee(Eno varchar(10),Ename varchar(10),Dept varchar(5),Salary int,Grade varchar(10));
insert into Employee values('E101','Akash','EDP',9900,'B');
insert into Employee values('E102','Bharat','Accts',6000,'B');
insert into Employee values('E103','Moni','Prod',7000,'C');
Insert into Employee values('E104','Naren','Accts',12000,'A');
insert into Employee values('E105','Uthra','EDP',15000,'A');
insert into Employee values('E106','Sethil','It',24000,'A');
insert into Employee values('E107','Raman','CSE',24000,'A');
select*from Employee;

SELECT COUNT(Grade) FROM employee WHERE ['B'];  