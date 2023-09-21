

-- שאלה 1
SELECT * 
FROM employees

-- שאלה 3
SELECT first_name ,last_name ,country , city
FROM employees
WHERE country = 'USA' AND  city != 'Seattle'

-- שאלה 4
SELECT product_name,unit_price
FROM Products 
WHERE supplier_id = 2
ORDER BY unit_price DESC
LIMIT 3 ;

-- שאלה 7

SELECT category_name ,avg (unit_price) as avg_price
FROM categories
JOIN products 
ON products.category_id = categories.category_id
GROUP BY categories.category_name 
ORDER BY avg_price DESC
LIMIT 5 

-- שאלה 8
SELECT first_name ,last_name ,territories.territory_description
FROM employees
JOIN  employee_territories
ON employee_territories.employee_id = employees.employee_id
JOIN territories 
ON territories.territory_id = employee_territories.territory_id;

-- שאלת בונוס  שאלה 9
SELECT first_name ,last_name ,  count(order_id) as orders_per_employ
FROM employees
JOIN orders
ON orders.employee_id = employees.employee_id
GROUP BY employees.employee_id
HAVING count(order_id) > 100 
