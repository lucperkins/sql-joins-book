SELECT
  u.username AS username,
  o.id AS order_id,
  o.item_id AS item_id
FROM users AS u
INNER JOIN orders AS o
  ON o.user_id = u.id;
