-- create users table
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL UNIQUE,
  email VARCHAR(100) NOT NULL UNIQUE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
-- insert init data
INSERT INTO users (name, email)
VALUES ('alice', 'alice@test.com'),
  ('bob', 'bob@test.com'),
  ('charlie', 'charlie@test.com'),
  ('david', 'david@test.com'),
  ('eve', 'eve@test.com');