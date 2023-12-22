create database students;
use students;
create table stud(roll_no int not null,Name_ varchar(20),city varchar(20),contact int unique,age int,primary key(roll_no));
insert into stud values(11,'sheldon','chennai',789456,14),(15,'shelly','madurai',789446,15),
(7,'amy','namakal',654321,14),(10,'penny','chennai',983256,14),(12,'rajesh','salem',987656,12),
(18,'virat','salem',789459,14),(9,'howard','karur',123456,12),(5,'bill','karur',788546,14);
insert into stud values(20,'sachin','cbe',789654,12);

update stud set Name_='billy' where Name_='bill';
create table stud_det(course_id int,roll_no int foreign key references stud(roll_no) ,blood_group char(5));
insert into stud_det values(101,5,'o+'),(102,7,'b+'),(101,9,'o-'),(102,10,'b+'),(105,11,'o+'),
(105,12,'o+'),(103,15,'ab-'),(103,18,'b+');
insert into stud_det values(110,21,'A+')


select * from stud;
select * from stud_det;


/*stud alias as s stud_det alias as s1*/
/*inner join*/
select s.Name_,s.city,s.age,s.contact,s1.course_id,s1.blood_group from stud s inner join stud_det s1 on s.roll_no=s1.roll_no;

select s.Name_,s1.roll_no,s1.blood_group from stud s inner join stud_det s1 on s.roll_no=s1.roll_no;

select s1.course_id,s.Name_,s.roll_no from stud s inner join stud_det s1 on s.roll_no=s1.roll_no;

select s.Name_,s.city,s.age,s.contact,s1.course_id,s1.blood_group,s1.roll_no
from stud s inner join stud_det s1 on s.roll_no=s1.roll_no;

select s.Name_,s.city,s.age,s1.course_id from stud s inner join stud_det s1 on s.roll_no=s1.roll_no 
where city='chennai';
/*select Name_,city,age from stud where city='chennai';*/
/*left join*/
select s.Name_,s.city,s.age,s.contact ,s1.course_id,s1.blood_group from stud s left join stud_det s1 on s.roll_no=s1.roll_no;

select s.Name_,s.city,s.age,s.contact,s1.course_id,s1.blood_group,s1.roll_no
from stud s left join stud_det s1 on s.roll_no=s1.roll_no;

select s.Name_,s.city,s.age,s.contact,s1.blood_group from stud s left outer join stud_det s1 on s.roll_no=s1.roll_no 
where blood_group='b+';

/*stud_det as table 1 & stud as table 2
select s1.course_id,s.Name_ from stud_det s1 left join stud s on s.roll_no=s1.roll_no;*/

/*right join*/
select s.Name_,s.city,s.age,s.contact,s1.course_id,s1.blood_group from stud s right join stud_det s1 on s.roll_no=s1.roll_no;

select s.Name_,s.city,s.age,s.contact,s1.course_id,s1.blood_group,s1.roll_no

from stud s right outer join stud_det s1 on s.roll_no=s1.roll_no;

/*full join*/
select s.Name_,s.city,s.age,s.contact,s1.course_id,s1.blood_group from stud s full join stud_det s1 on s.roll_no=s1.roll_no;
select s.roll_no, s.Name_,s.city,s1.course_id from stud s full join stud_det s1 on s.roll_no=s1.roll_no ;


/*cross join*/
select s.roll_no, s.Name_,s.city,s1.course_id from stud s cross join stud_det s1 ;

/*equi join-- using equal sign (=).*/
select s.Name_,s.city,s.age,s.contact,s1.course_id,s1.blood_group from stud s , stud_det s1 where s.roll_no=s1.roll_no;

/*non equi join
 using comparison operator other than equal(=) sign like >, <, >=, <= with conditions*/
select s.Name_,s.city,s.age,s.contact,s1.course_id,s1.blood_group ,s1.roll_no from stud s , stud_det s1 where s.roll_no < s1.roll_no;
select s.Name_,s.city,s.age,s.contact,s1.course_id,s1.blood_group ,s1.roll_no from stud s , stud_det s1 where s.roll_no <= s1.roll_no;
select s.Name_,s.city,s.age,s.contact,s1.course_id,s1.blood_group ,s1.roll_no from stud s , stud_det s1 where s.roll_no > s1.roll_no;
select s.Name_,s.city,s.age,s.contact,s1.course_id,s1.blood_group ,s1.roll_no from stud s , stud_det s1 where s.roll_no >= s1.roll_no;



/*string function*/
select ASCII('B');/*numeric value in op*/
select char(66);/*66-b*/
select len(Name_) from stud where city='madurai';
select lower('MANOJ');
select REPLACE('jano','j','m');/*replaces j with m*/
SELECT str (3.3333333, 10, 1)/*str(number,length,decimal)*/
select upper('manoj');
select REVERSE('jonam');




/*date function*/
select GETDATE();/*2023-12-07 12:40:14.937*/
select DATEADD(dd,3,'2001-11-07'); /*2001-11-10 00:00:00.000 dd-date,mm-month,yy-year   (dd,number to add,date)*/
SELECT datediff(day, convert(datetime,'2001-11-10'),convert(datetime,'2023-11-10'));/* gets dif b/w the given date,day,month,year */
SELECT datepart (YYYY, '2008-11-21');/*returns the exact d/m/y*/
SELECT day ( '2010-03-21');      /*returns the exact d/m/y*/
SELECT month ('2007-04-03');	 /*returns the exact d/m/y*/
SELECT year ( '2011-04-17');	 /*returns the exact d/m/y*/



/*mathematical function*/
select ABS(-105);			      /*returns the absolute number*/
SELECT cos(1);                    /*returns the cos sin tan cot values*/
SELECT ceiling(15.2);             /*the smallest or greater than or equal to the specified value.*/
SELECT exp(4);					  /*return exponential value*/
SELECT floor(15.99);              /*the largest or less than or equal to the specified value.*/
SELECT log (2.31);                  /*log values*/




/*rank function*/
select age , ROW_NUMBER() OVER ( ORDER BY age asc) as rank from stud;     /*creates row number 2 each row*/
insert into stud values(21,'bill','salem',785462,12);
select Name_,contact ,rank() over (order by Name_) from stud;  /*same rank for equal values*/
select Name_,contact ,dense_rank() over (order by Name_) from stud;  /*same rank -- dupli values*/
select Name_,contact ,NTILE(5) over (order by Name_) from stud;    /*divide the result set into a specified number*/


/*system function*/

SELECT host_name() as 'HOSTNAME';  /*return hostname*/
SELECT db_name() as Databasename;
select host_id();
SELECT SESSION_USER AS 'CurrentSessionUser';
SELECT user_name () as USERID; /*user name*/



/*aggerate function*/
select MAX(age) from stud;
select MIN(age) from stud;
select avg(age) from stud;
select count(blood_group) from stud_det;
select sum(age) from stud;



/*group& compute by*/
create table demo(emp_id int not null,emp_name varchar(25),job_role varchar(25),leave_hours int, sick_hour int);
insert into demo values(101,'jonam','developer',20,10),(102,'hari','unit head',30,20),(103,'krish','developer',20,10),
(104,'billy','trainer',30,15),(105,'mike','manager',30,5),(106,'penny','hr',25,15),(107,'jason','tester',30,15);
select * from demo;


select job_role, 'total'=sum(leave_hours), 'sick'=sum(sick_hour) from demo group by job_role;

select emp_name,(sum(leave_hours)+sum(sick_hour))as total from demo group by emp_name;










exec sp_help 'stud';

/*Using an Inner Join
Using an Left Join
Using an Right Join
Using an Full Outer Join
Using a Cross Join
Joins with groupby,aggregate functions*/


/*select DATEDIFF(year,convert(datetime,'2022-11-01'),convert(datetime,'2025-12-01'));*/
