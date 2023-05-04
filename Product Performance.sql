--Product Performance
SELECT productCode, 
	   sum(quantityOrdered*priceEach) as product_performance
  FROM orderdetails od
 GROUP by productCode
 ORDER by product_performance DESC
 LIMIT 10;