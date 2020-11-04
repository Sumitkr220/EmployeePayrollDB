Select * from sys.databases

CREATE DATABASE payroll_service;

use payroll_service

CREATE TABLE employeePayroll
(
  id int IDENTITY(1,1),
  name varchar(30) not null,
  salary money not null,
  start date not null,
)

SELECT * FROM employeePayroll

iNSERT INTO employeePayroll values
('Bili' , 100000.00, '2018-01-03'),
('Teresa' , 200000.00, '2019-11-13'),
('Charlie' , 300000.00, '2015-01-03')

SELECT * FROM employeePayroll

SELECT * FROM employeePayroll where name='Bili'

SELECT * FROM employeePayroll where start between CAST('2018-01-01' AS DATE) AND CAST('2020-01-01' AS DATE)

alter table employeePayroll add gender char(1) 

update employeePayroll set gender='M' where name='Bili' or name= 'Charlie' 
update employeePayroll set gender='F' where name='Teresa'


SELECT sum(salary) as CombineSalary from employee_payroll where gender='M' group by gender


Alter table employeePayroll add Phone_number varchar(14)
Alter table employeePayroll add Address varchar(50)

Alter table employeePayroll add constraint Default_Address default 'Indian' for Address

Alter table employeePayroll add department varchar(20)
insert into employeePayroll(name, salary,start) values ('nill', 30000, '2018-07-09')

sp_rename 'employeePayroll.salary' , 'basic_pay'

Alter table employeePayroll add
Deduction float,
taxable_pay real,
incometax float,
netpay real;


Select * from sys.databases

CREATE DATABASE payroll_service;

use payroll_service

CREATE TABLE employeePayroll
(
  id int IDENTITY(1,1),
  name varchar(30) not null,
  salary money not null,
  start date not null,
)

SELECT * FROM employeePayroll

iNSERT INTO employeePayroll values
('Bili' , 100000.00, '2018-01-03'),
('Teresa' , 200000.00, '2019-11-13'),
('Charlie' , 300000.00, '2015-01-03')

SELECT * FROM employeePayroll

SELECT * FROM employeePayroll where name='Bili'

SELECT * FROM employeePayroll where start between CAST('2018-01-01' AS DATE) AND CAST('2020-01-01' AS DATE)

alter table employeePayroll add gender char(1) 

update employeePayroll set gender='M' where name='Bili' or name= 'Charlie' 
update employeePayroll set gender='F' where name='Teresa'


SELECT sum(salary) as CombineSalary from employee_payroll where gender='M' group by gender


Alter table employeePayroll add Phone_number varchar(14)
Alter table employeePayroll add Address varchar(50)

Alter table employeePayroll add constraint Default_Address default 'Indian' for Address

Alter table employeePayroll add department varchar(20)
insert into employeePayroll(name, salary,start) values ('nill', 30000, '2018-07-09')

sp_rename 'employeePayroll.salary' , 'basic_pay'

Alter table employeePayroll add
Deduction float,
taxable_pay real,
incometax float,
netpay real;

update employeePayroll set department='designer' where name='nill'
insert into employeePayroll values
('nill', 60000, '2017-10-18','F','9083637299','India','graphic',2300,1900,700,40000)


------

create table department(
deptID int not null primary key,
deptName varchar(20) not null
)
select * from department

insert into department values(101,'Accounts and Finance')
insert into department values(102,'HR')
insert into department values(103,'Sales and Marketing')
insert into department values(104,'Product development')

create table employee(
empID int NOT NULL identity(1,1) PRIMARY KEY,
deptID int not null, 
name VARCHAR(50) NOT NULL,
gender char(1) not null,
salary DECIMAL(10,2) NOT NULL,
start_Date DATETIME NOT NULL ,
contactNo varchar(20),
address varchar(100) not null, 
FOREIGN KEY(deptID) REFERENCES department(deptID)
)
SELECT * FROM employee
insert into employee values
(
 101,'Akansha','F', 50000, '2020-10-18','9089234567','Mumbai'
)
insert into employee values
(
102,'Priya','F', 80000, '2019-10-18','7895467223','Kolkata'
)
insert into employee values
(
103,'Sagar','M', 50000, '2018-01-04','9330234556','Pune'
)
create table payroll(
empID int not null foreign key references employee(empID),
basic_pay decimal(10,2),
deductions decimal(10,2),
taxable_pay decimal(10,2),
income_tax decimal(10,2),
net_pay decimal(10,2))
SELECT * FROM payroll

insert into payroll values(
2,90000,5000,2000,1000,80000)

