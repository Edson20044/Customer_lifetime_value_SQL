--VIP customers
WITH

profit_table as (
SELECT o.customerNumber, p.productName,
	   round(sum(quantityOrdered*(priceEach-buyPrice)), 1) as profit
  FROM products p
  JOIN orderdetails od
    on od.productCode = p.productCode
  JOIN orders o
    on o.orderNumber = od.orderNumber
 GROUP by o.customerNumber
 ORDER by profit DESC
 )
 
 SELECT c.contactLastName, c.contactFirstName, c.city, c.country, pr.profit
   FROM customers c
   JOIN profit_table pr
     on c.customerNumber = pr.customerNumber
  ORDER by pr.profit 
  LIMIT 5;
 
