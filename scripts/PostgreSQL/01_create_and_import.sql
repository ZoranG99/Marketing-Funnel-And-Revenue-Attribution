-- 0. Cleanup (Run this to avoid duplicate data)
DROP TABLE IF EXISTS marketing_funnel CASCADE;
DROP TABLE IF EXISTS order_items CASCADE;
DROP TABLE IF EXISTS sellers CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS category_translation CASCADE;
DROP TABLE IF EXISTS order_reviews CASCADE;

-- 1. Create Tables
CREATE TABLE IF NOT EXISTS marketing_funnel (
    mql_id VARCHAR(50) PRIMARY KEY,
    first_contact_date TIMESTAMP,
    landing_page_id VARCHAR(50),
    origin VARCHAR(50),
    seller_id VARCHAR(50),
    sdr_id VARCHAR(50),
    sr_id VARCHAR(50),
    won_date TIMESTAMP,
    business_segment VARCHAR(100),
    lead_type VARCHAR(50),
    lead_behaviour_profile VARCHAR(50),
    has_company BOOLEAN,
    has_gtin BOOLEAN,
    average_stock VARCHAR(50),
    business_type VARCHAR(50),
    declared_product_catalog_size FLOAT,
    declared_monthly_revenue FLOAT,
    is_bridge_seller BOOLEAN
);

CREATE TABLE IF NOT EXISTS order_items (
    order_id VARCHAR(50),
    order_item_id INT,
    product_id VARCHAR(50),
    seller_id VARCHAR(50),
    shipping_limit_date TIMESTAMP,
    price DECIMAL(10, 2),
    freight_value DECIMAL(10, 2),
    PRIMARY KEY (order_id, order_item_id)
);

CREATE TABLE IF NOT EXISTS sellers (
    seller_id VARCHAR(50) PRIMARY KEY,
    seller_zip_code_prefix INT,
    seller_city VARCHAR(100),
    seller_state VARCHAR(2)
);

CREATE TABLE products (
    product_id VARCHAR(50) PRIMARY KEY,
    product_category_name VARCHAR(100),
    product_name_lenght FLOAT,
    product_description_lenght FLOAT,
    product_photos_qty FLOAT,
    product_weight_g FLOAT,
    product_length_cm FLOAT,
    product_height_cm FLOAT,
    product_width_cm FLOAT,
    product_category_name_english VARCHAR(100) -- The 10th column that caused the error
);

CREATE TABLE IF NOT EXISTS category_translation (
    product_category_name VARCHAR(100) PRIMARY KEY,
    product_category_name_english VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS order_reviews (
    review_id VARCHAR(50),
    order_id VARCHAR(50),
    review_score INT,
    review_comment_title TEXT,
    review_comment_message TEXT,
    review_creation_date TIMESTAMP,
    review_answer_timestamp TIMESTAMP
); 
  
 
-- 2. Import Data
COPY marketing_funnel 
FROM 'D:/Data_Science/Projects/Portfolio_Projects/Marketing-Funnel-And-Revenue-Attribution/data/processed/cleaned_marketing_funnel.csv'
DELIMITER ',' CSV HEADER;

COPY order_items 
FROM 'D:/Data_Science/Projects/Portfolio_Projects/Marketing-Funnel-And-Revenue-Attribution/data/processed/Ecommerce-Logistics-And-Revenue-Optimization_processed/order_items.csv'
DELIMITER ',' CSV HEADER;

COPY sellers 
FROM 'D:/Data_Science/Projects/Portfolio_Projects/Marketing-Funnel-And-Revenue-Attribution/data/processed/Ecommerce-Logistics-And-Revenue-Optimization_processed/sellers.csv'
DELIMITER ',' CSV HEADER;

COPY products 
FROM 'D:/Data_Science/Projects/Portfolio_Projects/Marketing-Funnel-And-Revenue-Attribution/data/processed/Ecommerce-Logistics-And-Revenue-Optimization_processed/products.csv'
DELIMITER ',' CSV HEADER;

COPY category_translation 
FROM 'D:/Data_Science/Projects/Portfolio_Projects/Marketing-Funnel-And-Revenue-Attribution/data/processed/Ecommerce-Logistics-And-Revenue-Optimization_processed/category_translation.csv'
DELIMITER ',' CSV HEADER;

COPY order_reviews 
FROM 'D:/Data_Science/Projects/Portfolio_Projects/Marketing-Funnel-And-Revenue-Attribution/data/processed/Ecommerce-Logistics-And-Revenue-Optimization_processed/order_reviews.csv'
DELIMITER ',' CSV HEADER;