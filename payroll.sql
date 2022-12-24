
create table EmployeeRecord(
EmpId int primary key auto_increment,
EmpName varchar(40) not null,
MobileNo double(12,2) not null,
email varchar(60) not null,
Designation varchar(20) not null,
DeptId int not null,
HireDate Date,
ManagerId int,
PanNo varchar(20), 
BasicSal decimal(10,2),
constraint fk_di foreign key(DeptId) references Department(DeptId),
constraint fk_eid foreign key(EmpId) references Salary(EmpId),
constraint fk_ema foreign key(email) references users(email),
constraint fk_ei foreign key(EmpId) references InputSheet(EmpId),
constraint fk_eiq foreign key(EmpId) references query(Emp_id),
constraint fk_eiad foreign key(EmpId) references EmpAddress(EmpId)
);

create table EmpAddress(
EmpId int primary key,
Address varchar(50),
City varchar(40),
Pincode int  not null,
State varchar(40) not null default "Maharashtra",
Country varchar(40) not null default "India"
);


create table Department(
DeptId int primary key,
DeptName varchar(50)
);


Create table SalStracture(
DeptId int,
Designation varchar(40),
PerDaySal double(20,2),
constraint pk_ss primary key(DeptId,Designation),
constraint fk_dg foreign key(DeptId) references Department(DeptId)
);


create Table users(
email varchar(60) primary key,
Password varchar(30)
);


create table Salary(
EmpId int primary key,
Designation varchar(30),
BasicSal decimal(10,2),
Deptname varchar(20),
salfrom date,
salto date,
HRA decimal(9,2),
DA decimal(9,2),
TA decimal(9,2),
MA decimal(9,2),
TAX decimal(9,2),
TotalDays decimal(9,2),
TotalSal decimal(10,2),
NetSal decimal(10,2)
);



create table InputSheet(
Empid int Primary Key,
date Date,
markin_time time,
markOut_time time,
total_hour int
);

create table query(
Emp_id int,
Sub_id int,
subject varchar(50),
status boolean,
comment varchar(225),
constraint pk_ss primary key(Emp_id,Sub_id)
);

