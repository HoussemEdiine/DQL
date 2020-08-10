/* Display all the data of customers*/
SELECT  * FROM  customers
 
 /*  Display the product_name and category for products which their price is between 5000 and 10000 */
 SELECT product_name , category FROM Product  WHERE (Price>=5000 AND Price <= 10000)
/* selecting all products data ordering by price */
 SELECT * FROM Products ORDER BY Price DESC 
 /* total orders */
 SELECT COUNT(Product_id) FROM Orders
 /* avg amount */ 
 SELECT AVG(quantity) ,Product_id FROM Orders
 /* heighst total amount*/
 SELECT MAX(total_amount) , Product_id FROM Orders 
 /* lowest totaL  amount  */
 SELECT  MIN(total_amount) , Product_id FROM Orders
 /*Display the customer_id which has more than 2 orders */
 SELECT customer_id FROM Orders GROUP BY Customer_id  HAVING  COUNT(Product_id)<=2
/*  For each month of the 2020 year, display the number of orders */
SELECT COUNT(*) FROM Orders WHERE (OrderDate >='01-01-2020' and OrderDate<='31-12-2020')
/* For each order, display the product_name, the customer_name and the date of the order */
SELECT Procduct.product_name , Customer.customer_name, Orders.OrderDate FROM ((Orders INNER JOIN Customer ON Ordres.customer_id = Customer.customer_id)
 INNER JOIN Product ON Orders.Product_id= Product.Product_id
)
/*Display all the orders made three months ago  */
SELECT *
FROM   Orders
WHERE  DATEDIFF(MONTH, OrderDate, GETDATE()) <= 3    
/*Display customers (customer_id) who have never ordered a product */
SELECT  Customer.costumerID
FROM (Orders
INNER JOIN Customer ON Orders.CustomerID <> Customer.CustomerID);
