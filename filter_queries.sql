-- Filter by document
SELECT *
FROM records
WHERE document_id = 1;

-- Filter by record type
SELECT *
FROM records
WHERE record_type = 'transaction';

-- Filter by field name
SELECT *
FROM records
WHERE field_name = 'status';

-- Filter by field value
SELECT *
FROM records
WHERE field_value = 'Completed';

-- Filter using multiple conditions
SELECT *
FROM records
WHERE record_type = 'transaction'
  AND field_name = 'amount';
