

                     /*SQL QUERIES*/



create database practicequery; 
use practicequery;
create table class(Sno int primary key,Sname varchar(10),Degree varchar(10),Percentage numeric(6,2));
insert into class values(101,"Anil","B.Tech",68.15),(102,"Banu","B.E",78.28),(103,"Chandni","M.Tech",71.34),(104,"Deepika","B.Sc",65),(105,"Fatima","M.E.",74),(106,"Sruthi","B.Sc",64);
create table employee(Eno varchar(4) primary key,Ename varchar(10),Dept varchar(8),Salary int,Grade varchar(1));
insert into employee values("E101","Akash","EDP",9900,"B"),("E102","Bharat","Accts",6000,"B"),("E103","Moni","Prod",7000,"C"),("E104","Naren","Accts",12000,"A"),("E105","Uthra","EDP",15000,"A"),("E106","Senthil","IT",24000,"A"),("E107","Raman","CSE",24000,"A");
create table department(Dept varchar(8) primary key,Project_name varchar(15),Budget int);
insert into department values("EDP","DOCS",100000),("Prod","WHEEL",75000),("Accts","BALDE",200000),("IT","Data Warehouse",125000),("CSE","Data Mining",250000);
create table worker(WorkerId int primary key,WorkerName varchar(15),Hrlyrate numeric(6,2),Sup_Id int,Skill_type varchar(15));
insert into worker values(1235,"Franklin",12.5,1311,"Electrical"),(1412,"Nayan",13.75,1520,"Plumbing"),(2920,"Girish",10,2920,"Roofing"),(1520,"Rakesh",11.75,1520,"Plumbing"),(1311,"Chandar",15.5,1311,"Electrical");
create table student(Sno varchar(10) primary key,Sname varchar(15),City varchar(10),Dept varchar(8),M1 int,M2 int,M3 int);
insert into student values("98CSE01","Sangeetha","Salem","CSE",45,42,35),("98EEE07","Santhosh","Chennai","EEE",74,63,85),("96ECE03","Tanuja","Coimbatore","ECE",84,82,68),("97IT04","Utsav","Bangalore","IT",98,96,94),("97ME05","Vivek","Salem","MECH",51,40,28),("97CVE06","Suresh","Trichy","CIVIL",81,82,76),("97CSE07","Suma","Madurai","CSE",95,90,98),("98CSE45","Somesh","Chennai","CSE",89,67,78);
create table software(Pname varchar(15),Title varchar(20) primary key,Dev_In varchar(10),Swcost numeric(10,2),Dcost int,No_Sold int);
insert into software values("Anand","Parachutes","Basic",399.95,6000,43),("Anand","Videopack","Pascal",7500,16000,9),("Juliana","Invent.ctrl","COBOL",3000,3500,0),("Mary","Finance","Oracle",18000,8500,4),("Mary","Codegen","C",4500,20000,23),("Rekha","PCutil","C",725,5000,51),("Rekha","TSRhelp","Assembly",2500,6000,6),("Reshma","Hotelmgt","Pascal",1100,75000,2),("Reshma","Quiz","Basic",3200,2100,15),("Anand","Syss/w","C",400,24000,10);
create table programmer(Pname varchar(10) primary key,DOB date,DOJ date,Sex varchar(1),Prof1 varchar(10),Prof2 varchar(10),Sal int);
insert into programmer values("Anand","1966-04-21","1992-04-21","M","Pascal","Basic",4200),("Juliana","1968-01-31","1990-04-21","F","COBOL","Dbase",3000),("Mary","1970-06-24","1991-02-01","F","C++","Oracle",5500),("Nelson","1965-09-11","1989-10-11","M","COBOL","Dbase",6000),("Rekha","1970-04-19","1993-04-20","F","C","Assembly",3600),("Reshma","1969-12-02","1992-01-02","F","Pascal","Basic",700),("Vinaya","1965-12-14","1992-05-02","F","Foxpro","C",3500);
create table studies(Pname varchar(10) primary key,Splace varchar(10),Course varchar(8),Cost int);
insert into studies values("Anand","SSI","PGDCA",4500),("Juliana","BITS","MCA",22000),("Mary","SSI","PGDCA",4500),("Rekha","BDPS","DCS",6000),("Reshma","SI","DAP",5000),("Vinaya","BDPS","DCA",46000);

select WorkerName from worker where Skill_type="plumbing";
select * from class where Percentage between 65 and 75;
select * from class where Degree like "B%";
select database();
select distinct Degree from class order by Degree;
select Sname from class where Sname like "_a%";
select count(grade) as Count_B_Employee from employee where Grade="B";
select avg(salary) as Avg_Sal from employee;
select min(salary) as Min_Sal from employee;
select round(hrlyrate) as RoundedHrlyRate from worker;
select * from student order by Sno;
select Sname,M1+M2+M3 as TotalMarks from student;
select Sname from student where Sname like "sa%";
select Workername from worker where Hrlyrate*8>(select avg(Hrlyrate*8) from worker);
select workername,hrlyrate*8*6 as WeeklyWage from worker;
select avg(M1+M2+M3) as AvgCSE from student where dept="CSE";
select avg(Swcost+Dcost) from software where dev_in="Pascal";
select * from software where Pname="Rekha" or Pname="Reshma";
select count(Splace) as NoSSI from studies where Splace="SSI";
select count(sal) as Sal2000_5000 from programmer where sal between 2000 and 5000;
select Splace,count(Pname) as NoOfStudents from studies group by Splace;
select distinct Prof1,Prof2 from programmer where sex="M";
select title from software where dev_in!="C" and dev_in!="Pascal";
select * from programmer where Prof1!="COBOL" and Prof1!="Pascal";
select Pname,sum(No_Sold) from software group by Pname;
select count(title)  from software where dev_in!="C" and dev_in!="C++";
select pname from programmer where pname like "r%" order by pname limit 1;
select "For the language",Dev_In,"the maximum copies sold is",max(No_Sold) from software group by Dev_In;
select Pname,max(Swcost) from software group by Pname;
select programmer.pname,programmer.DOB,software.title from programmer inner join software on programmer.Pname=software.Pname;
select substring("Bombay",-3) ;
select (sysdate,"2000-11-14") from dual;
select "2002-06-01"-"1970-04-05" from dual;
SELECT DATE_FORMAT("2000-11-14",'%M %e, %Y') as date_char;
select "1996-09-20" from dual;
select date_sub(curdate(),interval 60 day);
select pname,doj,year(date_sub(curdate(),interval year(doj) year)) as experience from programmer;
select avg(year(curdate())-year(dob)) as AvgAgeF from programmer where sex="F";
select programmer.pname,software.* from programmer inner join software on programmer.pname=software.pname where programmer.doj< "1990-01-01";
select software.pname,software.swcost+software.dcost,studies.splace from software inner join studies on software.pname=studies.pname order by software.swcost+software.dcost desc limit 1;
select pname,substring(curdate()-dob,1,2) as OldestM from programmer where sex="M" order by curdate()-dob desc limit 1 ;
select pname as EmpCurBdayMonth from programmer where month(dob)=month(curdate());
select decode(Sno,"98CSE01","Computer Science","98EEE07","Electrical","96ECE03","Electronics","97IT04","InfoTech","97ME05","Mechanical","97CVE06","Computer Science","97CSE07","Computer Science","98CSE45","Computer Science") from student;
select DECODE(dept,'CSE',Computer Science) as DECODE_results from Student;




select employee.ename,employee.salary,department.Project_name from employee inner join department on employee.dept=department.dept;
select employee.ename,employee.salary,department.budget from employee left join department on employee.dept=department.dept ;
select employee.ename,employee.salary,department.project_name from employee full join department on employee.dept=department.dept order by employee.ename;
select employee.ename,department.budget from employee inner join department on employee.dept=department.dept where employee.ename like "B%" and department.budget>100000;
select ename from employee where salary in (select salary from employee e where employee.ename!=e.ename);
select programmer.pname,software.dev_in,programmer.sal from programmer inner join software on programmer.pname=software.pname where software.dev_in="C" order by sal desc limit 1;
select programmer.pname,software.dev_in,programmer.sal from programmer inner join software on programmer.pname=software.pname where software.dev_in="COBOL" and sex="F" order by sal desc limit 1;
select distinct prof1,prof2 from programmer where prof1 not in (select dev_in from software) or prof2 not in (select dev_in from software);
select pname,doj as EmpSameDayJoin from programmer where day(doj) in (select day(doj) from programmer p where programmer.pname!=p.pname);
select pname,year(curdate())-year(doj) as LeastExperience from programmer order by year(curdate())-year(doj) limit 1;




select count(software.title) as NoOfPackage,sum(software.no_sold) as NoSold,sum(software.swcost+software.dcost) as SaleValue,studies.splace as Institute from software inner join studies on software.pname=studies.pname group by studies .splace;
select software.*,programmer.sex,studies.splace from ((software inner join studies on software.pname=studies.pname) inner join programmer on software.pname=studies.pname) where software.dev_in="C" and programmer.sex="M" and count(studies.splace)=(select max(count(splace)) from studies group by splace);
select software.*,programmer.prof1,programmer.prof2 from software inner join programmer on software.pname=programmer.pname where software.dev_in!=programmer.prof1 and software.dev_in!=programmer.prof2;
select software.pname,software.title,software.swcost+software.dcost,year(curdate())-year(programmer.doj) as exp from software inner join programmer on software.pname=programmer.pname where year(curdate())-year(programmer.doj)<32 order by software.swcost+software.dcost desc limit 1;
select software.*,programmer.sex,studies.splace from ((software inner join studies on software.pname=studies.pname) inner join programmer on software.pname=studies.pname) where software.dev_in="C" and programmer.sex="M" ;
select pname,title from software union select dob,doj from programmer;
select software.* from software inner join programmer on software.pname=programmer.pname where (programmer.sex="M" and programmer.dob<"1966-01-01") or (programmer.sex="F" and programmer.dob>"1967-01-01");
select pname from programmer union all select title from software union all select splace from studies;
desc class;


