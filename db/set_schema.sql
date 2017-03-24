DROP TABLE IF EXISTS cart, products, singleproductpics, users;

CREATE TABLE cart (
  id SERIAL PRIMARY KEY,
  name text
);

INSERT INTO cart (name) values
('test');
