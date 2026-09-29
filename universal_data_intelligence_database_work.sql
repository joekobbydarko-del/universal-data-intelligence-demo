SELECT *
FROM records
WHERE document_id = 1;

SELECT *
FROM records
WHERE record_type = 'transaction';

SELECT *
FROM records
WHERE field_name = 'status';

SELECT *
FROM records
WHERE field_value = 'Completed';

SELECT *
FROM records
WHERE record_type = 'transaction'
  AND field_name = 'amount';

SELECT *
FROM records
ORDER BY id ASC;

SELECT *
FROM records
ORDER BY id DESC;

SELECT *
FROM records
ORDER BY field_name ASC;

SELECT *
FROM records
ORDER BY field_value ASC;

SELECT *
FROM records
WHERE record_type = 'transaction'
ORDER BY field_name ASC;

SELECT record_type, COUNT(*) AS total_records
FROM records
GROUP BY record_type;

SELECT field_name, COUNT(*) AS total_occurrences
FROM records
GROUP BY field_name
ORDER BY field_name;

SELECT field_name, COUNT(*) AS total_occurrences
FROM records
WHERE record_type = 'transaction'
GROUP BY field_name
ORDER BY field_name;

SELECT COUNT(*) AS total_records
FROM records;

SELECT record_type, COUNT(*) AS total_records
FROM records
GROUP BY record_type;

SELECT SUM(field_value::numeric) AS total_amount
FROM records
WHERE field_name = 'amount';

SELECT AVG(field_value::numeric) AS average_amount
FROM records
WHERE field_name = 'amount';

SELECT COUNT(*) AS completed_fields
FROM records
WHERE field_value = 'Completed';

SELECT *
FROM records
WHERE field_name = 'amount'
  AND field_value::numeric > 10000;

SELECT *
FROM records
WHERE field_name = 'amount'
  AND field_value::numeric < 20000;

SELECT *
FROM records
WHERE field_name = 'status'
  AND field_value = 'Completed';

SELECT *
FROM records
WHERE record_type = 'transaction'
  AND field_name = 'amount'
  AND field_value::numeric >= 12500;

SELECT *
FROM records
WHERE field_name = 'type'
  AND field_value = 'Deposit';