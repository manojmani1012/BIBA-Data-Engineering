use customer;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dept_name VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO employees (emp_id, first_name, last_name, dept_name, salary)
VALUES
    (1, 'John', 'Doe', 'IT', 60000.00),
    (2, 'Jane', 'Smith', 'HR', 55000.00),
    (3, 'Bob', 'Johnson', 'Finance', 70000.00),
    (4, 'Alice', 'Williams', 'Marketing', 60000.00),
    (5, 'Charlie', 'Brown', 'IT', 65000.00),
    (6, 'Eva', 'Davis', 'Finance', 72000.00),
    (7, 'Frank', 'White', 'Marketing', 62000.00),
    (8, 'Grace', 'Miller', 'HR', 58000.00),
    (9, 'Henry', 'Jones', 'IT', 63000.00),
    (10, 'Isabel', 'Taylor', 'Marketing', 61000.00);

select * from employees;
/* stored procedure*/
create procedure IT
as 
select * from employees 
go;
exec IT;
/*stored procedure--can be reused again & again*/
create procedure IT1
as 
select * from employees where dept_name='IT'

exec IT1;

/*using with one parameter*/
CREATE PROCEDURE SelectAllCustomers @dept_name varchar(30)
AS
SELECT * FROM employees WHERE dept_name= @dept_name

exec SelectAllCustomers @dept_name='HR';
 
/*using multiple parameter*/
CREATE PROCEDURE SelectA @dept_name varchar(30),@salary int
AS
SELECT * FROM employees WHERE dept_name= @dept_name and salary=@salary

exec SelectA @dept_name='IT' , @salary=60000;


/*subtotal*/

CREATE TABLE SalesList (SalesMonth VARCHAR(20), SalesQuartes  VARCHAR(5), SalesYear  SMALLINT, SalesTotal MONEY);

INSERT INTO  SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES ('March','Q1',2019,60)
,('March','Q1',2020,50)
,('May','Q2',2019,30)
,('July','Q3',2020,10)
,('March','Q1',2020,170)
,('November','Q4',2019,120)
,('October','Q4',2019,150)
,('November','Q4',2019,180)
,('November','Q4',2020,120)
,('July','Q3',2019,160);

SELECT  * FROM SalesList

select SalesYear,sum(SalesTotal) as total from SalesList group by rollup(SalesYear);
/*the null values returns the grand total*/

select SalesYear,SalesQuartes ,sum(SalesTotal) as total from SalesList group by rollup(SalesYear,SalesQuartes);
/*if gives another parameter ,grouped by parameters and gives the separate results,null value is subtotal 
and aslo the grand total value*/

select SalesYear,SalesQuartes,SalesMonth ,sum(SalesTotal) as total from SalesList group by rollup(SalesYear,SalesQuartes,SalesMonth);
/*returns each qu in eacch month and the subtotals and grand total also*/


SELECT SalesYear,SalesQuartes, SUM(SalesTotal) AS SalesTotal ,GROUPING(SalesQuartes) AS SalesQuarterGrp,GROUPING(SalesYear) AS SYearGrp
FROM SalesList GROUP BY ROLLUP(SalesYear, SalesQuartes)
/* grouping used to find the null values and by using grouping we differ each col*/

SELECT CASE WHEN GROUPING(SalesQuartes)=1 AND GROUPING(SalesYear)=0 THEN 'SubTotal'WHEN GROUPING(SalesQuartes)=1 AND GROUPING(SalesYear)=1
THEN 'Grand Total'ELSE CAST(SalesYear AS varchar(10))
END 
AS SalesYear,SalesQuartes,SUM(SalesTotal) AS SalesTotal FROM SalesList GROUP BY ROLLUP(SalesYear,SalesQuartes)
/*to replace the null values use case and cast with grouping and rollup extension*/

/*with and row number*/
/*select salesMonth,salesTotal ,row_number() over(order by newid()) as row_ from SalesList;*/
WITH SALES AS (SELECT SalesMonth,SalesTotal , ROW_NUMBER() OVER(ORDER BY NEWID())AS RowNumber FROM SalesList)
SELECT RowNumber ,SalesMonth,SUM(SalesTotal) AS SalesTotal FROM SALES GROUP BY ROLLUP(SalesMonth, RowNumber)

WITH CTE AS (
SELECT SalesMonth,SalesTotal , 
ROW_NUMBER() OVER(ORDER BY NEWID())
AS RowNumber FROM SalesList) 
SELECT  CASE WHEN GROUPING(RowNumber) =1 THEN 'SubTotal'
ELSE SalesMonth END AS SalesMonth,SUM(SalesTotal) AS SalesTotal 
FROM CTE 
GROUP BY ROLLUP(SalesMonth, RowNumber)



/*GROUPING SETS extension can create the same result set with only a single query.*/
SELECT  SalesQuartes,SalesMonth ,SUM(SalesTotal) AS SalesTotal FROM SalesList GROUP BY GROUPING SETS(SalesQuartes,SalesMonth);




