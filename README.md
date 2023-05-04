# Model Cars

The goal of this project is to analyze data from a sales records database for scale model cars and extract information for decision-making.
The questions to be answered for this project are as follows:
- Which products should we order more of or less of?
- How should we tailor marketing and communication strategies to customer behaviors?
- How much can we spend on acquiring new customers?

The scale model cars database schema is as follows.

![image](https://user-images.githubusercontent.com/132544906/236166626-9eecde73-b76f-4e43-91b9-7e52d989dfa9.png)

 
It contains eight tables:

- Customers: customer data
- Employees: all employee information
- Offices: sales office information
- Orders: customers' sales orders
- OrderDetails: sales order line for each sales order
- Payments: customers' payment records
- Products: a list of scale model cars
- ProductLines: a list of product line categories

**Choosing products to order**

Inventory reports include low stock(i.e. product in demand) and product performance. The low stock represents the quantity of the sum of each product ordered divided by the quantity of product in stock. The ten highest rates can be considered. These will be the top ten products that are almost out-of-stock or completely out-of-stock.

The product performance represents the sum of sales per product.

Priority products for restocking are those with high product performance that are on the brink of being out of stock.

The following two tables are used to perform the calculations below:

![image](https://user-images.githubusercontent.com/132544906/236175368-2d3c6d9d-1244-4545-9631-01e6164d6a32.png)

- **low stock** = SUM(quantityOrdered)/quantityInStock
- **product performance** = SUM(quantityOrdered × priceEach)
