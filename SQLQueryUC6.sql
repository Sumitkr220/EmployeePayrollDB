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


