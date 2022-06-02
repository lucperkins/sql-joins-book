DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username TEXT NOT NULL
);

INSERT INTO users (username) VALUES
  ('alex'),
  ('billy'),
  ('corrie');

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  data JSON NOT NULL
);

INSERT INTO orders (user_id, data) VALUES
  (1, '{"item": "Tickle Me Elmo"}'),
  (2, '{"item": "GI Joe"}'),
  (3, '{"item": "Tonka Truck"}');
