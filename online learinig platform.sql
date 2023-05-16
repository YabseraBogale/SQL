
--drop table Disscussion_form;
--drop table Enrollment;
--drop table Profile;
--drop table Teacher;
--drop table Student;
--drop table user;


create table disscussion_form(
    
    enroll_id int not null,
    teacher_id int not null,
    time_stamp datetime --check

);

create table user(
	
  	user_id int not null,
  	user_type text not null

);


create table student(

    user_id int not null,
    enroll_id int not null,
    assessment_id int not null,
    report_id int not null


);

create table teacher(
    
    user_id int not null,
    teacher_id int not null,
    course_id int not null

	
);

create table enrollment(

    enroll_id int not null,
    user_profile text not null,--picture
    course_id int null,
    payment int not null

);


create table profile(
    user_profile_id int not null,
    user_id int not null,
    user_name int not null,--should there first and last name ?
    user_email int not null,
    user_phone_no text not null
);


create table rating(

    rating_id int not null,
    rating_scale int not null


);


create table course_Detail(

    course_id int not null,
    teacher_id int not null,
    rating_id int not null,
    course_name varchar(20) not null,
    material_id int not null,
    assessment_id int not null

);

create table course_material(

    material_id int not null,
    material_type text not null

);


create table Assessment(

    assessment_id int not null,
    assigment text,-- should be not null ?
    quiz text,-- should be not null ?
    exam text not null,
    time_stamp datetime-- should be not null ?

);


create table grading(

    grading_id int not null,
    grading_scale text not null,-- how should it be graded?
    assessment_id int not null

);

create table report(

    report_id int not null,
    report_type text not null,-- how ?
    summary_id int not null

);


create table summary(

    summary_id int not null,
    summary_type char, --how ?
    grading_id int not null

);