-- Group records by record type
SELECT record_type, COUNT(*) AS total_records
FROM records
GROUP BY record_type;

-- Group by field name
SELECT field_name, COUNT(*) AS total_occurrences
FROM records
GROUP BY field_name
ORDER BY field_name;

-- Group filtered transaction records
SELECT field_name, COUNT(*) AS total_occurrences
FROM records
WHERE record_type = 'transaction'
GROUP BY field_name
ORDER BY field_name;
