-- Write a function that returns the customers who have spent the most money on tickets.

-- The function should return a list of tuples containing (in order):
-- - the customer name
-- - the total amount spent on tickets


-- Only customers who have purchased at least one ticket should be included.

-- Results should be ordered by total amount spent, from highest to lowest, and limited to a specified number of rows (passed in by the argument `limit`)

SELECT customers.customer_name, SUM(tickets.price) AS total_price

FROM customers

JOIN tickets ON customers.customer_id = tickets.customer_id

GROUP BY customers.customer_name

ORDER BY total_price DESC, customers.customer_name

LIMIT ?
;
