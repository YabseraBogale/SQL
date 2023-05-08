create table nurse(

	nurseUserName varchar(20) not null primary key,
  	nurseFirstName varchar(20) not null,
  	nurseLastName varchar(20) not null,
  	nurseEmail varchar(20) not null,
  	nurseTelephone int not null,
  	nursePassword text not null,
  	nurseWorkingHour datetime not null,
  	nursePrice float not null

);

create table patient(
	
    patientUserName varchar(20) not null,
 	patientFirstName varchar(20) not null,
  	patientLastName varchar(20) not null,
  	patientEmail varchar(20) not null,
  	patientTelephone int not null,
  	patientPassword text not null,
  	patientNurse varchar(20) not null,
  	foreign key (patientNurse) references nurse(nurseUserName)
  	
);

insert into nurse(nurseUserName,nurseFirstName,nurseLastName,nurseEmail,nurseTelephone,nursePassword,nurseWorkingHour,nursePrice) values
('Yabserabgl','bogale','Aabate','yabsera@gmail.com',920201161,'12345678',2020-11-11,120)