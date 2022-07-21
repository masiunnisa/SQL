-- Challenge:1 
-- Use a SELECT statement to get the first_name and last_name of all employees.
select first_name, last_name 
from employees;
 
-- Challenge:2
-- Use a SELECT statement to get the last_name and city of all customers. 
-- Alias the last_name to customer_last_name in the query.
select city, last_name as customer_last_name
from customers;

-- Challenge:3
-- Use a SELECT statement to select all columns from the oes.order_items table.
select * 
from order_items;

-- Challenge:4
-- Use a SELECT DISTINCT statement to get the distinct (i.e. unique) values that occur in the locality column 
-- from the bird.antarctic_populations table
select distinct locality
from bird.antarctic_populations;

-- Challenge:5
-- Use a SELECT DISTINCT statement to get the distinct combinations of values for both the locality and
-- species_id columns from the bird.antarctic_populations table.
select distinct locality, species_id
from bird.antarctic_populations;

-- Challenge:6
-- Write a query that returns all employees ordered alphabetically by their last name from A to Z.
select *
from employees
order by last_name asc;

-- Challenge:7
-- Write a query that returns all employees ordered by salary from highest to lowest.
select *
from employees
order by salary desc;

-- Challenge:8
-- Write a query to return all employees ordered by most recently hired to longest serving.
select *
from employees
order by hire_date desc;

-- Challenge:9
-- Write a query to return all employees ordered by department_id in ascending order and within each
-- department_id, order by salary from highest to lowest.
select *
from employees 
order by department_id asc, salary desc;

-- Challenge:10
-- Write a query to return the employee_id, first_name, last_name and salary for the top 10 employees who get
-- paid the most.
select employee_id, first_name, salary
from employees
order by salary desc
limit 10;

-- Challenge:11
-- Select products from the oes.products table which have a price greater than $100.
select * 
from products 
where price > $100;

-- Challenge:12
-- Select all orders from the oes.orders table which have not yet been shipped.
select *
from orders 
where shipped_date is null;

-- Challenge:13
-- Select all orders from the oes.orders table which were placed on the 26 th of February 2020.
select * 
from orders
where order_date = '2020-02-26';

-- Challenge:14
-- Select all orders from the oes.orders table which were placed on or after the 1 st of January 2020.
select *
from orders 
where order_date = '2020-01-01';

-- Challenge:15
-- Select countries from the hcm.countries table which start with the letter ‘N’.
select *
from countries 
where country_name like 'N%';

-- Challenge:16
-- Select customers from the oes.customers table who have a Gmail email address.
select *
from customers
where email like '%@gmail.com';

-- Challenge:17
-- Select product names from the oes.products table which contain the word ‘mouse’ anywhere within the product name.
select product_name 
from products
where product_name like '%mouse%';

-- Challenge:18
-- Write query to give the total number of employees in each department as given by the department_id column
-- in the hcm.employees table.
select department_id, count(*) as employee_count
from employees
group by department_id;

-- Challenge:19
-- Write a query to give the average salary in each department as given by the department_id column in the
-- hcm.employees table. Order the query result by average salary from highest to lowest.
select department_id, avg(salary) as average_salary
from employees
group by department_id
order by avg_salary desc;

-- Challenge:20
-- Select employees from the hcm.employees table who live in either Seattle or Sydney.
select *
from employees
where city = 'seattle' or 'sydney';

-- Challenge:21
-- Select employees who live in any of the following cities: - Seattle - Sydney - Ascot - Hillston
select *
from employees
where city in('seattle', 'sydney', 'ascot', 'hillston');

-- Challenge:22
-- Select employees from Sydney who have a salary greater than $200,000.
select * 
from employees 
where city = 'sydney' and salary > '$200,000.';

-- Challenge:23
-- Write a query to return the following attributes for employees who belong to a department:
-- (employee_id, first_name, last_name, salary, department_name)
select 
	e.employee_id,
    e.first_name,
    e.last_name,
    e.salary,
    d.department_name
from employees e inner join department d
on d.department_id = e.employee_id;
-- Using an INNER JOIN between the two tables as only employees who belong to a department are included

-- Challenge:24
-- Write a query to return the following attributes for all employees, including employees who do not belong 
-- to a department: (employee_id first_name last_name salary department_name)
select 
	e.employee_id,
    e.first_name,
    e.last_name,
    e.salary,
    d.department_name
from employees e left outer join department d
on d.department_id = e.employee_id;

