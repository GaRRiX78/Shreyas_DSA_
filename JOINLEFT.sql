Create table EMPLOYEEE(Eno int, Fname varchar(10), Dept varchar(10), Salary varchar (10), Grade varchar(5));
Insert Into EMPLOYEEE VALUES( 102,'Akash','EDP',9900,'B');
Insert Into EMPLOYEEE VALUES( 101,'Bharat','Accts',6000,'B');
Insert Into EMPLOYEEE VALUES( 103,'Moni','Prod',7000,'C');
Insert Into EMPLOYEEE VALUES( 104,'Naren','Accts',12000,'A');
Insert Into EMPLOYEEE VALUES( 105,'Uthra','EDP',15000,'A');
Insert Into EMPLOYEEE VALUES( 106,'Senthil','IT',24000,'A');
Insert Into EMPLOYEEE VALUES( 107,'Raman','CSE',24000,'A');
Select* from EMPLOYEEE;
SELECT EMPLOYEEE.Fname, EMPLOYEEE.Salary, DEPARTMENT7.Budget From EMPLOYEEE LEFT JOIN DEPARTMENT7 ON EMPLOYEEE.Dept = DEPARTMENT7.Dept;

select EMPLOYEEE.Fname,DEPARTMENT7.Budget from EMPLOYEEE inner join DEPARTMENT7 on EMPLOYEEE.Dept=DEPARTMENT7.Dept where EMPLOYEEE.Fname like "B%" and DEPARTMENT7.Budget>100000;