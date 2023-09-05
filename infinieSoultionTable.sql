create table user(

	username varchar(20) not null,
  	userId int not null,
  	password varchar(140) not null,
  	email varchar(30) not null,
  	telephone varchar(20) not null

);

create table course(
    
    courseName varchar(20) not null,
    courseId varchar(15) not null,
    instructorName varchar(20) not null,
    noOfLessons int not null,
    materialId int not null,
);


create table instructor(
    
    instructorName varchar(20) not null,
    courseId varchar(15) not null,
    instructorId int not null,
    
    
    
);

create table material(
    
    videoId int not null,
    pictureId int not null,
    textId int not null,
    materialId int not null
    
    
);


create table video(
    
    path varchar(20) not null,
    lessonNo int not null,
    videoId int not null,
    courseId varchar(15) not null,
    videoLength float not null,
        
);

create table picture(

    path varchar(20) not null    
    courseId varchar(15) not null,
    pictureId int not null,
    
);

create table textData(
    
    courseId varchar(20) not null,
    textData int not null,
    path varchar(20) not null,    
    fileType varchar(10) not null
);


create table test(
    
    courseId varchar(20) not null,
    instructorId int not null,    
    result int not null,

);

create table grade(
       
    grade varchar(2) not null,
    userId int not null,
    courseName  varchar(20) not null,
    courseId varchar(15) not null
    
);


create table question(
    
    courseId int not null,
    noOfQuestion int not null,    
    instructorId int not null
);

