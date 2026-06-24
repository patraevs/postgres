CREATE SCHEMA IF NOT EXISTS catalog;

CREATE TABLE IF NOT EXISTS catalog.product_categories (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS catalog.products (
    id SERIAL PRIMARY KEY,
    sku VARCHAR(30) UNIQUE,
    name TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category_id INT REFERENCES catalog.product_categories(id) ON DELETE NO ACTION ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS catalog.warehouses (
    id SERIAL PRIMARY KEY,
    city TEXT NOT NULL,
    address TEXT NOT NULL,
    label TEXT,
    is_central BOOLEAN NOT NULL
);