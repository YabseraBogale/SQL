
create table Employee(
	
  	empid int not null,
  	fullname varchar(30) not null,
  	jobPostion varchar(30) not null,
  	primary key(empid)
 
);

insert into Employee(empid,fullname,jobPostion) values(1,'Bob Liews','permanent');
insert into Employee(empid,fullname,jobPostion) values(2,'John Smith','contract employee');
insert into Employee(empid,fullname,jobPostion) values(3,'Sue Smith','contract employee');
insert into Employee(empid,fullname,jobPostion) values(4,'Jon Doe','Part Timer');
insert into Employee(empid,fullname,jobPostion) values(5,'Jonny Peter','daily worker');

create view Information as select empid, jobPostion from Employee Where jobPostion='permanent' or jobPostion='contract employee';

