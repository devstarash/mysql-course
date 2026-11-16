-- Задача 21.
CREATE TABLE students (
    id INT NOT NULL PRIMARY KEY,
    full_name VARCHAR(150) NOT NULL,
    specialty_code VARCHAR(10) NOT NULL,
    specialty_name VARCHAR(150) NOT NULL
);

INSERT INTO students (id, full_name, specialty_code, specialty_name)
VALUES
    (1, 'Иванов Иван Сергеевич', '09.03.01', 'Информатика и вычислительная техника'),
    (2, 'Петрова Анна Олеговна', '09.03.02', 'Информационные системы и технологии'),
    (3, 'Сидоров Максим Андреевич', '09.03.03', 'Прикладная информатика'),
    (4, 'Кузнецова Мария Игоревна', '09.03.04', 'Программная инженерия'),
    (5, 'Смирнов Артём Павлович', '38.03.01', 'Экономика'),
    (6, 'Волкова Елена Дмитриевна', '09.03.01', 'Информатика и вычислительная техника'),
    (7, 'Попов Дмитрий Алексеевич', '09.03.02', 'Информационные системы и технологии'),
    (8, 'Соколова Ольга Викторовна', '09.03.03', 'Прикладная информатика'),
    (9, 'Михайлов Никита Романович', '09.03.04', 'Программная инженерия'),
    (10, 'Новикова Алиса Денисовна', '38.03.01', 'Экономика'),
    (11, 'Фёдоров Егор Владимирович', '09.03.01', 'Информатика и вычислительная техника'),
    (12, 'Морозова Полина Евгеньевна', '09.03.02', 'Информационные системы и технологии'),
    (13, 'Лебедев Кирилл Ильич', '09.03.03', 'Прикладная информатика'),
    (14, 'Козлова Софья Михайловна', '09.03.04', 'Программная инженерия'),
    (15, 'Павлов Андрей Николаевич', '38.03.01', 'Экономика');

CREATE TABLE specialty (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    specialty_code VARCHAR(10) NOT NULL UNIQUE,
    specialty_name VARCHAR(150) NOT NULL
);

INSERT INTO specialty (specialty_code, specialty_name)
SELECT DISTINCT specialty_code, specialty_name
FROM students;

ALTER TABLE students
    ADD COLUMN specialty_code_new INT,
    ADD FOREIGN KEY (specialty_code_new) REFERENCES specialty (id);

UPDATE students AS s
JOIN specialty AS sp ON sp.specialty_code = s.specialty_code
SET s.specialty_code_new = sp.id;

ALTER TABLE students
    DROP COLUMN specialty_code,
    DROP COLUMN specialty_name;

ALTER TABLE students
    CHANGE COLUMN specialty_code_new specialty_code INT NOT NULL;

-- До нормализации код и название специальности повторялись у каждого студента.
-- Теперь код и название хранятся в одной строке справочника, а студенты ссылаются на неё по ID.
