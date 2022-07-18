-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INT NOT NULL,
  product_name VARCHAR(30) NOT NULL,
  product_price FLOAT NOT NULL,
  quantity INT NOT NULL
  );


-- Add 5 orders to the orders table.



-- Make orders for at least two different people.

-- person_id should be different for different people.
INSERT INTO orders(person_id, product_name, product_price, quantity)
	VALUES(1,'dress', 167.64, 5),
        (2,'stuffie', 172.72, 44),
        (3,'skirt', 160.02, 34),
        (4,'brooch', 162.56, 34),
        (5,'hat', 165.1, 36);

-- Select all the records from the orders table.

SELECT * FROM orders;

-- Calculate the total number of products ordered.

SELECT COUNT(*),SUM(quantity) FROM orders;

SELECT SUM(quantity) FROM orders;

-- Calculate the total order price.

SELECT SUM(product_price*quantity) FROM orders;

-- Calculate the total order price by a single person_id.

SELECT SUM(product_price*quantity) FROM orders
WHERE person_id = 1;
 