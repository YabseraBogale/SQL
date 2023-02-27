create table Employee(
	id int not null primary key,
  	firstName varchar(30) not null,
  	lastName varchar(30) not null,
  	nationality varchar(30) not null,
    phoneNumber int not null,
    gender char(1) not null
);

create table EmergenceContact(
	firstName varchar(30) not null,
  	lastName varchar(30) not null,
  	phoneNumber int not null,
  	gender char(1) not null,
  	relationShip text not null,
 	id int not null,
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
