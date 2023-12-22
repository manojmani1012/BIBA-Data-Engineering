create database company;
create table jonam_(emp_id int not null,name_ varchar(216),age int, role_ varchar(216),city varchar(216),salary int, 
dept_id int not null);
create table department(dept_id int not null,deptname varchar(216));
create table projects(projectid int not null,emp_id int, project_name varchar(216),manager varchar(216));

insert into jonam_ values(1,'manoj',22,'engineer','chennai',45000,101);
insert into jonam_ values(2,'rohit',21,'software engineer','salem',40000,102);
insert into jonam_ values(3,'sachin',24,'analayst','madurai',25000,103);
insert into jonam_ values(4,'jonam',29,'manager','karur',55000,104);
insert into jonam_ values(5,'dhoni',20,'engineer','mumbai',45000,101);
insert into jonam_ values(6,'virat',21,'developer','pune',35000,105);

insert into department values(101,'biba');
insert into department values(102,'servicenow');
insert into department values(103,'devops');
insert into department values(104,'DE');
insert into department values(105,'fsd');
select * from department;

select * from projects;
insert into projects values(401,1,'hotel','babu');
insert into projects values(402,5,'store','abdul');
insert into projects values(403,3,'server','hari');
insert into projects values(404,2,'management','karan');
insert into projects values(405,4,'web','gani');
insert into projects values(406,6,'client','quantam');
select * from jonam_;