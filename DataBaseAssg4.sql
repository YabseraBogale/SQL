create table Employee(
	
  	empid int not null,
  	fullname varchar(30) not null,
  	DateOfB varchar(20) not null,
  	primary key(empid)
 
);

insert into Employee(empid,fullname,DateOfB) values(1,'Bob Liews','12-09-1998');
insert into Employee(empid,fullname,DateOfB) values(2,'John Smith','02-05-1999');
insert into Employee(empid,fullname,DateOfB) values(3,'Sue Smith','19-04-2000');
insert into Employee(empid,fullname,DateOfB) values(4,'Jon Doe','12-09-1996');
insert into Employee(empid,fullname,DateOfB) values(5,'Jonny Peter','22-05-2002');

create table EmployeeCatagories(
	empid int Not Null, 
	jobPosition varchar(30) Not Null,
	primary key(empid),
	foreign key(empid) References Employee(empid)
);

insert into EmployeeCatagories(empid,jobPosition) values(1,'permanent');
insert into EmployeeCatagories(empid,jobPosition) values(2,'contract employee');
insert into EmployeeCatagories(empid,jobPosition) values(3,'contract employee');
insert into EmployeeCatagories(empid,jobPosition) values(4,'Part Timer');
insert into EmployeeCatagories(empid,jobPosition) values(5,'daily worker');


create table EmployeeInformation(

	empid int not null,
	jobExp int not null,
	latestEdu varchar(30) not null,
	highestEdu varchar(30) not null,
	primary key(empid),
	foreign key(empid) References Employee(empid)

);

insert into EmployeeInformation(empid,jobExp,latestEdu,highestEdu) values(1,2,'Degree','Masters');
insert into EmployeeInformation(empid,jobExp,latestEdu,highestEdu) values(2,12,'Degree','Masters');
insert into EmployeeInformation(empid,jobExp,latestEdu,highestEdu) values(3,32,'Degree','Phd');
insert into EmployeeInformation(empid,jobExp,latestEdu,highestEdu) values(4,22,'Masters','Masters');
insert into EmployeeInformation(empid,jobExp,latestEdu,highestEdu) values(5,5,'Degree','Doctor');

create table Salary(

	empid int not null,
	net_Salary int not null,
    growth_salary float not null,
    tax float not null,
    annual_salary float not null,
    primary key(net_Salary),
    foreign key(empid) References Employee(empid)

);
 
insert into Salary(empid,net_Salary,growth_salary,tax,annual_salary) values(1,10000,12000,0.35,120000);
insert into Salary(empid,net_Salary,growth_salary,tax,annual_salary) values(2,8000,10000,0.35,72000);
insert into Salary(empid,net_Salary,growth_salary,tax,annual_salary) values(3,11000,13000,0.35,132000);
insert into Salary(empid,net_Salary,growth_salary,tax,annual_salary) values(4,13000,15000,0.35,156000);
insert into Salary(empid,net_Salary,growth_salary,tax,annual_salary) values(5,15000,17000,0.36,180000);

create table Attendance(
	
	empid int not null,
    day int not null,
    date varchar(10) not null,
    time varchar(5) not null,
    month_information varchar(30) not null,
    primary key(empid),
    foreign key(empid) References Employee(empid)

);

insert into Attendance(empid,day,date,time,month_information) values(1,12,'12-02-2002','2:30','Feb');
insert into Attendance(empid,day,date,time,month_information) values(2,12,'12-02-2002','2:30','Jan');
insert into Attendance(empid,day,date,time,month_information) values(3,12,'12-02-2002','2:30','Mar');
insert into Attendance(empid,day,date,time,month_information) values(4,12,'12-02-2002','2:30','May');
insert into Attendance(empid,day,date,time,month_information) values(5,12,'12-02-2002','2:30','Dec');

create table Annual_leave(
	
	empid int not null,
    dayRemaning int not null check(dayRemaning between 0 and 15),
    daysConsumed int not null check(daysConsumed between 0 and 15),
	primary key(empid),
	foreign key(empid) References Employee(empid)    

);

insert into Annual_leave(empid,dayRemaning,daysConsumed) values(1,3,12);
insert into Annual_leave(empid,dayRemaning,daysConsumed) values(2,6,7);
insert into Annual_leave(empid,dayRemaning,daysConsumed) values(3,13,2);
insert into Annual_leave(empid,dayRemaning,daysConsumed) values(4,4,11);
insert into Annual_leave(empid,dayRemaning,daysConsumed) values(5,10,3);


select COUNT(empid) from Employee;
select * from Salary;
select * from EmployeeInformation;
select * from Employee;
select * from Annual_leave;
select * from Attendance;


create view EmployeePC as select * from EmployeeCatagories where jobPosition='permanent' or jobPosition='contract employee';
create view PermanentAndContract as select jobPosition,highestEdu,latestEdu,jobExp from EmployeeInformation,EmployeePC where EmployeeInformation.empid=EmployeePC.empid;

select dayRemaning from Annual_leave where dayRemaning<16;
select daysConsumed from Annual_leave where daysConsumed<16;

select jobPosition from EmployeeCatagories where jobPosition='permanent';
select jobPosition from EmployeeCatagories where jobPosition='contract employee';

select count(jobPosition) from EmployeeCatagories where jobPosition='permanent';
select count(jobPosition) from EmployeeCatagories where jobPosition='contract employee';

select * from PermanentAndContract;


