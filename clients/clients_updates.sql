-- 1.1
SELECT id, name, lastname, dbirth FROM clients WHERE (name='Gary' AND lastname='Harrison') OR (name='Michael' AND lastname='Atwood') OR (name='Amy' AND lastname='Majors') OR (name='Katherine' AND lastname='Smith');
SELECT COUNT(*) FROM clients WHERE (name='Gary' AND lastname='Harrison') OR (name='Michael' AND lastname='Atwood') OR (name='Amy' AND lastname='Majors') OR (name='Katherine' AND lastname='Smith');
UPDATE clients SET dbirth = '1930-10-21' WHERE id = 782 LIMIT 1;
UPDATE clients SET dbirth = '1934-04-12' WHERE id = 297 LIMIT 1;
UPDATE clients SET dbirth = '1975-08-01' WHERE id = 240 LIMIT 1;
UPDATE clients SET dbirth = '1959-09-22' WHERE id = 306 LIMIT 1;

-- 1.2
SELECT id, name, lastname, dbirth, phone FROM clients WHERE dbirth < '1933-01-01';
SELECT COUNT(*) FROM clients WHERE dbirth < '1933-01-01';
UPDATE clients SET phone = NULL WHERE id IN (94,109,136,147,217,301,365,416,420,441,540,782,950) LIMIT 13;

-- 1.3
SELECT id, name, lastname, gender FROM clients WHERE name='John' AND lastname='Ohara';
SELECT COUNT(*) FROM clients WHERE name='John' AND lastname='Ohara';
UPDATE clients SET name = 'Johanna', gender = 'F' WHERE id = 570 LIMIT 1;

-- 1.4
SELECT id, name, lastname, phone FROM clients WHERE (name='Humberto' AND lastname='Hoosier') OR (name='Irene' AND lastname='Schreiber') OR (name='Donna' AND lastname='Wallace');
SELECT COUNT(*) FROM clients WHERE (name='Humberto' AND lastname='Hoosier') OR (name='Irene' AND lastname='Schreiber') OR (name='Donna' AND lastname='Wallace');
UPDATE clients SET phone = '1112233' WHERE id = 673 LIMIT 1;
UPDATE clients SET phone = '2223344' WHERE id = 447 LIMIT 1;
UPDATE clients SET phone = '3334455' WHERE id = 293 LIMIT 1;

-- 1.5
SELECT id, name, lastname FROM clients WHERE id IN (215, 340, 449, 470, 607);
SELECT COUNT(*) FROM clients WHERE id IN (215, 340, 449, 470, 607);
DELETE FROM clients WHERE id IN (215, 340, 449, 607) LIMIT 4;

-- 1.6
SELECT id, name, lastname, dbirth, gender FROM clients WHERE gender='M' AND (dbirth BETWEEN '1941-01-01' AND '1941-04-30' OR dbirth BETWEEN '1972-09-10' AND '1972-09-15');
SELECT COUNT(*) FROM clients WHERE gender='M' AND (dbirth BETWEEN '1941-01-01' AND '1941-04-30' OR dbirth BETWEEN '1972-09-10' AND '1972-09-15');
DELETE FROM clients WHERE id IN (383, 839) LIMIT 2;