# Model Cars

The goal of this project is to analyze data from a sales records database for scale model cars and extract information for decision-making.
The questions to be answered for this project are as follows:
- Which products should be ordered more of or less of?
- How should marketing and communication strategies be tailored to customer behaviors?
- How much can be spent on acquiring new customers?

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

Matching marketing and communication strategies to customer behaviors involves categorizing customers: finding the VIP (very important person) customers and those who are less engaged. Therefore, some events could be organizee to drive loyalty for the VIPs and a campaign could be launched for the less engaged.

Profit from each customer is to be computed with the tables below to be used:

![image](https://user-images.githubusercontent.com/132544906/236284163-86e56daa-b374-46b4-93a0-342e03f7c02b.png)

 The next steps are calculating profit per customer and defining priority products for restocking. It gives information that classic cars are the priority for restocking. They sell frequently, and they are the highest-performance products.
 
 ![image](https://user-images.githubusercontent.com/132544906/236609386-4d0212b2-470e-4958-a5f2-8ed998eed5f1.png)
 
 Defining VIP and less engaged customers is the next step and the information is presented in the tables below.
 
 **VIP Customers**
 
 ![image](https://user-images.githubusercontent.com/132544906/236609922-a30be3e1-e522-4cf3-b7a6-aa1c37ae8f32.png)

**Less Engaged Customers**

![image](https://user-images.githubusercontent.com/132544906/236609943-74743bf8-8f44-49e0-9e9e-3ede606b0a2a.png)
 
 To determine how much money can be spent on acquiring new customers, the Customer Lifetime Value (LTV) is to be computed. It represents the average amount of money a customer generates. After that the amount of money to be spent on marketing could be determined as well as how to drive loyalty and attract more customers.
 
 ![image](https://user-images.githubusercontent.com/132544906/236610098-630f29c1-f564-431d-8295-eb0de4036823.png)

 

