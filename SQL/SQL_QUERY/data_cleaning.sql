create database trail;
use trail;
CREATE TABLE users (user_id INT PRIMARY KEY,username VARCHAR(255) NOT NULL,email VARCHAR(255) NOT NULL,age INT);
INSERT INTO users (user_id, username, email, age) VALUES
(1, 'john_doe', 'john@example.com', 25),
(2, 'jane_smith', 'jane@example.com', 30),
(3, 'bob_jones', 'bob@example.com', 22),
(4, 'alice_walker', 'alice@example.com', 28),
(5, 'sam_roberts', 'sam@example.com', 35),
(6, 'emily_jackson', 'emily@example.com', 27),
(7, 'michael_brown', 'michael@example.com', 40),
(8, 'lisa_adams', 'lisa@example.com', 32),
(9, 'peter_wilson', 'peter@example.com', 26),
(10, 'susan_white', 'susan@example.com', 29),
(11, 'david_miller', 'david@example.com', 33),
(12, 'olivia_carter', 'olivia@example.com', 24),
(13, 'ryan_smith', 'ryan@example.com', 31),
(14, 'grace_davis', 'grace@example.com', 36),
(15, 'william_clark', 'william@example.com', 23);

insert into users values(16, 'david_miller', 'david@example.com', 33);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    product_name VARCHAR(255) NOT NULL,
    order_date DATE
);
INSERT INTO orders (order_id, user_id, product_name, order_date)
VALUES
    (1, 1, 'Laptop', '2023-01-15'),
    (2, 2, 'Smartphone', '2023-02-20'),
    (3, 3, 'Headphones', '2023-03-10'),
    (4, 4, 'Tablet', '2023-04-05'),
    (5, 5, 'Camera', '2023-05-12'),
    (6, 6, 'Fitness Tracker', '2023-06-18'),
    (7, 7, 'Gaming Console', '2023-07-22'),
    (8, 8, 'Printer', '2023-08-30'),
    (9, 9, 'External Hard Drive', '2023-09-08'),
    (10, 10, 'Smartwatch', '2023-10-15'),
    (11, 11, 'Bluetooth Speaker', '2023-11-25'),
    (12, 12, 'Digital Camera', '2023-12-02'),
    (13, 13, 'Monitor', '2024-01-09'),
    (14, 14, 'Wireless Mouse', '2024-02-14'),
    (15, 15, 'Graphics Card', '2024-03-21');


select distinct username from users;
select * from orders;
/*to find the duplicate names*/
select username, count(username)from users group by username having (count(username) >1);

select username, Rank() over(order by username) as ro from users;


/*Partitioning refers to the division of a large table into smaller, more manageable pieces called partitions.*/
--in order to achieve the partition and delete the dulpicate use with 
with de as (select username ,ROW_NUMBER() over(partition by username order by username) as rn from users)
select username from de where rn>1;
with de as (select username ,ROW_NUMBER() over(partition by username order by username) as rn from users)
delete from de where rn>1;


select * from users;
insert into users values(11, 'david_miller', 'david@example.com', 33);

/*also work in rank fun*/
with low_ as (select username ,rank() over(partition by username order by user_id) as jo from users)
select username from low_ where jo >1;

--in order to delete the row that are recently added use user_id desc in order by 
with low_ as (select username ,rank() over(partition by username order by user_id desc) as jo from users)
delete from low_ where jo >1;


/*del where is the null*/
update users set age =null where age=30;
delete from users where age is null;
insert into users values(2, 'jane_smith', 'jane@example.com', 30);

/*update null with values*/
update users set age =30 where age is null;


/*update with lower or uppper*/
update users set username = upper(username);


--to find that the orders are placed in future use getdate and update it
select * from orders where order_date > getdate();

update orders set order_date =getdate() where order_date> GETDATE();

select * from orders;


/*effective data cleaning process
1. Check for Missing Values - is null,COALESCE
2. Check for Duplicates - group by , having, distinct,delete from
3. Standardizing and Transforming Data - upper,lower,replace,substrings,trim,dateformat,case when
4. Updating Data / Column Data Types - update ,case when,alter table - modify column,drop column
*/


--- check for missing values - is null,coalesc
update users set age =null where age between 20 and 35;
select * from users;
select username, coalesce(age,25) as age from users;


--Check for Duplicates - group by , having, distinct,delete from
select username,count(*) from users group by username having count(*) >1;
select distinct username,count(*) from users group by username having count(*) >1;

with ss as (select username,count(*) as j from users group by username)
select username from ss where j>1
/*delete the row */
with ss as (select username,count(*) as j from users group by username)
delete from ss where j>1


--Standardizing and Transforming Data - upper,lower,replace,substrings,trim,dateformat,case when
select user_id,upper(username) as userna from users;
select user_id,lower(username) as userna from users;
select USER_ID,replace(username,'_',' ') as updatedname from users;
select SUBSTRING(username,1,4) as pet from users;
/*select product_name, format(order_date,'mm/dd/yyyy') as ord_date from orders;*/
/*using case and when using for if conditions*/ 
select order_id,product_name,
case 
when product_name ='Laptop' then 'lap' 
when product_name='Tablet' then 'tab' 
else 'techie'
end as sales 
from orders;
select * from orders;

--Updating Data / Column Data Types - update ,case when,alter table - modify column,drop column
update users set age =RAND()*25
where age is null;

update users set age =round(rand()*50,18,0) where age =0;
select * from users;
update users set age =null where age =13;

--alter table users alter column email int;
--alter table users drop column email;

select * from orders;

select username from users u where user_id in (select user_id from orders o where u.user_id=o.user_id)

select user_id ,username,email,age from users where age < any(select age from users where age between 18 and 25);



/*partitions*/
CREATE TABLE items (item_id INTEGER PRIMARY KEY,item_name TEXT,category TEXT,quantity INTEGER,price DECIMAL(8, 2));
INSERT INTO items (item_id,item_name, category, quantity, price) VALUES
    (1, 'Item A', 'Electronics', 5, 199.99),
    (2, 'Item B', 'Clothing', 10, 49.95),
    (3, 'Item C', 'Home Decor', 3, 25.50),
    (4, 'Item D', 'Kitchen Appliances', 2, 149.99),
    (5, 'Item E', 'Toys', 8, 9.99),
    (6, 'Item F', 'Furniture', 1, 299.00),
    (7, 'Item G', 'Books', 15, 12.49),
    (8, 'Item H', 'Beauty', 6, 5.99),
    (9, 'Item I', 'Sports', 4, 89.00),
    (10, 'Item J', 'Outdoor', 7, 45.25);

select * from items;

select item_name,category ,avg(price) over() as Avg_price,avg(price) over(partition by quantity) as c_avg_price from items;

select item_name,category ,avg(price) over() as Avg_price from items group by quantity;

select item_name,item_id,category ,avg(price) over(partition by quantity) as price_avg from items;

