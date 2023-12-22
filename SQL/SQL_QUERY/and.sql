/*
AND IN NOT OR LIKE BETWEEN ALL ANY EXISTS SOME
*/

use worker;
CREATE TABLE work (emp_id INT, emp_name VARCHAR(255), emp_city VARCHAR(255),emp_country VARCHAR(255),PRIMARY KEY (emp_id));
INSERT INTO work VALUES (101, 'Utkarsh Tripathi', 'Varanasi', 'India'),
                            (102, 'Abhinav Singh', 'Varanasi', 'India'), 
                            (103, 'Utkarsh Raghuvanshi', 'Varanasi', 'India'),
                            (104, 'Utkarsh Singh', 'Allahabad', 'India'),
                            (105, 'Sudhanshu Yadav', 'Allahabad', 'India'),
                            (106, 'Ashutosh Kumar', 'Patna', 'India');
select *from work;
select * from work where emp_city='Patna' and emp_id =106;
select * from work where emp_id between 101 and 106;
select * from work where emp_city in ('Varanasi','Patna');
select * from work where emp_country not like 'a%';
select * from work where emp_name='Sudhanshu Yadav' or emp_country='India';
select * from work where emp_name like 'u%';
select * from work where emp_id= all(select emp_id from work where emp_id = 104);
select * from work where emp_city=any(select emp_city from work where emp_city='Allahabad');
SELECT emp_name FROM work WHERE exists (SELECT emp_id FROM work WHERE emp_city = 'Patna');
SELECT * FROM work WHERE emp_id < some (SELECT emp_id FROM work WHERE emp_city = 'Patna');
select distinct emp_city from work;
select distinct * from work;
select count(distinct emp_city) from work;



