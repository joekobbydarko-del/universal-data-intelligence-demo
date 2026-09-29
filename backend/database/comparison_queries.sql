-- Numeric comparison: greater than
SELECT *
FROM records
WHERE field_name = 'amount'
  AND field_value::numeric > 10000;

-- Numeric comparison: less than
SELECT *
FROM records
WHERE field_name = 'amount'
  AND field_value::numeric < 20000;

-- Text equality comparison
SELECT *
FROM records
WHERE field_name = 'status'
  AND field_value = 'Completed';

-- Comparison with multiple conditions
SELECT *
FROM records
WHERE record_type = 'transaction'
  AND field_name = 'amount'
  AND field_value::numeric >= 12500;

-- Text comparison
SELECT *
FROM records
WHERE field_name = 'type'
  AND field_value = 'Deposit';
