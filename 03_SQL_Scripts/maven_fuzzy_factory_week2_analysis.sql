-- Maven Fuzzy Factory - SQL Analysis
-- Author: Daniel Thomas

-- 1. Total unique orders
SELECT COUNT(DISTINCT order_id) AS total_unique_orders FROM orders;

-- 2. Total revenue
SELECT SUM(price_usd) AS total_revenue FROM order_items;

-- 3. Top 5 products by revenue
SELECT p.product_name, SUM(oi.price_usd) AS revenue
FROM order_items oi JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name ORDER BY revenue DESC LIMIT 5;

-- 4. Total refunds
SELECT COUNT(*) AS total_refunds, SUM(refund_amount_usd) AS refund_value FROM order_item_refunds;

-- 5. Marketing sources
SELECT utm_source, COUNT(website_session_id) AS sessions FROM website_sessions GROUP BY utm_source ORDER BY sessions DESC;

-- 6. Device types
SELECT device_type, COUNT(website_session_id) AS sessions FROM website_sessions GROUP BY device_type;

-- 7. Conversion Rate
SELECT ROUND(COUNT(DISTINCT o.order_id) * 100.0 / COUNT(DISTINCT ws.website_session_id), 2) AS conversion_rate FROM website_sessions ws LEFT JOIN orders o ON ws.website_session_id = o.website_session_id;

-- 8. Highest/Lowest Months
SELECT TO_CHAR(created_at, 'YYYY-MM') AS month, SUM(price_usd) AS revenue FROM order_items GROUP BY month ORDER BY revenue DESC;

-- 9. Average Order Value
SELECT ROUND(SUM(price_usd) / COUNT(DISTINCT order_id), 2) AS aov FROM order_items;
