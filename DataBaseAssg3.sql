create table Employee(
	
  	empid int not null,
  	fullname varchar(30) not null,
  	primary key(empid)
 
);

insert into Employee(empid,fullname,jobPostion) values(1,'Bob Liews');
insert into Employee(empid,fullname,jobPostion) values(2,'John Smith');
insert into Employee(empid,fullname,jobPostion) values(3,'Sue Smith');
insert into Employee(empid,fullname,jobPostion) values(4,'Jon Doe');
insert into Employee(empid,fullname,jobPostion) values(5,'Jonny Peter');

create table EmployeeCatagories(
	empid int Not Null, 
	jobPosition varchar(30) Not Null,
	primary key(jobPosition),
	foreign key(empid) References Employee(empid)
);

insert into EmployeeCatagories(empid,jobPostion) values(1,'permanent');
insert into EmployeeCatagories(empid,jobPostion) values(2,'contract employee');
insert into EmployeeCatagories(empid,jobPostion) values(3,'contract employee');
insert into EmployeeCatagories(empid,jobPostion) values(4,'Part Timer');
insert into EmployeeCatagories(empid,jobPostion) values(5,'daily worker');


create table EmployeeInformation(

	empid int not null,
	jobExp int not null,
	latestEdu varchar(30) not null,
	highestEdu varchar(30) not null,
	primary key(jobExp);
	foreign key(empid) References Employee(empid)

);

insert into EmployeeInformation(empid,jobExp,latestEdu,highestEdu) values(1,2,'Degree','Masters');
insert into EmployeeInformation(empid,jobExp,latestEdu,highestEdu) values(2,2,'Degree','Masters');
insert into EmployeeInformation(empid,jobExp,latestEdu,highestEdu) values(3,2,'Degree','Phd');
insert into EmployeeInformation(empid,jobExp,latestEdu,highestEdu) values(4,2,'Masters','Masters');
insert into EmployeeInformation(empid,jobExp,latestEdu,highestEdu) values(5,2,'Degree','Doctor');

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
    primary key(day),
    foreign key(empid) References Employee(empid)

);

insert into Attendance(empid,day,date,time,month_information) values(1,12,'12-02-2002','2:30','Feb');
insert into Attendance(empid,day,date,time,month_information) values(2,12,'12-02-2002','2:30','Feb');
insert into Attendance(empid,day,date,time,month_information) values(3,12,'12-02-2002','2:30','Feb');
insert into Attendance(empid,day,date,time,month_information) values(4,12,'12-02-2002','2:30','Feb');
insert into Attendance(empid,day,date,time,month_information) values(5,12,'12-02-2002','2:30','Feb');






