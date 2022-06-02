DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS orders;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT
);

CREATE TABLE items (
    id SERIAL PRIMARY KEY,
    data JSON NOT NULL
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    item_id INT NOT NULL
);

INSERT INTO users (username) VALUES
  ('alex'),
  ('billy'),
  ('corrie');

INSERT INTO items (data) VALUES
  ('{"name":"Tickle Me Elmo"}'),
  ('{"name":"GI Joe"}'),
  ('{"name":"Cabbage Patch Kid"}');

INSERT INTO orders (user_id, item_id) VALUES
  (1, 1),
  (1, 3),
  (2, 3),
  (3, 1),
  (3, 3);
