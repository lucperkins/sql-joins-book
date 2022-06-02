SELECT
  u.username,
  i.data->>'name' AS item_name
FROM users AS u
INNER JOIN orders AS o
  ON o.user_id = u.id
INNER JOIN items AS i
  ON i.id = o.item_id;
