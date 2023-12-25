-- customers
CREATE TABLE customers(
  customer_id int,
  name text
);

INSERT INTO customers VALUES
  (1, 'Surapong'),
  (2, 'Warot'),
  (3, 'Chalerm'),
  (4, 'Sukrit');

.mode box
SELECT * FROM customers;

-- orders = bridge table
CREATE TABLE orders(
    customer_id int,
    order_id int,
    amount int
  );

INSERT INTO orders values
  (1, 1, 2),
  (1, 2, 1),  
  (2, 2, 3),
  (3, 3, 5),
  (4, 2, 2),
  (4, 4, 2);

.mode box
SELECT * FROM orders;

-- menus
CREATE TABLE menus(
  order_id int,
  menu text,
  price int
);

INSERT INTO menus values
  (1, 'Pizza',     350),
  (2, 'Hamburger', 180),
  (3, 'Coke',       20),
  (4, 'Water',      10);

.mode box
SELECT * FROM menus;

-- JOIN 
SELECT 
  customers.name,
  menus.menu,
  menus.price,
  orders.amount,
  menus.price * orders.amount AS sum_menus
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
LEFT JOIN menus ON orders.order_id = menus.order_id
GROUP BY 1,2;

-- Aggregate Function
SELECT
  customers.name,
  SUM(menus.price * orders.amount) AS total
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
LEFT JOIN menus ON orders.order_id = menus.order_id
GROUP BY 1;

-- AVERAGE price
SELECT
  SUM(menus.price * orders.amount) / COUNT(DISTINCT customers.customer_id) AS average_price
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
LEFT JOIN menus ON orders.order_id = menus.order_id;

-- customers that spending more than average
SELECT
  customers.name,
  SUM(menus.price * orders.amount) AS total_spending,
  (SELECT SUM(menus.price * orders.amount)/ COUNT(distinct customers.customer_id)
  FROM customers
  LEFT JOIN orders ON customers.customer_id = orders.customer_id
  LEFT JOIN menus ON orders.order_id = menus.order_id) AS average_price
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
LEFT JOIN menus ON orders.order_id = menus.order_id
GROUP BY 1
HAVING total_spending > (
  SELECT
    SUM(menus.price * orders.amount)/ COUNT(distinct customers.customer_id)
  FROM customers
  LEFT JOIN orders ON customers.customer_id = orders.customer_id
  LEFT JOIN menus ON orders.order_id = menus.order_id
);
