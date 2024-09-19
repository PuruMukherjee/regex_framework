USE [sql_wkday_20240228]
--- Common Table Expression (CTE)

-- Fetch the employees who earn the maximum salaries
-- in their respective departments?

SELECT employee_dept, MAX(salary) AS max_sal
FROM
employees
GROUP BY employee_dept

SELECT * FROM employees ORDER BY employee_dept;

-- This is the solution to the above problem
SELECT
	emp.*
FROM
(
SELECT employee_dept, MAX(salary) AS max_sal
FROM
employees
GROUP BY employee_dept
) AS dept_max_sal
INNER JOIN
employees AS emp
ON
dept_max_sal.employee_dept = emp.employee_dept
AND
dept_max_sal.max_sal = emp.salary


-- This is a query
-- THE output of the subquery is treated like a table
-- for SQL that table is called emp_max_sal
SELECT *
FROM
(
SELECT employee_dept, MAX(salary) AS max_sal
FROM
employees
GROUP BY employee_dept
) AS emp_max_sal
ORDER BY emp_max_sal.max_sal DESC


-- I am going to conver this query into a CTE
-- This is the solution to the above problem
SELECT
	emp.*
FROM
(
SELECT employee_dept, MAX(salary) AS max_sal
FROM
employees
GROUP BY employee_dept
) AS dept_max_sal
INNER JOIN
employees AS emp
ON
dept_max_sal.employee_dept = emp.employee_dept
AND
dept_max_sal.max_sal = emp.salary

-- STEP 1 >> Create the common table
-- batch the codes that are going to get executed
WITH
	dept_max_sal
	AS
	(
		SELECT employee_dept, MAX(salary) AS max_sal
		FROM
			employees
		GROUP BY 
			employee_dept
	)

--SELECT * FROM dept_max_sal; -- The common table expression is only alive
							-- till the first select statement
---- at this point in executed the CTE does not exists any more ----
SELECT * 
FROM
	dept_max_sal
INNER JOIN
	employees
ON
	dept_max_sal.employee_dept = employees.employee_dept
AND
	dept_max_sal.max_sal = employees.salary;

--- Find all the employees who get the min salary in their respective departments?
WITH
	dept_min_sal
	AS
	(
		SELECT employee_dept, MIN(salary) AS min_sal
		FROM
			employees
		GROUP BY 
			employee_dept
	)

SELECT employees.*
FROM
	dept_min_sal
INNER JOIN
	employees
ON
	dept_min_sal.employee_dept = employees.employee_dept
AND
	dept_min_sal.min_sal = employees.salary;

--- find all the employees who earn more than the average salary of their respective departments?

WITH
	dept_avg_sal
	AS
	(
		SELECT employee_dept, AVG(salary) AS avg_sal
		FROM
			employees
		GROUP BY 
			employee_dept
	)

SELECT employees.*
		,dept_avg_sal.avg_sal
FROM
	dept_avg_sal
INNER JOIN
	employees
ON
	dept_avg_sal.employee_dept = employees.employee_dept
AND
	dept_avg_sal.avg_sal < employees.salary;


--- any employees who gets lower than 80%  of the average salary
--- in their respective department is classified as Low SAL
--- any employees who get between 80 and 150% of the average salary is classified as Average SAL
--- any employee who gets above 150% of the average salary is High SAL

WITH
	dept_avg_salary
	AS
	(
		SELECT employee_dept,AVG(salary) AS avg_salary FROM employees
		GROUP BY employee_dept
	)


SELECT	employees.*
		,dept_avg_salary.avg_salary
		, 0.80 * dept_avg_salary.avg_salary AS avg_sal_80
		, 1.50 * dept_avg_salary.avg_salary AS avg_sal_150
		,CASE
			WHEN employees.salary < 0.80 * dept_avg_salary.avg_salary THEN 'Low Salary'
			WHEN employees.salary BETWEEN	
				0.80 * dept_avg_salary.avg_salary AND	
				1.50 * dept_avg_salary.avg_salary THEN 'Average Salary'
			ELSE
				'High Salary'
		END AS salary_class  -- this is the end of the CASE statement
FROM 
	dept_avg_salary --AS d_a -- the table alias is called d_a
INNER JOIN
	employees --AS e
ON
dept_avg_salary.employee_dept = employees.employee_dept


--- Divya code
WITH
	dept_avg_sal
	AS
	(
		SELECT employee_dept, AVG(salary) AS avg_sal
		FROM
			employees
		GROUP BY 
			employee_dept
	)



	WITH
	dept_avg_sal
	AS
	(
		SELECT employee_dept, AVG(salary) AS avg_sal
		FROM
			employees
		GROUP BY 
			employee_dept
	)

--SELECT * FROM dept_avg_sal;
-- Divya's code
WITH
	dept_avg_sal
	AS
	(
		SELECT employee_dept, AVG(salary) AS avg_sal
		FROM
			employees
		GROUP BY 
			employee_dept
	)

SELECT employees.*, 
CASE
 WHEN employees.salary < 0.8*(dept_avg_sal.avg_sal) THEN 'LOW_SAL'
 WHEN  employees.salary BETWEEN 0.8*(dept_avg_sal.avg_sal) AND 1.5*(dept_avg_sal.avg_sal) THEN 'AVG_SAL'
 ELSE 'HIGH SAL'
 END
FROM 
dept_avg_sal 
INNER JOIN 
employees
ON
dept_avg_sal.employee_dept=employees.employee_dept


--- UNION of all employees who get a salary lower 
--- than the average salary of their respective departments?
--- with all the employees who get a salary HIGHER than the average salary

WITH
	dept_avg_salary
	AS
	(
		SELECT employee_dept,AVG(salary) AS avg_salary FROM employees
		GROUP BY employee_dept
	)


SELECT	employees.*
		,dept_avg_salary.avg_salary
		, 'Low Salary' AS salary_class
FROM 
	dept_avg_salary 
INNER JOIN
	employees 
ON
dept_avg_salary.employee_dept = employees.employee_dept
AND
	employees.salary <= dept_avg_salary.avg_salary

UNION

SELECT	employees.*
		,dept_avg_salary.avg_salary
		, 'High Salary' AS salary_class
FROM 
	dept_avg_salary 
INNER JOIN
	employees 
ON
dept_avg_salary.employee_dept = employees.employee_dept
AND
	employees.salary > dept_avg_salary.avg_salary



WITH
	dept_avg_salary
	AS
	(
		SELECT employee_dept,AVG(salary) AS avg_salary FROM employees
		GROUP BY employee_dept
	),

--- THE second CTE does not need to begin with the WITH statement
 emp_class_tab
 AS
 (
SELECT	employees.*
		,dept_avg_salary.avg_salary
		, 'Low Salary' AS salary_class
FROM 
	dept_avg_salary 
INNER JOIN
	employees 
ON
dept_avg_salary.employee_dept = employees.employee_dept
AND
	employees.salary <= dept_avg_salary.avg_salary

UNION

SELECT	employees.*
		,dept_avg_salary.avg_salary
		, 'High Salary' AS salary_class
FROM 
	dept_avg_salary 
INNER JOIN
	employees 
ON
dept_avg_salary.employee_dept = employees.employee_dept
AND
	employees.salary > dept_avg_salary.avg_salary
)


---- GET ALL THE EMPLOYEES FROM THE SD DB DEPARTMENT WHO EARN MORE THAN THE AVERAGE SALARY
 -- OF THE SD DB DEPARTMENT
 -- No column name was specified for column 2 of 'dept_avg_sal'
 WITH
	dept_avg_sal
	AS
	(
		SELECT employee_dept, AVG(salary) AS avg_sal
		FROM
		employees
		GROUP BY employee_dept
	),

	db_emp_above_avg_sal -- This is the second common table expression
	AS
	(
	SELECT employees.*,
			dept_avg_sal.avg_sal
	FROM 
		dept_avg_sal
	INNER JOIN
		employees
	ON
	employees.employee_dept = dept_avg_sal.employee_dept
	AND
		employees.employee_dept = 'SD-DB'
	AND
	    employees.salary > dept_avg_sal.avg_sal
	)

	SELECT  * FROM db_emp_above_avg_sal
	ORDER BY salary DESC


--- question 
-- find a UNION of top 10 people whose salary is closest to the average  of the entire company
-- top 10 people whose salary is the farthest from the average of the entire company?

-- Column 'employees.employee_id' is invalid in the select list because it is not contained in either an 
-- aggregate function or the GROUP BY clause.
WITH
	emp_avg_sal_diff
AS
(
		SELECT *, 
		ABS(salary - 
			(SELECT AVG(salary) FROM employees)) AS salary_diff
		FROM
		employees
),

nearest_from_avg
AS
(
SELECT  TOP 10 *
,'Nearest' AS salary_classification
FROM 
emp_avg_sal_diff
ORDER BY salary_diff ASC
),

farthest_from_avg
AS
(
SELECT TOP 10 *
, 'Farthest' AS salary_class
FROM
emp_avg_sal_diff
ORDER BY salary_diff DESC
)

SELECT * FROM farthest_from_avg
UNION
SELECT * FROM nearest_from_avg
ORDER BY salary_diff

--- get the top 5 employee from each departments whose salaies are closest
--  or fartheset from the average salary

WITH
	avg_sal_dept
AS
(
	SELECT employee_dept, AVG(salary) AS avg_sal_dep
	FROM
	employees
	GROUP BY employee_dept
)

SELECT emp.*
	   ,a_dep.avg_sal_dep
	   ,ABS( emp.salary - a_dep.avg_sal_dep) AS salary_diff
FROM
	employees AS emp
INNER JOIN
	avg_sal_dept AS a_dep
ON
	emp.employee_dept = a_dep.employee_dept
ORDER BY 
	emp.employee_dept, salary_diff;




--USE A Common table expression to solve the below questions

SELECT * FROM CUSTOMERS

SELECT * FROM salesman

SELECT * FROM orders

SELECT * FROM discounts

--- Question <1> Find the total sales after discount for each year?
WITH orders_disc
AS
(
SELECT orders.*
		,orders.item_price * orders.quantity AS total_price_b_disc
		,DATEPART(YYYY, orders.purchase_date) AS purchase_year
		, COALESCE(discounts.disc_perc, 0.00) AS disc_perc
FROM		
orders
LEFT OUTER JOIN
	discounts
ON
	DATEPART(YYYY, orders.purchase_date) = discounts.disc_year
AND
	DATEPART(M, orders.purchase_date) = discounts.disc_month
)
,
order_price_a_discount -- Second common table expression
AS
(
SELECT *, 
	total_price_b_disc - (total_price_b_disc * disc_perc /100) AS price_a_disc
	FROM orders_disc 
)

SELECT purchase_year
		, SUM(price_a_disc) AS total_sales_a_disc
FROM order_price_a_discount
	GROUP BY purchase_year
ORDER BY purchase_year;


--- Question <2> Find the top 3 customer based on their total purchase after discount

WITH orders_disc_cus
AS
(
SELECT  
		customer_name
		,orders.*
		,orders.item_price * orders.quantity AS total_price_b_disc
		,YEAR(orders.purchase_date) AS purchase_year
		, COALESCE(discounts.disc_perc, 0.00) AS disc_perc
FROM		
orders
LEFT OUTER JOIN
	discounts
ON
	DATEPART(YYYY, orders.purchase_date) = discounts.disc_year
AND
	DATEPART(M, orders.purchase_date) = discounts.disc_month
INNER JOIN
	customers
ON
	orders.customer_id = customers.customer_id
)
,
order_price_a_discount -- Second common table expression
AS
(
SELECT *, 
	total_price_b_disc - (total_price_b_disc * disc_perc /100) AS price_a_disc
	FROM orders_disc_cus 
)

SELECT  TOP 2
		customer_id, customer_name
		, SUM(price_a_disc) AS total_sales_a_disc
FROM order_price_a_discount
	GROUP BY customer_id, customer_name
ORDER BY total_sales_a_disc DESC;

--- Debugging Pradeep's query
WITH orders_disc
AS
(
SELECT orders.*
		,orders.item_price * orders.quantity AS total_price_b_disc
		,DATEPART(YYYY, orders.purchase_date) AS purchase_year
		, COALESCE(discounts.disc_perc, 0.00) AS disc_perc
FROM		
orders
LEFT OUTER JOIN
	discounts
ON
	DATEPART(YYYY, orders.purchase_date) = discounts.disc_year
AND
	DATEPART(M, orders.purchase_date) = discounts.disc_month
)
,
order_price_a_discount -- Second common table expression
AS
(
SELECT *, 
	total_price_b_disc - (total_price_b_disc * disc_perc /100) AS price_a_disc
	FROM orders_disc 
)

SELECT TOP 2
		cus.customer_name
		,order_price_a_discount.customer_id
		, SUM(price_a_disc) AS total_sales_a_disc
FROM 
	order_price_a_discount
INNER JOIN
	customers AS cus
ON
	order_price_a_discount.customer_id = cus.customer_id
GROUP BY 
	cus.customer_name
		,order_price_a_discount.customer_id
ORDER BY
	total_sales_a_disc DESC

--- Question <3> Find the top 3 salesman based on the total sales after discount
WITH orders_disc_sales
AS
(
SELECT  
		salesman.sales_name
		,orders.*
		,orders.item_price * orders.quantity AS total_price_b_disc
		,YEAR(orders.purchase_date) AS purchase_year
		, COALESCE(discounts.disc_perc, 0.00) AS disc_perc
FROM		
orders
LEFT OUTER JOIN
	discounts
ON
	DATEPART(YYYY, orders.purchase_date) = discounts.disc_year
AND
	DATEPART(M, orders.purchase_date) = discounts.disc_month
INNER JOIN
	salesman
ON
	orders.salesman_id = salesman.sales_id
)
,
order_price_a_discount -- Second common table expression
AS
(
SELECT *, 
	total_price_b_disc - (total_price_b_disc * disc_perc /100) AS price_a_disc
	FROM orders_disc_sales 
)

SELECT  TOP 3
			salesman_id, sales_name
			,SUM(price_a_disc) AS total_sales_a_disc
FROM 
		order_price_a_discount
GROUP BY 
	salesman_id, sales_name
ORDER BY 
	total_sales_a_disc DESC;


--- Question <4> Find the top 3 salesman who did the most number of sales (count of sales)
WITH
	od_sm
AS
(
SELECT orders.order_id
		,salesman.sales_id
		,salesman.sales_name
FROM 
	orders
INNER JOIN
	salesman
ON
	orders.salesman_id = salesman.sales_id
)

SELECT TOP 3 sales_id, sales_name, COUNT(*) AS number_of_orders
FROM od_sm
GROUP BY sales_id, sales_name
ORDER BY
	number_of_orders DESC

-- Find all the salesman who did more than or equal to 20 sales
WITH
	od_sm
AS
(
SELECT orders.order_id
		,salesman.sales_id
		,salesman.sales_name
FROM 
	orders
INNER JOIN
	salesman
ON
	orders.salesman_id = salesman.sales_id
),

salesman_sales_count
AS
(
	SELECT sales_id, sales_name, COUNT(*) AS number_of_orders
	FROM od_sm
	GROUP BY sales_id, sales_name
)

SELECT * FROM salesman_sales_count
WHERE number_of_orders >= 20;


--- Question <5> Find the bottom 3 salesman who did the least number of sales
--- Question <4> Find the top 3 salesman who did the most number of sales (count of sales)
WITH
	od_sm
AS
(
SELECT orders.order_id
		,salesman.sales_id
		,salesman.sales_name
FROM 
	orders
INNER JOIN
	salesman
ON
	orders.salesman_id = salesman.sales_id
),

top_3
AS
(
SELECT TOP 3 sales_id, sales_name
, 'Highest number of sales' AS sales_description
, COUNT(*) AS number_of_orders
FROM od_sm
GROUP BY sales_id, sales_name
ORDER BY
	number_of_orders DESC
),

botton_3
AS
(
SELECT TOP 3 sales_id, sales_name
, 'Lowest number of sales' AS sales_description
,COUNT(*) AS number_of_orders
FROM od_sm
GROUP BY sales_id, sales_name
ORDER BY
	number_of_orders ASC
)

SELECT * FROM top_3
UNION ALL
SELECT * FROM botton_3

-- Debugging Divya's code
WITH
	od_sm
AS
(
SELECT orders.order_id
		,salesman.sales_id
		,salesman.sales_name
FROM 
	orders
INNER JOIN
	salesman
ON
	orders.salesman_id = salesman.sales_id
),
 
 top_3
 AS
 (
SELECT TOP 3 sales_id, sales_name
,'top 3' AS sales_desc
, COUNT(*) AS number_of_orders
FROM od_sm
GROUP BY sales_id, sales_name
ORDER BY
	number_of_orders DESC
	),

bottom_3
AS
(
SELECT TOP 3 sales_id, sales_name
,'bottom 3' AS sales_desc
, COUNT(*) AS number_of_orders
FROM od_sm
GROUP BY sales_id, sales_name
ORDER BY
	number_of_orders ASC
	)

SELECT * FROM
	top_3 
UNION
SELECT * FROM
	bottom_3
ORDER BY 
	number_of_orders DESC
SELECT ABS(-27272), ABS(37373)