
create database kaoqin;

use kaoqin;
create table student(
	stu_id varchar(18) primary key,
	stu_name varchar(6) not null,
	stu_pwd varchar(20) not null,
	stu_type enum('1') not null,
	stu_time timestamp not null,
	stu_sex enum('ÄÐ','Å®')
);
create table teacher(
	tea_id varchar(18) primary key,
	tea_name varchar(6) not null,
	tea_pwd varchar(20) not null,
	tea_type enum('2') not null,
	tea_time timestamp not null,
	tea_sex enum('ÄÐ','Å®')
);