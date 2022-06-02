SELECT *
FROM users AS u
INNER JOIN orders AS o
  ON o.user_id = u.id;
