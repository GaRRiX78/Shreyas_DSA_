CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255) UNIQUE,
  salary DECIMAL(10,2)
);

insert into employees values (1,'shreyas','shreyasv@gmail.com',20000);
select*from employees;
