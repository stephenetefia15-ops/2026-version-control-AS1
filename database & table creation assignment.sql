CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    brand VARCHAR(50),
    price NUMERIC(10, 2) NOT NULL,
    stock_quantity INTEGER NOT NULL,
    supplier VARCHAR(100),
    rating NUMERIC(2, 1),
    date_added DATE NOT NULL,
    is_active BOOLEAN DEFAULT TRUE
);

INSERT INTO products
(product_name, category, brand, price, stock_quantity, supplier, rating, date_added, is_active)
VALUES
('Galaxy A15 Smartphone', 'Electronics', 'Samsung', 185000.00, 25, 'Tech Distributors Ltd', 4.5, '2026-01-05', TRUE),
('iPhone 13', 'Electronics', 'Apple', 650000.00, 12, 'Apple Nigeria', 4.8, '2026-01-08', TRUE),
('Redmi Note 13', 'Electronics', 'Xiaomi', 245000.00, 30, 'Smart Gadgets Ltd', 4.4, '2026-01-12', TRUE),
('HP EliteBook 840', 'Computers', 'HP', 720000.00, 8, 'Computer Village Suppliers', 4.7, '2026-01-15', TRUE),
('Dell Latitude 7400', 'Computers', 'Dell', 580000.00, 10, 'PC World Nigeria', 4.6, '2026-01-18', TRUE),
('Lenovo ThinkPad E14', 'Computers', 'Lenovo', 610000.00, 7, 'Laptop Hub', 4.5, '2026-01-22', TRUE),
('Samsung 43 Inch Smart TV', 'Television', 'Samsung', 385000.00, 15, 'Tech Distributors Ltd', 4.3, '2026-02-02', TRUE),
('LG 55 Inch Smart TV', 'Television', 'LG', 520000.00, 9, 'LG Electronics Nigeria', 4.6, '2026-02-05', TRUE),
('Hisense 50 Inch TV', 'Television', 'Hisense', 410000.00, 11, 'Home Appliance Depot', 4.4, '2026-02-09', TRUE),
('Sony Bravia 55 Inch', 'Television', 'Sony', 680000.00, 6, 'Sony Nigeria', 4.8, '2026-02-12', TRUE),
('Samsung Galaxy Buds', 'Accessories', 'Samsung', 95000.00, 35, 'Tech Distributors Ltd', 4.2, '2026-02-15', TRUE),
('Apple AirPods Pro', 'Accessories', 'Apple', 280000.00, 18, 'Apple Nigeria', 4.7, '2026-02-18', TRUE),
('Oraimo FreePods 4', 'Accessories', 'Oraimo', 55000.00, 50, 'Oraimo Nigeria', 4.3, '2026-02-21', TRUE),
('JBL Bluetooth Speaker', 'Audio', 'JBL', 125000.00, 22, 'Sound World', 4.5, '2026-02-25', TRUE),
('Sony Wireless Headphones', 'Audio', 'Sony', 175000.00, 14, 'Sony Nigeria', 4.6, '2026-03-01', TRUE),
('Oraimo SoundBar', 'Audio', 'Oraimo', 85000.00, 28, 'Oraimo Nigeria', 4.1, '2026-03-04', TRUE),
('Logitech Wireless Mouse', 'Accessories', 'Logitech', 35000.00, 60, 'Computer Accessories Ltd', 4.2, '2026-03-07', TRUE),
('HP Wireless Keyboard', 'Accessories', 'HP', 45000.00, 40, 'Computer Accessories Ltd', 4.1, '2026-03-10', TRUE),
('Canon Pixma Printer', 'Printers', 'Canon', 185000.00, 13, 'Print Solutions Nigeria', 4.4, '2026-03-14', TRUE),
('HP LaserJet Printer', 'Printers', 'HP', 320000.00, 5, 'Print Solutions Nigeria', 4.5, '2026-03-17', TRUE),
('Epson EcoTank Printer', 'Printers', 'Epson', 295000.00, 8, 'Office Equipment Ltd', 4.6, '2026-03-20', TRUE),
('Samsung Microwave Oven', 'Appliances', 'Samsung', 165000.00, 16, 'Home Appliance Depot', 4.3, '2026-03-23', TRUE),
('LG Refrigerator', 'Appliances', 'LG', 550000.00, 4, 'LG Electronics Nigeria', 4.7, '2026-03-26', TRUE),
('Hisense Standing Fan', 'Appliances', 'Hisense', 95000.00, 25, 'Home Appliance Depot', 4.2, '2026-03-29', TRUE),
('Binatone Standing Fan', 'Appliances', 'Binatone', 78000.00, 32, 'Appliance World', 4.1, '2026-04-02', TRUE),
('Philips Electric Iron', 'Appliances', 'Philips', 65000.00, 20, 'Appliance World', 4.4, '2026-04-05', TRUE),
('Century Voltage Stabilizer', 'Appliances', 'Century', 85000.00, 17, 'Electrical Depot', 4.2, '2026-04-08', TRUE),
('Nike Running Shoes', 'Fashion', 'Nike', 145000.00, 20, 'Sports World', 4.6, '2026-04-12', TRUE),
('Adidas Training Shoes', 'Fashion', 'Adidas', 135000.00, 24, 'Sports World', 4.5, '2026-04-15', TRUE),
('Puma Casual Sneakers', 'Fashion', 'Puma', 115000.00, 18, 'Fashion Hub', 4.3, '2026-04-18', TRUE),
('Nike Sports T-Shirt', 'Fashion', 'Nike', 55000.00, 45, 'Sports World', 4.4, '2026-04-21', TRUE),
('Adidas Hoodie', 'Fashion', 'Adidas', 85000.00, 30, 'Fashion Hub', 4.6, '2026-04-24', TRUE),
('Samsung Tablet A9', 'Tablets', 'Samsung', 225000.00, 14, 'Tech Distributors Ltd', 4.5, '2026-04-28', TRUE),
('Apple iPad 10th Gen', 'Tablets', 'Apple', 620000.00, 7, 'Apple Nigeria', 4.8, '2026-05-02', TRUE),
('Lenovo Tab M10', 'Tablets', 'Lenovo', 195000.00, 16, 'Laptop Hub', 4.2, '2026-05-06', TRUE),
('Tecno Spark 30', 'Electronics', 'Tecno', 175000.00, 27, 'Tecno Mobile Nigeria', 4.4, '2026-05-10', TRUE),
('Infinix Note 40', 'Electronics', 'Infinix', 210000.00, 21, 'Infinix Nigeria', 4.5, '2026-05-14', TRUE),
('Google Pixel 8', 'Electronics', 'Google', 540000.00, 5, 'Smart Gadgets Ltd', 4.7, '2026-05-18', TRUE),
('Anker Power Bank', 'Accessories', 'Anker', 75000.00, 38, 'Gadget House', 4.6, '2026-05-22', TRUE),
('Oraimo Power Bank', 'Accessories', 'Oraimo', 45000.00, 55, 'Oraimo Nigeria', 4.3, '2026-05-26', TRUE),
('TP-Link WiFi Router', 'Networking', 'TP-Link', 65000.00, 33, 'Network Solutions Ltd', 4.4, '2026-05-30', TRUE),
('D-Link WiFi Router', 'Networking', 'D-Link', 58000.00, 29, 'Network Solutions Ltd', 4.2, '2026-06-03', TRUE),
('HP USB Flash Drive 128GB', 'Storage', 'HP', 28000.00, 70, 'Computer Accessories Ltd', 4.1, '2026-06-07', TRUE),
('SanDisk 256GB SSD', 'Storage', 'SanDisk', 95000.00, 19, 'Storage Solutions Ltd', 4.7, '2026-06-11', TRUE),
('Samsung 1TB SSD', 'Storage', 'Samsung', 125000.00, 11, 'Storage Solutions Ltd', 4.8, '2026-06-15', TRUE),
('Canon EOS Camera', 'Cameras', 'Canon', 850000.00, 3, 'Camera World Nigeria', 4.9, '2026-06-19', TRUE),
('Sony Alpha Camera', 'Cameras', 'Sony', 920000.00, 2, 'Sony Nigeria', 4.8, '2026-06-23', TRUE),
('JBL PartyBox Speaker', 'Audio', 'JBL', 450000.00, 4, 'Sound World', 4.9, '2026-06-27', TRUE),
('LG Soundbar', 'Audio', 'LG', 285000.00, 6, 'LG Electronics Nigeria', 4.5, '2026-07-01', TRUE),
('Samsung Washing Machine', 'Appliances', 'Samsung', 480000.00, 5, 'Home Appliance Depot', 4.6, '2026-07-05', TRUE),
('LG Washing Machine', 'Appliances', 'LG', 520000.00, 4, 'LG Electronics Nigeria', 4.7, '2026-07-09', TRUE),
('Hisense Air Conditioner', 'Appliances', 'Hisense', 650000.00, 3, 'Home Appliance Depot', 4.5, '2026-07-13', TRUE),
('Haier Thermocool AC', 'Appliances', 'Haier Thermocool', 590000.00, 6, 'Cooling Solutions Ltd', 4.4, '2026-07-17', TRUE),
('Tecno Camon 30', 'Electronics', 'Tecno', 230000.00, 19, 'Tecno Mobile Nigeria', 4.5, '2026-07-21', TRUE),
('Infinix Hot 50', 'Electronics', 'Infinix', 165000.00, 34, 'Infinix Nigeria', 4.3, '2026-07-25', TRUE),
('Samsung Galaxy S24', 'Electronics', 'Samsung', 850000.00, 6, 'Tech Distributors Ltd', 4.9, '2026-07-29', TRUE),
('iPhone 15', 'Electronics', 'Apple', 890000.00, 4, 'Apple Nigeria', 4.9, '2026-08-02', TRUE),
('MacBook Air M2', 'Computers', 'Apple', 1250000.00, 3, 'Apple Nigeria', 4.9, '2026-08-06', TRUE),
('Dell Inspiron 15', 'Computers', 'Dell', 650000.00, 9, 'PC World Nigeria', 4.4, '2026-08-10', TRUE),
('Lenovo IdeaPad 3', 'Computers', 'Lenovo', 480000.00, 12, 'Laptop Hub', 4.3, '2026-08-14', TRUE),
('Microsoft Surface Laptop', 'Computers', 'Microsoft', 980000.00, 4, 'Computer Village Suppliers', 4.7, '2026-08-18', TRUE),
('Xiaomi Smart Band 9', 'Wearables', 'Xiaomi', 65000.00, 31, 'Smart Gadgets Ltd', 4.4, '2026-08-22', TRUE),
('Apple Watch SE', 'Wearables', 'Apple', 420000.00, 8, 'Apple Nigeria', 4.7, '2026-08-26', TRUE),
('Samsung Galaxy Watch 6', 'Wearables', 'Samsung', 350000.00, 10, 'Tech Distributors Ltd', 4.6, '2026-08-30', TRUE),
('Oraimo Smart Watch', 'Wearables', 'Oraimo', 70000.00, 26, 'Oraimo Nigeria', 4.2, '2026-08-31', TRUE);

select * from products

-- Display all products
SELECT * FROM products;

-- Display only product names and prices
SELECT product_name, price
FROM products;

-- Find products that cost more than ₦500,000
SELECT *
FROM products
WHERE price > 500000;

-- Find Samsung products costing more than ₦300,000
SELECT *
FROM products
WHERE brand = 'Samsung'
AND price > 300000;

-- Find products from either Apple or Samsung
SELECT *
FROM products
WHERE brand = 'Apple'
OR brand = 'Samsung';

-- Display the most expensive products
SELECT *
FROM products
ORDER BY price DESC
LIMIT 10;

-- Find products whose names contain "Samsung"
SELECT *
FROM products
WHERE product_name ILIKE '%Samsung%';