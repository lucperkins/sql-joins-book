DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS orders;

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
  (1, '{"item": "tickle_me_elmo"}'),
  (2, '{"item": "gi_joe_cobra"}'),
  (2, '{"item": "tickle_me_elmo"}'),
  (2, '{"item": "kid_sister"}'),
  (3, '{"item": "tonka_truck"}'),
  (3, '{"item": "my_buddy"}');
