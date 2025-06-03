-- 1. Convert product names to uppercase
SELECT product_name, UPPER(product_name) AS upper_name FROM products;

-- 2. Identify if product contains the word 'Chang'
SELECT product_name, POSITION('Chang' IN product_name) > 0 AS has_chai
FROM products;

-- 3. Extract first word from product_name
SELECT product_name,
       SPLIT_PART(product_name, ' ', 1) AS first_word
FROM products;

-- 4. Replace 'Tea' with 'Drink' in product names
SELECT product_name,
       REPLACE(product_name, 'Tea', 'Drink') AS updated_name
FROM products
WHERE product_name LIKE ('%Tea%');
-- 5. Show padded category names
SELECT category_name,
       LPAD(category_name, 20, '*') AS padded_name
FROM categories;
