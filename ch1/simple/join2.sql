SELECT
  u.username,
  o.id AS order_id
FROM orders AS o
INNER JOIN users AS u
  ON o.user_id = u.id;
