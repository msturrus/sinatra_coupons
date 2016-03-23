CREATE DATABASE sinatra_coupon;
\c sinatra_coupon
CREATE TABLE accounts (id SERIAL PRIMARY KEY, name VARCHAR(255), email VARCHAR(255), password_hash VARCHAR(255));
CREATE TABLE coupons (id SERIAL PRIMARY KEY, title VARCHAR(255), description VARCHAR(255), discount_price DECIMAL, expiration_date VARCHAR(255));
