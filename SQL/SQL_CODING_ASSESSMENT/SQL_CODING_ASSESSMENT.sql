--1.Querying Data by Using Joins and Subqueries
 use trail;
CREATE TABLE test(emp_id INT PRIMARY KEY,emp_name VARCHAR(50),age INT,city VARCHAR(50),salary int);
insert into test values(101, 'John', 25, 'Mumbai', 60000),
(102, 'Mike Jane', 30, 'Chennai', 75000),
(103, 'Bob Johnson', 25, 'Salem', 70000),
(104, 'Alice Williams', 35, 'Karur', 80000),
(105, 'Charlie Brown', 22, 'Delhi', 55000),
(106, 'Eva Davis', 29, 'kochi', 68000),
(107, 'David Miller', 33, 'Pune', 72000),
(108, 'Grace Wilson', 20, 'Chennai', 67000),
(109, 'Frank Johnson', 31, 'Salem', 76000),
(110, 'Helen Martin', 27, 'Delhi', 64000);

create table test1(project_id int ,project_name varchar(50),project_manager varchar(50),id int foreign key references test(emp_id));
insert into test1 values(1,'project A','manoj',101),(2,'project B','sachin',102),(1,'project A','manoj',103),
(3,'project C','hari',104),(5,'project D','sheldon',105),(6,'project E','Nancy',106),(7,'project K','mike',107);

select * from test;
select * from test1;

--Joins-is used to combine the two tables and getting the result based on conditions

--Equi-join: will give same output by using where and equi join .
select t.emp_name,t.age, t1.project_name from test t , test1 t1 where t.emp_id=t1.id;

--Non-join: by using operators(>,<,<=,>=)
select t.emp_name,t.age, t1.project_name from test t , test1 t1 where t.emp_id>t1.id;


--Inner join : selects all rows from both the tables as long as the condition is satisfied.
select t.emp_name,t.salary,t.age, t1.project_name from test t inner join  test1 t1  on t.emp_id=t1.id;
select t.emp_name,t.salary,t.age, t1.project_name from test t inner join  test1 t1  on t.emp_id=t1.id  where city='Salem';

--Left join:returns all the rows of the table on the left side of the join and matches rows for the table on the right
select t.emp_name,t.salary,t.age, t1.project_name from test t left join  test1 t1  on t.emp_id=t1.id;
select t.emp_name,t1.project_name,t.age, t1.project_name from test t left join  test1 t1  on t.emp_id=t1.id 
where project_id between 1 and 5;

--Right join:RIGHT JOIN is similar to LEFT JOIN.
select t.emp_name,t.salary,t.age, t1.project_name from test t right join  test1 t1  on t.emp_id=t1.id;
select t.emp_name,t1.project_name,t.age, t1.project_name from test t right join  test1 t1  on t.emp_id=t1.id 
where city='Chennai';

--FULL JOIN :result-set by combining results of both LEFT JOIN and RIGHT JOIN.
select t.emp_name,t.salary,t.age, t1.project_name from test t full join  test1 t1  on t.emp_id=t1.id;
select t.emp_name,t.city,t.age,t1.project_manager,t1.project_id, t1.project_name from test t full join  test1 t1  on t.emp_id=t1.id
where city='Chennai' and salary>10000;

--cross join:
select t.emp_name,t.age,t.salary,t.city,t1.project_name,t1.project_manager, t1.id from test t cross join test1 t1;

--subqueries:
select * from test where age in (select age from test where age between 25 and 30);
--returns all where the age between 25-30

select emp_name,emp_id from test where exists (select city from test where city  like 'c%');
-- retruns the data the city started as c

select emp_id,salary from test where age = any (select age from test where age= 25);
--returns the rows where any of the age is 25

select sum(salary) as sum_ from test where city in(select city from test where salary >10000);
--returns the total salary where salary > 10000

-- by using from clause,
select city,salary from (select city,avg(salary) as salary from test group by city)test
where salary >20000;

-- by using select clause,
select city,(select count(salary) from test where salary >10000) as j from test;

-- by using with,--cte
with high_salary(emp_id,emp_name,salary) as(select emp_id,emp_name,salary from test where salary > 70000) 
select emp_id,emp_name,salary from high_salary;


--2.Manipulate data by using sql commands using groupby and having clause.
--DDL,DML,TCL,DCL commands

--DDl- are create alter drop truncate comment rename
alter table  test_1 add  emp_id int;
truncate  table test1;
drop table test1;
exec sp_rename 'dbo.test1','test_1';
select * from test_1;

/*dml commands are select,update,insert,delete*/
select * from test;
select emp_id from test;
select emp_name from test;
update test set emp_name ='Jonam' where city='Karur';
delete from test_1 where project_name ='project A';

--group by 
select City, AVG(Salary) AS AverageSalary FROM test GROUP BY City;

SELECT Age, COUNT(*) AS count_age FROM test GROUP BY Age;

select city,max(salary) as max_salary from test group by city order by city desc;

select City, Age, AVG(Salary) as avg_salary from test group by City, Age order by city asc;

--having
select city,avg(salary) as av_salary from test group by city having avg(salary) >70000;

select age,count(*) as age_count from test group by age having count(*)  >1;

select city,sum(salary) as total from test group by city having sum(salary) > 140000;

select city,count(*) as city_count from test group by city having count(*)>1;

delete from test where emp_id in (select emp_id from test where age>30 group by emp_id having max(salary)<70000);

select * from test




