create database payroll_services;
use payroll_services;

create table employee_payroll(id int identity (1,1) primary key, Name varchar(20), Salary float, StartDate date);

exec sp_help employee_payroll

insert into employee_payroll values( 'Sahiba ', 80000.00, '2021-12-13')
insert into employee_payroll values( 'Mantasha', 70000.00, '2021-12-14')
insert into employee_payroll values( 'Enayat', 60000.00, '2021-12-16')
insert into employee_payroll values( 'Kashish', 50000.00, '2021-12-18')

select * from employee_payroll

select Salary from employee_payroll WHERE name  = 'Sahiba'
select * from employee_payroll
where StartDate Between CAST ('2021-12-13' AS Date) and GETDATE();

Alter table employee_payroll Add gender char(1);
UPDATE employee_payroll Set gender ='F' where name = 'Sahiba' ;
UPDATE employee_payroll Set gender ='F' where name = 'Mantasha' ;
UPDATE employee_payroll Set gender ='F' where name = 'kashish' ;
UPDATE employee_payroll Set gender ='F' where name = 'Enayat' ;

select SUM(Salary) from employee_payroll where gender = 'F' Group by gender
select AVG(Salary) from employee_payroll where gender = 'F' Group by gender
select MIN(Salary) from employee_payroll where gender = 'M' Group by gender
select MAX(Salary) from employee_payroll where gender = 'M' Group by gender
select SUM(Salary) from employee_payroll where gender = 'M' Group by gender

Alter table employee_payroll Add phone bigint;
Alter table employee_payroll Add Address varchar(200) not null default 'Muzaffarpur';
Alter table employee_Payroll Add Department varchar(200) not null default'HR';

Alter table employee_Payroll Add Deduction bigint, Taxable_pay float, IncomeTax_pay float, Net_Pay float;

create table Department(id int identity (1,1) primary key, DepName varchar(20));
select * from Department


Alter table employee_payroll Add DepId int foreign key references Department(id);

insert into Department values('HR')
insert into Department values('Sales')
