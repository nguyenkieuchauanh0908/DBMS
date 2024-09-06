CREATE DATABASE QLSV
go
USE QLSV
go
CREATE TABLE STUDENTS(
s_id varchar(20) not null primary key,
s_name nvarchar(50),
s_login varchar(50),
s_age int,
s_gpa real
);
go
CREATE TABLE FACULTY(
f_id varchar(20) not null primary key,
f_name nvarchar(50),
sal real
);
go
CREATE TABLE COURSES(
c_id varchar(20) not null primary key,
c_name nvarchar(50),
credits int 
);
go
CREATE TABLE ROOMS(
r_no varchar(20) not null primary key,
address nvarchar(50),
capacity int check (capacity between 50 and 200)
);
go
CREATE TABLE ENROLLED(
s_id varchar(20) not null references STUDENTS(s_id) 
ON UPDATE CASCADE,
c_id varchar(20) not null references COURSES(c_id) 
ON UPDATE CASCADE,
grade varchar(20) check (grade between 0 and 10)
primary key(s_id,c_id)
);
go
CREATE TABLE TEACHES(
f_id varchar(20) not null references FACULTY(f_id) ON UPDATE CASCADE,
c_id varchar(20) not null references COURSES(c_id) ON UPDATE CASCADE,
primary key(f_id,c_id)
);
go
CREATE TABLE MEETS_IN(
c_id varchar(20) not null references COURSES(c_id) ON UPDATE CASCADE,
r_no varchar(20) not null references ROOMS(r_no) ON UPDATE CASCADE,
metting_time timestamp,
primary key(c_id,r_no,metting_time)
);
