--Customer Lifetime Value
WITH

profit_table as (
SELECT o.customerNumber, p.productName,
	   round(sum(quantityOrdered*(priceEach-buyPrice)), 1) as profit
  FROM orders o
  JOIN orderdetails od
    on o.orderNumber = od.orderNumber
  JOIN products p
    on od.productCode = p.productCode
 GROUP by o.customerNumber
 ORDER by profit DESC
 )
 
 SELECT round(avg(profit), 2) as LTV
   FROM profit_table;