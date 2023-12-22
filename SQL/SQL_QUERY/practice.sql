use trail;
CREATE TABLE practice_table (id INT PRIMARY KEY,name VARCHAR(50),age INT,city VARCHAR(50),salary DECIMAL(10, 2));

INSERT INTO practice_table VALUES
(1, 'John Doe', 25, 'New York', 60000.00),
(2, 'Jane Smith', 30, 'London', 75000.50),
(3, 'Bob Johnson', 28, 'San Francisco', 70000.75),
(4, 'Alice Williams', 35, 'Berlin', 80000.25),
(5, 'Charlie Brown', 22, 'Tokyo', 55000.50),
(6, 'Eva Davis', 29, 'Toronto', 68000.00),
(7, 'David Miller', 33, 'Sydney', 72000.50),
(8, 'Grace Wilson', 26, 'Paris', 67000.75),
(9, 'Frank Johnson', 31, 'Los Angeles', 76000.25),
(10, 'Helen Martin', 27, 'Vancouver', 64000.50),
(11, 'George Adams', 34, 'Mumbai', 78000.00),
(12, 'Ivy Lee', 23, 'Seoul', 59000.75),
(13, 'Jack Turner', 32, 'Mexico City', 74000.50),
(14, 'Karen White', 28, 'Beijing', 69000.25),
(15, 'Leo Martinez', 24, 'Sao Paulo', 62000.50);

select * from practice_table

create table demo1(project_id int ,project_name varchar(50),project_manager varchar(50),id int foreign key references practice_table(id));
insert into demo1 values(101,'project A','manoj',1),(102,'project B','sachin',2),(101,'project A','manoj',3),(103,'project C','hari',4),
(105,'project D','sheldon',5),(106,'project E','Nancy',6),(107,'project K','mike',7);

select * from demo1;

/*ddl commands are create alter drop truncate comment rename*/
alter table  demo1 add  emp_id int;
truncate  table demo1;
drop table demo1;
exec sp_rename 'dbo.demo1','demo_1';
select * from demo_1;


/*dml commands are select,update,insert,delete*/
select * from practice_table;
/*EXEC sp_rename 'practice_table.name', 'name_em', 'COLUMN';*/
select id from practice_table;
select name_em from practice_table;
update practice_table set name_em ='Jane' where city='London';
delete from demo_1 where project_name ='project A';
insert into demo_1 values(101,'project A','manoj',1),(101,'project A','manoj',3);

select * from demo_1;


/*tcl-commit,rollback,savepoint,set transcation*/
--commit
begin tran;
delete from demo_1 where project_name ='project B';
commit;

insert into demo_1 values(102,'project B','sachin',2);
--rollback
begin tran;
delete from demo_1 where project_name='project B';
rollback;

--savepoint
begin tran;
delete from demo_1 where project_name='project B';
save tran m1;
begin tran;
delete from demo_1 where project_name='project A';
save tran m2;
begin tran;
insert into demo_1 values(108,'Project O','rohit',10);
save tran m3;

rollback tran m1;

select * from demo_1

/*logical*/

select * from practice_table
-- and
select id,name_em,age from practice_table where age = 25 and salary > 10000;
--or
select id,name_em,age from practice_table where age = 25 or salary > 60000;
--in 
select id from practice_table where city in (select city from practice_table where city='London');
--like
select id,name_em,city from practice_table where city like 'm%';

/*joins*/
--equi join
select p.name_em,p.age, d.project_name from practice_table p , demo_1 d where p.id=d.id;
--non-equi join
select p.name_em,p.age, d.project_name from practice_table p , demo_1 d where p.id>d.id;--using >,<,>=,<=
-- inner join
select p.name_em,p.age, d.project_name from practice_table p inner join  demo_1 d  on p.id=d.id;
--left join
select p.name_em,p.age, d.project_name from practice_table p left join  demo_1 d  on p.id=d.id;
-- right join
select p.name_em,p.age, d.project_name from practice_table p right join  demo_1 d  on p.id=d.id;
--full join
select p.name_em,p.age, d.project_name from practice_table p full join  demo_1 d  on p.id=d.id;
--cross join
select p.name_em,p.age, d.project_name from practice_table p cross join  demo_1 d;

/*function*/
--string 
select ascii('k');
select char(107);
select upper(name_em) from practice_table where id=5;
select lower(name_em) from practice_table where id=5;
select len(name_em) from practice_table where id=5;
select REPLACE('jano','j','m');
select reverse('jonam');

--rank
select id,name_em, row_number() over(order by id) as rn from practice_table;
select id,project_name, rank() over(order by project_name) as rn from demo_1;
select id,project_name, dense_rank() over(order by project_name) as rn from demo_1;
select id,name_em,age,NTILE(5) over(order by id) as rn from practice_table;

--agg
select max(salary) from practice_table;
select min(salary) from practice_table;
select avg(salary) from practice_table;
select sum(salary) from practice_table;
select count(salary) from practice_table;

--date
select getdate();
select DATEADD(mm,3,'2023-01-03');
select datediff(month,convert(datetime,'2023-11-10'),convert(datetime,'2024-11-10'))
select datepart(month,'2023-11-10')
select day('2023-05-11')
select month('2023-05-11')
select year('2023-05-11')

--mathematical
select abs(-1);
select floor(15.2);
select CEILING(15.2);
select log(5);
select exp(5);
select cos(5);

--system
select db_name();
select USER_NAME();
select SUSER_NAME();


/*union*/
CREATE TABLE table1 (id INT PRIMARY KEY,name VARCHAR(50),age INT,city VARCHAR(50),salary DECIMAL(10, 2));
INSERT INTO table1 VALUES
(1, 'John Doe', 25, 'New York', 60000.00),
(2, 'Jane Smith', 30, 'London', 75000.50),
(3, 'Bob Johnson', 28, 'San Francisco', 70000.75),
(4, 'Alice Williams', 35, 'Berlin', 80000.25),
(5, 'Charlie Brown', 22, 'Tokyo', 55000.50);

CREATE TABLE table2 (id INT PRIMARY KEY,name VARCHAR(50),age INT,city VARCHAR(50),salary DECIMAL(10, 2));
INSERT INTO table2 VALUES
(6, 'Eva Davis', 29, 'Toronto', 68000.00),
(7, 'David Miller', 33, 'Sydney', 72000.50),
(8, 'Grace Wilson', 26, 'Paris', 67000.75),
(4, 'Alice Williams', 35, 'Berlin', 80000.25),
(5, 'Charlie Brown', 22, 'Tokyo', 55000.50);

--union
select * from table1 union select * from table2;
--union all
select * from table1 union  all select * from table2;
--intersect
select * from table1 intersect select * from table2;
--except
select * from table1 except select * from table2;

--group by
select project_manager,count(*) as rn from demo_1 where project_id between 101 and 105 group by project_manager;
SELECT name,count(*) as counts from practice_table group by name order by name asc;
select name,count(city) as city_count from practice_table group by name order by name desc;
select project_manager from demo_1 where project_id between 101 and 105 group by project_manager;
--having
select project_manager,count(*) as rn from demo_1 where project_id between 101 and 105 group by project_manager having count(*)>1;



select * from practice_table
/*storage procedure*/
create procedure hello 
as 
select avg(salary) as avg_salary from practice_table where city like 'm%'
exec hello;
--single parameter
create procedure jo @id int 
as 
select * from practice_table where id=@id

exec jo @id=3;
--mutliple parameter
create procedure jo1 @project_name varchar(25),@project_id int
as
select * from demo_1 where project_name=@project_name and project_id=@project_id

exec jo1 @project_name='project A', @project_id=101

/*data cleaning*/
--checking null,coalesc
update practice_table set age =null where age between 20 and 30;
select * from practice_table where age is null
select id, name_em ,coalesce(age,25) as age from practice_table

select * from practice_table
select * from demo_1;
--checking for dulipcates group by having
select * from table1
insert into table1 values(6,'Charlie Brown',25,'tokyo',36540.25)
select name ,count(*) as counts from table1 group by name having count(*) >1;
--Standardizing and Transforming Data - upper,lower,replace,substrings,trim,dateformat,case when
--Updating Data / Column Data Types - update ,case when,alter table - modify column,drop column

/*subquery*/
select * from table1 where age in(select age from table1 where age between 25 and 30);
select * from table1 where age =any(select age from table1 where age between 25 and 30);
select * from table1 where age <any(select age from table1 where age between 25 and 30);
select * from table1 where age < all(select age from table1 where age between 25 and 30);
select * from table1 where  exists(select age from table1 where age between 25 and 30);
select sum(salary) as sum_ from table1 where city in (select city from table1 where salary>45000)

select * from practice_table

--from
select city,salary from (select city,avg(salary) as salary from practice_table group by city) practice_table
where salary >20000;

--with 
with High_salary as (select * from table1 where salary >1)
select * from High_salary;
/*with high_salary(emp_id,emp_name,salary) as(select emp_id,emp_name,salary from emp where salary > 70000) 
select emp_id,emp_name,salary from high_salary;*/

--select
select city,(select count(city) from table1 where salary >1) as jonam from table1



/*partical
ddl dml tcl 
logical operators-and,in,all,any,like,not,or,same,exists,nnot exists
data integrity-primary key,foreign key,unique,default,check,not null
equi,non-equi,inner,left,right,full,cross joins
string func-ascii,char,upper,lower,reverse,len,replace
date-dateadd,datediff,datepart,getdate,day,month,year
aggg-max,min,avg,count,sum,dsitinct
mathem-abs,floor,ceiling,log,exp,cos
rank-row_number,rank.dense_rank,ntile
system-db_name,hostname,userid
union, union all ,intersect,except(minus)
group by having
corelated subquery ,subquery using in,all,any,some,exists,not exists
nested subquery, n.s using from,select,with clause
storage procedure
subtotal
data cleaning methods-1. Check for Missing Values - is null,COALESCE
2. Check for Duplicates - group by , having, distinct,delete from
3. Standardizing and Transforming Data - upper,lower,replace,substrings,trim,dateformat,case when
4. Updating Data / Column Data Types - update ,case when,alter table - modify column,drop column
partition by */


/*theory
data engineering,blueprint of ds,claf.data,bigdata,4v,batch,stream,mapreduce,data warehosuing,features of dw,dss archi,oltp,
data warehouse,b.data,etl process,operational datab,datamarts,olap,database,rdbms,componets,diff types of db,why sql,uses,features,tables in sql,
client-server interaction,connectors,commands in sql ddl,dml,tcl,dcl,data integrity,database schema,data cleaning,subtotal,partition*/



select*from table1;
select* from table2;
select a.id,a.name,a.age,b.salary from table1 a inner join table2 b on a.id=b.id;

select name,id,rank() over(partition by name order by name asc) as rn from table1;

with high_(salary) as (select  max(salary) as salary from table1) select salary from high_

select salary from(select min(salary) as salary from table1) table1 where salary >1;

--subtotal,olap