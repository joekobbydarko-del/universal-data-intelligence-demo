-- Count all records
SELECT COUNT(*) AS total_records
FROM records;

-- Count records by type
SELECT record_type, COUNT(*) AS total_records
FROM records
GROUP BY record_type;

-- Calculate total amount
SELECT SUM(field_value::numeric) AS total_amount
FROM records
WHERE field_name = 'amount';

-- Calculate average amount
SELECT AVG(field_value::numeric) AS average_amount
FROM records
WHERE field_name = 'amount';

-- Count completed fields
SELECT COUNT(*) AS completed_fields
FROM records
WHERE field_value = 'Completed';
