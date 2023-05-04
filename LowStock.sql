--Low Stock
SELECT productCode, 
		(SELECT productName
		   FROM products) as product_name,
		round(sum(quantityOrdered)*1.0/
		    (SELECT quantityInStock
		       FROM products p
			  WHERE od.productCode = p.productCode), 2) as low_stock
  FROM orderdetails od
 GROUP by productCode
 ORDER by low_stock DESC
 LIMIT 10; 