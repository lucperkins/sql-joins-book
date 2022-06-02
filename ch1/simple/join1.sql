SELECT *
FROM orders
INNER JOIN users
  ON orders.user_id = users.id;
