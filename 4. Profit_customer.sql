--Reveniew by customer
SELECT o.customerNumber, p.productName,
	   round(sum(quantityOrdered*(priceEach-buyPrice)), 1) as profit
  FROM orders o
  JOIN orderdetails od
    on o.orderNumber = od.orderNumber
  JOIN products p
    on od.productCode = p.productCode
 GROUP by o.customerNumber
 ORDER by profit DESC;
