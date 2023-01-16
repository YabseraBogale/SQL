create table Employee(
	
  	empid int not null,
  	fullname varchar(30) not null,
  	primary key(empid)
 
);

insert into Employee(empid,fullname,jobPostion) values(1,'Bob Liews','permanent');
insert into Employee(empid,fullname,jobPostion) values(2,'John Smith','contract employee');
insert into Employee(empid,fullname,jobPostion) values(3,'Sue Smith','contract employee');
insert into Employee(empid,fullname,jobPostion) values(4,'Jon Doe','Part Timer');
insert into Employee(empid,fullname,jobPostion) values(5,'Jonny Peter','daily worker');

create table EmployeeInformation(
    empid int not null,
    jobExp int not null,
    highestED varchar(30) not null,
    latestED varchar(30) not null,
    primary key(jobEXP),
    foreign key(empid) References Employee(empid)
);
create table Attendance(
	
	empid int not null,
    day int not null,
    time int not null,
    month_information varchar(30) not null,
    primary key(day),
    foreign key(empid) References Employee(empid)

);

create table Salary(

	empid int not null,
    growth_salary float not null,
    tax float not null,
    annual_salary float not null,
    primary key(growth_salary),
    foreign key(empid) References Employee(empid)

);

create table Annual_leave(

	day int not null,
    dayRemaning int not null,
    daysConsumed int not null,
    foreign key(day) References Attendance(day)
    
);
    
