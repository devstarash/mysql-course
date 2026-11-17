-- 1.
SELECT id, UPPER(name) AS name FROM clients;
SELECT id, LOWER(name) AS name FROM clients;

-- 2.
SELECT CONCAT(lastname, ' ', name) AS full_name,
  CONCAT(LEFT(phone, 3), REPEAT('*', CHAR_LENGTH(TRIM(phone)) - 4),
  RIGHT(TRIM(phone), 1)) AS phone_number
FROM clients;

-- 3.
SELECT CONCAT(LEFT(name, 1), '. ', lastname) AS full_name
FROM clients
WHERE lastname LIKE '%tt%' OR lastname LIKE '%ss%' OR lastname LIKE '%ll%';

-- 4.а)
SELECT * FROM clients WHERE phone LIKE '586%';
SELECT * FROM clients WHERE LEFT(phone, 3) = '586';
SELECT * FROM clients WHERE SUBSTRING(phone, 1, 3) = '586';
SELECT * FROM clients WHERE SUBSTR(phone, 1, 3) = '586';
SELECT * FROM clients WHERE MID(phone, 1, 3) = '586';
SELECT * FROM clients WHERE POSITION('586' IN phone) = 1;
SELECT * FROM clients WHERE LOCATE('586', phone) = 1;
SELECT * FROM clients WHERE INSTR(phone, '586') = 1;

-- 4.б)
SELECT * FROM clients WHERE phone LIKE '%657%';
SELECT * FROM clients WHERE POSITION('657' IN phone) > 0;
SELECT * FROM clients WHERE LOCATE('657', phone) > 0;
SELECT * FROM clients WHERE INSTR(phone, '657') > 0;

-- 4.в)
SELECT * FROM clients WHERE phone LIKE '%707';
SELECT * FROM clients WHERE RIGHT(TRIM(phone), 3) = '707';
SELECT * FROM clients WHERE SUBSTRING(TRIM(phone), -3) = '707';
SELECT * FROM clients WHERE SUBSTRING(TRIM(phone) FROM -3) = '707';
SELECT * FROM clients WHERE SUBSTR(TRIM(phone), -3) = '707';
SELECT * FROM clients
WHERE MID(TRIM(phone), CHAR_LENGTH(TRIM(phone)) - 2, 3) = '707';
