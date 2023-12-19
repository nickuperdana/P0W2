-- Latihan SQL


-- Tambah tabel
CREATE TABLE instructors (
	id SERIAL PRIMARY KEY,
	name varchar(50) NOT NULL,
	gender varchar
);

-- Tambah tabel bila belum ada
CREATE TABLE IF NOT EXISTS buddies(
	id SERIAL PRIMARY KEY, -- SERIAL sebagai angka yang nantinya akan autoincremented
	name varchar(50) NOT NULL, -- NOT NULL 
	gender varchar,
	instructor_id INT,
	FOREIGN KEY (instructor_id)
		REFERENCES instructors (id)
);

-- Edit, sisipkan kolom
ALTER TABLE instructors
ADD COLUMN age INT;

-- Hapus tabel
TRUNCATE TABLE buddies; -- tabel yang merupakan referensi dari tabel lain sebagai foreign key, dia tidak bisa truncate

TRUNCATE TABLE instructors CASCADE -- paksa truncate, kolom yang jadi foreign key di tabel lain valuenya akan terhapus

-- Sisipkan 1 line record ke dalam tabel
INSERT INTO instructors(name, gender, age) -- 
VALUES('ersapta', 'Male', NULL);

-- Sisipkan beberapa record per line
INSERT INTO instructors(name, gender, age) -- 
VALUES
	('Yuda', 'Male', 20),
	('Ayu', 'Female', 18),
	('Rafif', 'Male', 24),
	('Riki', 'Male', NULL);

-- Lihat semua kolom '*' pada tabel 'instructors'
SELECT *
FROM instructors;