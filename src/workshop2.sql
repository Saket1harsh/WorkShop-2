CREATE TABLE Customers (customer_id INT PRIMARY KEY,name VARCHAR(100),email VARCHAR(100));
INSERT INTO Customers (customer_id, name, email) VALUES (1, 'John Doe', 'john.doe@example.com'),
(2, 'Jane Smith', 'jane.smith@example.com'),(3, 'Alice Johnson', 'alice.johnson@example.com');
CREATE TABLE Orders (order_id INT PRIMARY KEY,customer_id INT,order_date DATE,total_amount DECIMAL(10, 2),FOREIGN KEY (customer_id) REFERENCES Customers(customer_id));
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES(1, 1, '2024-07-15', 150.75),
(2, 2, '2024-07-20', 200.50),(3, 3, '2024-08-01', 320.00);
CREATE TABLE Products (product_id INT PRIMARY KEY,product_name VARCHAR(100),price INT);
INSERT INTO Products (product_id, product_name, price) VALUES(1, 'Laptop', 75000),
(2, 'Smartphone', 30000),(3, 'Headphones', 5000);
CREATE TABLE Order_items (order_item_id INT PRIMARY KEY,order_id INT,product_id INT,quantity INT,FOREIGN KEY (order_id) REFERENCES Orders(order_id),FOREIGN KEY (product_id) REFERENCES Products(product_id));
INSERT INTO Order_items (order_item_id, order_id, product_id, quantity) VALUES(1, 1, 1, 2),
(2, 2, 2, 1),(3, 3, 3, 4);
CREATE TABLE Categories (category_id INT PRIMARY KEY,category_name VARCHAR(100));
INSERT INTO Categories (category_id, category_name) VALUES
(1, 'Electronics'),(2, 'Home Appliances'),(3, 'Books');
SELECT c.customer_id, c.name, c.email FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_date >= current_date -interval '30 days';
update Orders set order_date='2024-07-02' where order_date='2024-07-15'
select * from orders