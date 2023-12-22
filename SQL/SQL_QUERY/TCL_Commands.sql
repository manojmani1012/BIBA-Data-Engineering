use company;
create table employee(id int not null,emp_name varchar(25),age int,city varchar(25),salary int);
insert into employee values(101,'jonam',21,'salem',40000);
insert into employee values(102,'virat',31,'delhi',45000);
insert into employee values(103,'rohit',32,'mumbai',50000);
insert into employee values(104,'ram',25,'chennai',42000);
insert into employee values(105,'hari',24,'karur',41000);
insert into employee values(106,'ramesh',23,'madurai',46000);
insert into employee values(107,'lakshman',29,'chennai',54000);
insert into employee values(108,'sachin',27,'salem',65000);
insert into employee values(109,'roy',30,'delhi',25000);

select * from employee;

select distinct age from employee;
update employee set salary = 45000 where id=104;

select count(salary) as count_salary, salary  from employee group by salary having  count(salary) <40000;

select count(salary) as e , salary from employee group by salary order by salary asc;

begin tran;
delete from employee where salary=25000;
commit;
begin tran;
delete from employee where emp_name='hari';
rollback;
begin tran;
insert into employee values(110,'haran',25,'salem',45000);
save tran e1;
delete from employee where id =110;
save tran e2;
delete from employee where emp_name='ramesh';
save tran e3;
rollback tran e1;
select * from employee;









/*create database worker;
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

UPDATE employee set manager ='kiran' where emp_id between 101 and 105;

truncate table employee;

select * from employee;

select country from deatils;

select * from deatils order by id asc;

select sum(id) from deatils;

select count(id) from deatils;

delete  from employee where emp_id = 102;

insert into employee values(107,'kholi','manager',65200);

select * from employee where emp_id=107;

drop table deatils;

update employee set job_role='developer' where emp_id=104;

select job_role ,count(*) from employee group by job_role having count(*) >=1;
select name from sys.tables;*/

/*create database customer;
use customer;
create table details(id int not null, Cname varchar(250),contactn varchar(250),address varchar(250));
insert into details values (1 ,'jonam' ,'manoj', '2 street chennai');
insert into details values(2,'kohli','virat','kuruku street dubai');
insert into details values(3, 'Antonio', 'Antonio Moreno','2312 México');
insert into details values(4, 'shelby' ,'Thomas','120London');
insert into details values(5, 'jason', 'Christina','420 street maduari');
insert into details values(6, 'ja', 'Christ','420 street maduari');
select * from details;
drop table details;

select  distinct Cname from details;

select count(id) as id ,address from details group by address having count(id)<5;

select Cname , count(*) from details group by Cname order  by  Cname asc;

select address ,count(id) as customer_id from details group by address having count(id)>=1 order by address desc;

select SYSDATETIME() as now;
*/