-- 2.1
SELECT id, title, director FROM films WHERE director = 'Лана и Лилли Вачовски';
SELECT COUNT(*) FROM films WHERE director = 'Лана и Лилли Вачовски';
UPDATE films SET director = 'Лана Вачовски, Лилли Вачовски' WHERE id = 7 LIMIT 1;

-- 2.2
SELECT id, title, rating FROM films WHERE rating < 8.1;
SELECT COUNT(*) FROM films WHERE rating < 8.1;
UPDATE films SET rating = rating + 0.1 WHERE id IN (3, 5, 13) LIMIT 3;

-- 2.3
SELECT id, title, genre FROM films WHERE country = 'СССР' AND NOT FIND_IN_SET('приключения', genre);
SELECT COUNT(*) FROM films WHERE country = 'СССР' AND NOT FIND_IN_SET('приключения', genre);
UPDATE films SET genre = CONCAT(genre, ',приключения') WHERE id IN (1, 2) LIMIT 2;

-- 2.4
SELECT id, title, country FROM films WHERE title LIKE 'Гарри Поттер%';
SELECT COUNT(*) FROM films WHERE title LIKE 'Гарри Поттер%';
UPDATE films SET country = 'Великобритания, США' WHERE id = 10 LIMIT 1;

-- 2.5
SELECT id, title, duration, min_age FROM films WHERE duration > '02:50:00';
SELECT COUNT(*) FROM films WHERE duration > '02:50:00';
UPDATE films SET min_age = 16 WHERE id IN (4, 11) LIMIT 2;

-- 2.6
SELECT id, title FROM films WHERE title = 'Один дома';
SELECT COUNT(*) FROM films WHERE title = 'Один дома';
UPDATE films SET title = 'Один дома (Home Alone)' WHERE id = 9 LIMIT 1;