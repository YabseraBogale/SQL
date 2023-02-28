create table Employee(

	id int not null primary key,
  	firstName varchar(30) not null,
  	middleName varchar(30) not null,
  	lastName varchar(30) not null,
  	 
);

create table EmployeeInformation(
  
  	id int not null,
  	jobPosition varchar(40) not null,
  	phoneNumber int not null,
  	educationLevel varchar(40) not null,
  	jobExperince int not null,
  	dateOfEntrie varchar(10) not null,
  	foreign key(id) references Employee(id)
  
);

create table EmergenceContact(

	id int not null,
	firstName varchar(30) not null,
	middleName varchar(30) not null,
  	lastName varchar(30) not null,
  	phoneNumber int not null,
  	gender char(1) not null,
  	relationShip text not null,
  	foreign key (id) references Employee(id)
  	
);

create table Salary(
  	
  	id not null,
  	allownce float not null,
  	bounce flaot not null,
  	tax float not null,
  	overTimeSalary float not null,
  	pensionDeposite float not null,
  	monthlySalary float not null,
  	foreign key (id) references Employee(id)
  	
);

create table serviceFee(
  
  id int not null,
  NameCompany varchar(140) not null,
  reason text not null,
  tax float not null,
  foreign key(id) references Employee(id)

);

create table EmployeeResignation(
	
  	id int not null,
  	dateOfLeave varchar(10) not null,
  	numberofYearsAtWork int not null,
  	reasonOfLeave text not null,
  	foreign key(id) references Employee(id)
  	
);

create table EmployeeLayoff(
	
  id int not null,
  dateOfLeave varchar(10) not null,
  numberofYearsAtWork int not null,
  reasonOfLeave text not null,
  compsition float not null,
  foreign key(id) references Employee(id)
  
);
