-- ==========================================
-- PROJECT: Zepto Inventory & Pricing Analysis
-- PHASE 2: BUSINESS ANALYSIS (12 QUERIES)
-- ==========================================

USE zepto_analysis;

-- 1. Top 10 products by MRP
SELECT name, Category, mrp
FROM zepto_v2
ORDER BY mrp DESC
LIMIT 10;

-- 2. Products with highest discount percentage
SELECT name, Category, mrp, discountPercent
FROM zepto_v2
ORDER BY discountPercent DESC
LIMIT 10;

-- 3. Top 10 products by discounted selling price
SELECT name, Category, mrp, discountedSellingPrice
FROM zepto_v2
ORDER BY discountedSellingPrice DESC
LIMIT 10;

-- 4. Number of product listings per category
SELECT Category, COUNT(*) AS product_count
FROM zepto_v2
GROUP BY Category
ORDER BY product_count DESC;

-- 5. Average discount percentage by category
SELECT Category, ROUND(AVG(discountPercent), 2) AS average_discount
FROM zepto_v2
GROUP BY Category
ORDER BY average_discount DESC;

-- 6. Total inventory quantity per category
SELECT Category, SUM(availableQuantity) AS total_inventory
FROM zepto_v2
GROUP BY Category
ORDER BY total_inventory DESC;

-- 7. Top 10 products by available quantity
SELECT name, Category, availableQuantity
FROM zepto_v2
ORDER BY availableQuantity DESC
LIMIT 10;

-- 8. Sample out-of-stock products
SELECT name, Category, availableQuantity, outOfStock
FROM zepto_v2
WHERE outOfStock = 'TRUE'
LIMIT 10;

-- 9. Out-of-stock count per category
SELECT Category, COUNT(*) AS out_of_stock_count
FROM zepto_v2
WHERE outOfStock = 'TRUE'
GROUP BY Category
ORDER BY out_of_stock_count DESC;

-- 10. Estimated inventory value by category
SELECT Category,
ROUND(SUM(discountedSellingPrice * availableQuantity) / 100, 2)
AS inventory_value
FROM zepto_v2
GROUP BY Category
ORDER BY inventory_value DESC;

-- 11. Products with the highest absolute discount amount
SELECT name, Category, mrp, discountedSellingPrice,
(mrp - discountedSellingPrice) AS discount_amount
FROM zepto_v2
ORDER BY discount_amount DESC
LIMIT 10;

-- 12. Top 10 heaviest products
SELECT name, Category, weightInGms
FROM zepto_v2
ORDER BY weightInGms DESC
LIMIT 10;