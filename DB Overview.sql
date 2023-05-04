--Table Description
SELECT 'Customers' as table_name, 
		13 as number_of_attributes, 
		count(*) as number_of_rows
  FROM customers	
  
UNION ALL

SELECT 'Products' as table_name, 9 as number_of_attribues, count(*) as number_of_rows
  FROM products
  
UNION ALL
  
SELECT 'ProductLines' as table_name, 4 as number_of_attributes, count(*) as number_of_rows
  FROM productlines
  
UNION ALL 

SELECT 'Orders' as table_name, 7 as number_of_attributes, count(*) as number_of_rows
  FROM orders
  
UNION ALL

SELECT 'OrderDetails' as table_name, 5 as number_of_attributes, count(*) as number_of_rows
  FROM orderdetails
  
UNION ALL
  
SELECT 'Payments' as table_name, 4 as number_of_attributes, count(*) as  number_of_rows
  FROM payments

UNION ALL

SELECT 'Employees' as table_name, 8 as number_of_attributes, count(*) as number_of_rows
  FROM employees

UNION ALL
 
SELECT 'Offices' as table_name, 9 as number_of_attributes, count(*) as number_of_row
  FROM offices

