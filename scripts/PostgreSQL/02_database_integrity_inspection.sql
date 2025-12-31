/* PROJECT 2: DATA INTEGRITY INSPECTION
   Goal: Verify successful import of all 6 tables and check the 'Bridge' seller count.
*/

-- SECTION 1: Global Row Counts
-- This confirms all tables are populated and gives us the scale of the data.
SELECT 'marketing_funnel' as table_name, COUNT(*) as row_count FROM marketing_funnel
UNION ALL
SELECT 'order_items', COUNT(*) FROM order_items
UNION ALL
SELECT 'sellers', COUNT(*) FROM sellers
UNION ALL
SELECT 'products', COUNT(*) FROM products
UNION ALL
SELECT 'category_translation', COUNT(*) FROM category_translation
UNION ALL
SELECT 'order_reviews', COUNT(*) FROM order_reviews
ORDER BY row_count DESC;

-- SECTION 2: The Bridge Validation
-- We must see exactly 380 rows where is_bridge_seller is TRUE.
SELECT 
    is_bridge_seller, 
    COUNT(*) as total_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM marketing_funnel), 2) as percentage_of_funnel
FROM marketing_funnel 
GROUP BY is_bridge_seller;

-- SECTION 3: Product Column Alignment Check
-- Specifically checking if the 10th column (English name) is correctly filled.
SELECT 
    product_id, 
    product_category_name, 
    product_category_name_english 
FROM products 
LIMIT 5;

-- SECTION 4: Marketing Origin Check
-- Ensures our Python 'fillna' for 'unknown' worked in the SQL environment.
SELECT 
    origin, 
    COUNT(*) as lead_count 
FROM marketing_funnel 
GROUP BY origin 
ORDER BY lead_count DESC 
LIMIT 5;