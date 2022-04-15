CREATE TABLE products
(
    id             SERIAL PRIMARY KEY,
    productName    VARCHAR(30) NOT NULL,
    manufacturer   VARCHAR(20) NOT NULL,
    productCount   INTEGER DEFAULT 0,
    price          NUMERIC NOT NULL
);

DROP TABLE products;
INSERT INTO products (productName, manufacturer, productCount, price)
VALUES ('iPhone X', 'Apple', 2, 71000),
       ('iPhone 8', 'Apple', 3, 56000),
       ('Galaxy S9', 'Samsung', 6, 56000),
       ('Galaxy S8 Plus', 'Samsung', 2, 46000),
       ('Desire 12', 'HTC', 3, 26000);


-- 1. HTC компаниясынан башка компаниянын продуктуларын алыныз
SELECT * FROM products
WHERE manufacturer NOT IN ('HTC');


-- 2. Apple компаниясынын 75000минден томонку баадагы продуктуларын алыныз
SELECT * FROM products WHERE manufacturer = 'Apple' AND price < 75000;

-- 3. Баасы 46000 жана андан ойдоку продуктулардын баарын алыныз
SELECT * FROM products WHERE price > 46000;

-- 4. Эн кымбат эки продукту алыныз
SELECT * FROM products ORDER BY price desc limit 2;

-- 5. Баасы минимальный болгон продуктун атын алыныз
SELECT productName FROM products WHERE price = (SELECT min(price) FROM products);

-- 6. Дискоунт болгон продуктуларды чыгарыныз.
SELECT * FROM products WHERE ;

-- 8. Баардык продуктулардын баасын кымбаттан арзанга карап чыгарыныз
SELECT price FROM products ORDER BY price DESC;

-- 9. Баардык продуктулардын суммасын(баасын) чыгарыныз.
SELECT sum(price) as sum FROM products;

-- 10. Эки жана андан аз продуктусу бар компанияларды алыныз
SELECT manufacturer FROM products;

