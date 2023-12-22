use pet_adpot;
create table emp(ID int not  null,Ename varchar(25), Department varchar(25), Salary int,Year_of_Experience int);
insert into emp values (1 ,'Aakash Singh','Development', 72000 ,2);
insert into emp values (2 ,'Abhishek Pawar','Production',45000,1);
insert into emp values (3 ,'Pranav Deshmukh','HR', 59900,3);
insert into emp values (4 ,'Shubham Mahale','Accounts', 57000,2);
insert into emp values (5 ,'Sunil Kulkarni','Development',87000,3);
insert into emp values (6 ,'Bhushan Wagh','R&D', 75000,2);
insert into emp values (7 ,'Paras Jaiswal','Marketing',32000, 1);

select * from emp;
create table emp_1(ID int not  null,Ename varchar(25), Department varchar(25), Salary int,Year_of_Experience int);

insert into emp_1 values(1,'Prashant Wagh', 'R&D', 49000, 1);
insert into emp_1 values(2,'Abhishek Pawar','Production',45000 ,1);
insert into emp_1 values(3,'Gautam Jain' ,'Development' ,56000 ,4);
insert into emp_1 values(4,'Shubham Mahale' ,'Accounts' ,57000 ,2);
insert into emp_1 values(5,'Rahul Thakur','Production',76000, 4);
insert into emp_1 values(6,'Bhushan Wagh' ,'R&D' ,75000,2);
insert into emp_1 values(7,'Anand Singh','Marketing',28000 ,1);

select * from emp;
select * from emp_1;


/*without Duplicate rows*/
select * from emp union select * from emp_1 order by Department;

/*with Duplicate rows*/
SELECT *FROM emp UNION all SELECT *FROM emp_1;


/*returns common value from the both table*/
SELECT *FROM emp intersect SELECT *FROM emp_1;

/* which are present in the first table but absent in the second query with no duplicates*/
select * from emp EXCEPT select * from emp_1; /*instead of minus*/

select ASCII('AB');

 select db_name();


/*string-function*/
select len(Ename) from emp where ID=1;

select lower(Department) from emp_1 where salary=28000;

select upper(Department) from emp_1 where salary=28000;

select left(Ename,3) as pet_name from emp;

select right(Ename,3) as e_name from emp_1;

select concat(Ename,' ',Department) as name_dept from emp_1;

/*aggregate function*/

select avg(salary) as average from emp;

select count(Ename) from emp_1;

select distinct(Department) from emp;

select max(salary) from emp_1;

select min(salary) from emp_1;

select max(ename) from emp;

select sum(salary) as total_salary from emp;   /*except select sum(salary) as total_salary_1 from emp_1;*/




/*filter not avialble in ssms
select Ename, count(Department) as dept  filter(where Department = 'Development') as spc from emp where ID between 1 and 7 group by Ename;
*/


/*select Department,avg(Salary) as avg_salary from emp where Year_of_Experience > 1 group by Department 
having avg(Salary) > 40000 order by avg_salary desc;*/

/*select emp_1.ID,avg(emp.Salary)  from emp join emp_1  on (emp.Department = emp_1.Department)
where emp.Year_of_Experience > 1 group by emp_1.ID having avg(emp.Salary) > 25000;*/


/*select Rtrim('there   ') as name;
select ltrim('  there') as name;*/
select Ename,Department from emp intersect select Ename, Department from emp_1;