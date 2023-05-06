--Priority Products for Restocking
WITH

low_stock_products as (
	SELECT productCode, 
		   round(sum(quantityOrdered)*1.0/
		    (SELECT quantityInStock
		       FROM products p
			  WHERE od.productCode = p.productCode), 2) as low_stock
	 FROM orderdetails od
    GROUP by productCode
    ORDER by low_stock DESC
    LIMIT 10
)
SELECT productCode, 
	   sum(quantityOrdered*priceEach) as product_performance
  FROM orderdetails od
 WHERE productCode in (SELECT productCode
						 FROM low_stock_products)
 GROUP by productCode
 ORDER by product_performance DESC
 LIMIT 10; 	
