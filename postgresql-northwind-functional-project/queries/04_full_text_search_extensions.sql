-- 1. Enable full-text search on product_name for 'chocolate'
SELECT product_name
FROM products
WHERE to_tsvector(product_name) @@ to_tsquery('chocolate');

-- 2. Find customers with similar names using pg_trgm extension
SELECT a.company_name, b.company_name,
       similarity(a.company_name, b.company_name) AS sim_score
FROM customers a
JOIN customers b ON a.customer_id <> b.customer_id
ORDER BY sim_score desc;

-- 3. Rank products by text match relevance for 'Tigers'
SELECT product_name,
       ts_rank_cd(to_tsvector(product_name), to_tsquery('Tigers')) AS rank
FROM products
WHERE to_tsvector(product_name) @@ to_tsquery('Tigers')
ORDER BY rank DESC;

-- 4. Create a column search using LIKE and ILIKE
SELECT product_name
FROM products
WHERE product_name ILIKE '%pepper%';

-- 5. Show Levenshtein distance between similar-sounding product names
SELECT a.product_name AS product_1, b.product_name AS product_2,
       levenshtein(a.product_name, b.product_name) AS distance
FROM products a
JOIN products b ON a.product_id < b.product_id
WHERE levenshtein(a.product_name, b.product_name) BETWEEN 1 AND 3;
