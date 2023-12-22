use students;
create table demo1(NAME_ varchar(25),ROLL_NO int,LOC varchar(20),PHONE_NUMBER int);
create table demo2(NAME_ varchar(25),ROLL_NO int,SEC varchar(5));
insert into demo1 values('Ram',101,'Chennai',99886),('Raj',102,'Coimbatore',88744),('Sasi',103,'Madurai',77344),
('Ravi',104,'Salem',89889),('Sumathi',105,'Kanchipuram',89868);
insert into demo2 values('Ravi',104,'A'),('Sumathi',105,'B'),('Raj',102,'A');

select * from demo1;
select * from demo2;

/*equijoin*/
select *  from demo1 d ,demo2 d1 where d.ROLL_NO=d1.ROLL_NO; /*same as inner join*/

/*nonequi join--using >,<,<=,>=*/
select *  from demo1 d ,demo2 d1 where d.ROLL_NO>d1.ROLL_NO;

/*subquery*/
select Name_,Loc,PHONE_NUMBER FROM demo1 where ROLL_NO in (select ROLL_NO from demo2 where SEC='A');
/*using in and it is corelated subquery*/
/*select d.Name_,d.Loc from demo1 d join demo2 d1 on d.ROLL_NO=d1.ROLL_NO where SEC='A';
select d.Name_ from demo1 d join demo2 d1 on d.ROLL_NO=d1.ROLL_NO where SEC='B';*/


delete from demo2 where ROLL_NO in (select ROLL_NO from demo1 where LOC='salem');

delete from demo2 where ROLL_NO in (select ROLL_NO from demo1 where LOC='chennai');

select * from demo2;

select Name_,Loc FROM demo1 where ROLL_NO in (select ROLL_NO from demo2 where SEC='C');

update demo1 set NAME_ ='jonam' where LOC in (select LOC from demo1 where LOC='salem');

update demo1 set LOC ='salem' where LOC ='Kanchipuram';

/*any*/
select Name_ from demo2 where ROLL_NO  = any (select ROLL_NO from demo1 where LOC in ('Coimbatore','Salem'));
/*any returns that any of the value is true*/

select * from demo1 where ROLL_NO in (select ROLL_NO from demo2 where SEC='A');  

/*exists*/
select NAME_ ,LOC from demo1 d where exists (select NAME_ from demo2 d1 where d.ROLL_NO=d1.ROLL_NO);
/*exists returns that only exists in table wrt condition*/

/*not exists*/
select NAME_ ,LOC from demo1 d where not exists (select NAME_ from demo2 d1 where d.ROLL_NO=d1.ROLL_NO);


/*all*/
select * from demo1 where ROLL_NO < all (select ROLL_NO from demo1 where NAME_='jonam');
/*returns all the value should be true*/

/*some*/
select NAME_,LOC from demo1 where ROLL_NO >some (select ROLL_NO from demo1 where NAME_='Ram');
/*same as any*/

select * from demo1 where NAME_ > any(select NAME_ from demo2 where SEC ='A')


create table emp(emp_id int not null,emp_name varchar(45),dept_id int,salary int,hire_date Date);
INSERT INTO emp(emp_id, emp_name, dept_id, salary, hire_date)
VALUES
    (101, 'John Doe', 1, 60000, '2022-01-15'),
    (102, 'Jane Smith', 1, 55000, '2022-02-20'),
    (103, 'Mike Johnson', 2, 70000, '2022-03-10'),
    (104, 'Emily Davis', 2, 60000, '2022-04-05'),
    (105, 'Alex Brown', 3, 80000, '2022-05-15'),
    (106, 'Sarah White', 3, 75000, '2022-06-20'),
    (107, 'Robert Lee', 1, 60000, '2022-07-10'),
    (108, 'Lily Chen', 2, 65000, '2022-08-05'),
    (109, 'Brian Wilson', 3, 70000, '2022-09-15'),
    (110, 'Olivia Taylor', 1, 58000, '2022-10-20');

select * from emp;
select * from dept;
create table dept(dept_id int,dept_name varchar(25));
insert into dept values(1,'Sales'),(2,'Marketing'),(3,'Engineering');

/*subquery in with clause CTE temp result*/
with high_salary(emp_id,emp_name,salary) as(select emp_id,emp_name,salary from emp where salary > 70000) 
select emp_id,emp_name,salary from high_salary;

with low_salary(salary) as (select min(salary) from emp ) select emp_name from emp, low_salary where emp.salary=low_salary.salary;

/*subquery in from clause*/
select dept_id,avg_salary 
from(select dept_id,avg(salary) as avg_salary from emp group by dept_id) emp where avg_salary >25000;


/*subquery in select clause*/
select emp_name,(select count(*) from dept where emp.dept_id=dept.dept_id) as jonam from emp;

create procedure allemp
as 
select * from emp
go;
exec allemp;






/*set MEMBERSHIP - IN , NOT IN 
SET COMPARISON-SOME,ALL*/
/*SUBQURIES -FROM , WITH, SELECT*/
/*WITH
with max_budget(value) as
    (select max(budget)
    from department)
select budget
from department, max budget
where department.budget = max_budget.value;*/







/*Using an Equi Join
Using a Self Join
Joins with groupby,,having by,grouping sets
Querying Data by Using Subqueries
Using the EXISTS,ANY,ALL Keywords
Using Nested Subqueries
Using Correlated Subqueries
Using UNION,INTERSECT,EXCEPT,MERGE*/


/*select emp_name ,hire_date from
								(select dept_id,avg(salary) as avg_salary from emp group by dept_id
						where avg_salary > 1000);
*/
/*Database Basics & Schema
Managing Database, Tables
Functions and Creating Sub-Totals
Stored Procedure*/
/*create database example;
USE example; 
DROP TABLE IF EXISTS customer; 
CREATE TABLE customer ( id INT AUTO_INCREMENT PRIMARY KEY,postalCode VARCHAR(15) default NULL, ) 
DROP TABLE IF EXISTS product; 
CREATE TABLE product ( id INT AUTO_INCREMENT PRIMARY KEY, product_name VARCHAR(50) NOT NULL,price VARCHAR(7) NOT NULL, qty VARCHAR(4) NOT NULL ) 
DROP TABLE IF EXISTS transactions; 
CREATE TABLE transactions ( id INT AUTO_INCREMENT PRIMARY KEY, cust_id INT, timedate TIMESTAMP, 
FOREIGN KEY(cust_id)    REFERENCES customer(id), ) 
CREATE TABLE product_transaction ( prod_id INT, trans_id INT,
PRIMARY KEY(prod_id, trans_id), FOREIGN KEY(prod_id) REFERENCES product(id),FOREIGN KEY(trans_id) REFERENCES transactions(id))*/