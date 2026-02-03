-- Exercise : Query data sale that show us sales in store 3/4/5 that have price per kg > 11.000 IDR

select *
from Sales
where store_city_id IN(3,4,5) AND price_per_kg>11000

--- Exercise : Query data sales that show us transaction after 2nd May 2025
Select *
From sales
Where purchase_date > '2022-05-02'

--- Exercise : Query data sales that show us transaction of product_name 'Mangga' and 'Jeruk' in all store except stores 1/6/7
Select *
From sales where product_name IN ('Mangga','Jeruk')
AND NOT store_city_id IN(1,6,7)


--- Exercise : Query data sales that show us transaction of product_name 'Mangga' and 'Jeruk' in all store except stores 1/6/7
Select *
From sales where product_name IN ('Mangga','Jeruk')
AND NOT store_city_id IN(1,6,7)

--- Exercise : Employee data contain 10 column, consist of employee id, store city id, name , email, hired date and salary from last 3 years in separated column, Exercise : Query data Employee and their salary in 2021
select employee_id, store_city_id, first_name, last_name, email, department, hire_date, salary_2021
from employees

--- Exercise : Query data employee who works in stor 3,4,7 which have salary > 5000 on 2022
select store_city_id, first_name, last_name, salary_2022
from employees
where store_city_id IN (3,4,7)
	AND salary_2022 > 5000
	
--- Exercise : Query data sales quantity of product_name 'Mangga' and 'Apel' after for period 3 weeks after 1st May 2022
select product_name, SUM(quantity) AS Total_quantity
from sales
where purchase_date > '2022-05-01'
and purchase_date < '2022-05-22'
and product_name IN ('Mangga','Apel')
Group by product_name

--- Exercise : Query data all employees who work on region Bali and Yogyakarta (data employees and data region is separated table)--> usecase Left Join
SELECT employees.first_name, employees.last_name, region.region, region.store_city_id
FROM employees

--- Exercise : Query data all employees who work on region Bali and Yogyakarta (data employees and data region is separated table)--> usecase Subquery
SELECT first_name, 
		last_name,
		CASE WHEN store_city_id =2 THEN 'Yogyakarta'
		WHEN store_city_id=5 THEN 'Bali'
END AS region
FROM employees
WHERE store_city_id IN (SELECT store_city_id 
						from region 
						WHERE region IN ('Bali', 'Yogyakarta'))