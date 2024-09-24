create database hrmDB

create table department
(
 id int not null primary key,
 departName varchar(50) not null
);

insert into department values (1,'BackOffice')
insert into department values (2,'CS')
insert into department values (3,'INTEGRATION')
insert into department values (4,'SQA')
insert into department values (5,'Admin')

select * from department

create table employeeInfo
(
 empId int not null primary key identity (1,1),
 empName varchar(50) not null,
 qualification varchar(30) not null,
 position varchar(30) not null,
 hireDate date not null,
 phoneNumber varchar(30) not null,
 departId int foreign key references department(id),
 Image nvarchar(max) null
);

select * from employeeInfo


create table roleInfo
(
 empId int not null primary key,
 empName varchar(50) not null,
 userName varchar(50) not null,
 userPassword varchar(30) not null,
 role varchar(30) not null,
);


create table attendanceTracking
(
 empId int not null primary key identity (1,1),
 empName varchar(50) not null,
 entryDate date,
 clockInTime time ,
 clockOutTime time,
 PresentOrAbsent char(1)
);


create table payroll
(
 empId int not null primary key identity (1,1),
 empName varchar(50) not null,
 basicSalary DECIMAL(10, 2),
 overtime DECIMAL(10, 2),
 bonus DECIMAL(10, 2),
 tax DECIMAL(10, 2),
 eobi DECIMAL(10, 2),
 grossSalary DECIMAL(10, 2),
 netSalary DECIMAL(10, 2),

);

select * from attendanceTracking


