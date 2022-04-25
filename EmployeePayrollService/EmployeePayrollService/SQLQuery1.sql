create database payroll_services; --UC1 : Ability to create payroll service database

--UC2 : Ability create a employee payroll table in the payroll service database
create table Employee_PayRoll(
	Id int IDENTITY,
	Name varchar(200),
	Salary float,
	StartDate date
	);

--UC3 : Ability to create employee payroll data service database
insert into Employee_PayRoll VALUES('MSD',100000.00,'2017-07-07');

insert into Employee_PayRoll VALUES('Dip',240000.00,'2020-09-24');

insert into Employee_PayRoll VALUES('M',120000.00,'2020-12-20');

insert into Employee_PayRoll VALUES('Fe',210000.00,'2021-02-12','F',686381,'Chandrapur');

--UC4 : Ability to retrieve all the employee payroll data 
select * from Employee_PayRoll;

---UC5 : Ability to retrieve salary data for particular employee
select * from Employee_PayRoll where StartDate between cast('2020-09-24' as date) and getdate();

---UC6 : Ability to add gender to table and update table
Alter table Employee_PayRoll ADD Gender varchar(255);

update Employee_PayRoll set Gender='F' where Id=4;

---UC7 : Ability to find sum,average,max, min and number of male and female employees
select SUM(Salary) as Sumofsalary from Employee_PayRoll;

select Avg(Salary) as Avgofsalary from Employee_PayRoll;

select MIN(Salary) as Minofsalary from Employee_PayRoll;

select MAX(Salary) as Maxofsalary from Employee_PayRoll;

select count(Id) from Employee_PayRoll;

select count(Id) as NoOfPeople,Gender from Employee_PayRoll group by Gender;

select * from Employee_PayRoll;

---UC8 : Ability to extend data to store information like employee phone, address and department
ALTER TABLE Employee_PayRoll ADD Phone int;

ALTER TABLE Employee_PayRoll ADD Address varchar(250) null default 'Chandrapur';

ALTER TABLE Employee_PayRoll ADD Department varchar(250) not null default 'RND';

--UC9 : Ability to extend employee payroll table to have basic pay, deductions,taxable pay,income tax,net pay
ALTER TABLE Employee_PayRoll ADD Deduction bigint,Taxable_Pay float,Income_Tax float,Net_Pay float; 

