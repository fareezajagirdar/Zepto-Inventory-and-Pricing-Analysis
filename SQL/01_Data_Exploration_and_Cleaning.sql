-- ==========================================
-- PROJECT: Zepto Inventory & Pricing Analysis
-- PHASE 1: DATA EXPLORATION & DATA QUALITY
-- ==========================================

USE zepto_analysis;

-- 1. Check total number of records
SELECT COUNT(*) AS total_records
FROM zepto_v2;

-- 2. Preview the dataset
SELECT *
FROM zepto_v2
LIMIT 10;

-- 3. Check for NULL values
SELECT *
FROM zepto_v2
WHERE name IS NULL
   OR Category IS NULL
   OR mrp IS NULL
   OR discountPercent IS NULL
   OR availableQuantity IS NULL
   OR discountedSellingPrice IS NULL;

-- 4. Identify products with zero pricing
SELECT *
FROM zepto_v2
WHERE mrp = 0 OR discountedSellingPrice = 0;

-- 5. Check repeated product names
SELECT name, COUNT(*) AS duplicate_count
FROM zepto_v2
GROUP BY name
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC;

-- 6. Check products with zero available quantity
SELECT COUNT(*) AS zero_quantity_products
FROM zepto_v2
WHERE availableQuantity = 0;

-- 7. Check out-of-stock flag distribution
SELECT outOfStock, COUNT(*) AS record_count
FROM zepto_v2
GROUP BY outOfStock;

-- 8. Verify stock quantity and out-of-stock flag
SELECT outOfStock, availableQuantity, COUNT(*) AS record_count
FROM zepto_v2
GROUP BY outOfStock, availableQuantity
ORDER BY outOfStock, availableQuantity;