create database worker;
use worker;
create table employee (emp_id int not null,name_ varchar(20),job_role varchar(25),salary int);
insert into employee (emp_id,name_,job_role,salary) values (101,'virat','developer',45000);
insert into employee (emp_id,name_,job_role,salary) values (102,'jonam','project manager',65000);
insert into employee (emp_id,name_,job_role,salary) values (103,'manoj','Software Engineer',55000);
insert into employee (emp_id,name_,job_role,salary) values (104,'rohit','web developer',43000);
insert into employee (emp_id,name_,job_role,salary) values (105,'sachin','Product Manager',40000);

select * from employee;

create table deatils(id int not null,address varchar(25),country varchar(25),bonus int);
insert into deatils values (102,'2-nd street chennai','india',1);
insert into deatils values (101,'78-nd street salem','india',1);
insert into deatils values (103,' anna nagar chennai','india',1);
insert into deatils values (105,'mca street','England',0);
insert into deatils values (104,'2-nd street madurai','india',0);

select id from deatils;
select * from employee where emp_id = 105;

select name from sys.tables;

update employee set job_role='manager' where emp_id='101';
update employee set job_role='designer' where emp_id='102';

alter table employee add manager varchar(25);

select * from employee;

truncate table employee;
select * from employee;
select country from deatils;
select * from deatils order by id asc;
select sum(id) from deatils;
delete  from employee where emp_id = 102;
insert into employee values(107,'kholi','manager',65200);
select * from employee where emp_id=107;

drop table deatils;

select name from sys.tables;