-- 1. List all tables and columns with data types
SELECT  table_name, column_name, data_type,table_schema
FROM information_schema.columns
WHERE table_schema = 'public'
ORDER BY table_name, column_name ASC;

-- 2. Show which columns are arrays or user-defined types
SELECT column_name, data_type
FROM information_schema.columns
WHERE data_type IN ('ARRAY', 'USER-DEFINED')
ORDER BY column_name ASC;

-- 3. Identify columns with numeric types across all tables
SELECT table_name, column_name, data_type
FROM information_schema.columns
WHERE data_type LIKE '%int%' OR data_type LIKE '%numeric%'
ORDER BY column_name ASC;

-- 4. List nullable vs not-null columns
SELECT table_name, column_name, is_nullable
FROM information_schema.columns
WHERE table_schema = 'public'
ORDER BY table_name, column_name ASC;

-- 5. Detect columns with default values
SELECT table_name, column_name, column_default
FROM information_schema.columns
ORDER BY table_name, column_name ASC;