-- Sort by ID ascending
SELECT *
FROM records
ORDER BY id ASC;

-- Sort by ID descending
SELECT *
FROM records
ORDER BY id DESC;

-- Sort by field name
SELECT *
FROM records
ORDER BY field_name ASC;

-- Sort by field value
SELECT *
FROM records
ORDER BY field_value ASC;

-- Sort filtered transaction records by field name
SELECT *
FROM records
WHERE record_type = 'transaction'
ORDER BY field_name ASC;
