use customer;
Create table Demo(Id int,name varchar(50),Salary int default 10000);
insert into demo values(101,'rajesh',15000);
insert into demo values(102,'lenord',150000);
insert into demo values(103,'sheldon',default);
select * from demo;


CREATE TABLE demo1 (EmployeeID INT PRIMARY KEY,FirstName VARCHAR(50),Email VARCHAR(100) UNIQUE);
insert into demo1 values(11,'howard','howard102@gmail.com');
insert into demo1 values(110,'rose','rose12232@gmail.com');
insert into demo1 values(101,'jack','howard102@gmail.com');
select * from demo1;

