-- -- Create the students table
-- CREATE TABLE students (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(50),
--     age INTEGER,
--     campus_id INTEGER,
--     total_grade FLOAT
-- );

-- -- Insert data into the students table
-- INSERT INTO students (name, age, campus_id, total_grade)
-- VALUES
--     ('Rafif Iman', 20, 1, 85.5),
--     ('Hana Arisona', 21, 2, 90.2),
--     ('Raka Purnomo', 19, 1, 78.9),
--     ('Danu Irfansyah', 20, 3, 92.7),
--     ('Rachman Ardhi', 22, 2, 88.1);

-- -- Create the campus table
-- CREATE TABLE campus (
--     id SERIAL PRIMARY KEY,
--     campus_name VARCHAR(50),
--     batch VARCHAR(10),
--     start_date DATE
-- );

-- -- Insert data into the campus table
-- INSERT INTO campus (campus_name, batch, start_date)
-- VALUES
--     ('Remote', 'RMT-1', '2023-01-01'),
--     ('Jakarta', 'HCK-2', '2023-02-01'),
--     ('BSD', 'BSD-4', '2023-03-01'),
--     ('Surabaya', 'SUB-1', '2023-04-01'),
--     ('Singapore', 'SIN-1', '2023-05-01');

SELECT * FROM campus; 
SELECT * FROM students; -- kalau diselect dan run sama yang atas, dia akan running di query yang terakhir

SELECT * FROM students; -- * = semua kolom

SELECT name, total_grade FROM students; -- name merah karena ada syntax SQL yang kebetulan samaan sama nama kolom

-- kalau ga mau tampilannya bukan total_grade, tapi jadi grade
SELECT name, total_grade as grade FROM students;

SELECT name, age FROM students;

SELECT DISTINCT age FROM students; -- mengambil nilai yang unik dari data di kolom age

SELECT DISTINCT age, name FROM students; -- mengambil nilai yang unik atas kombinasi antara data age dan name

-- WHERE itu adalah kondisi jika (if) = < > <= >=
-- = sama dengan
-- > lebih dari
-- < kurang dari
-- != tidak sama dengan
-- <> tidak sama dengan
-- >= lebih dari atau sama dengan
-- <= kurang dari atau sama dengan
SELECT name, age FROM students WHERE age > 20;

-- kalau range >= 21 dan <= 22:
SELECT name, age FROM students WHERE age >= 21 AND age <= 22;
SELECT name, age FROM students WHERE age BETWEEN 21 AND 22;


-- "__" : nama tabel, nama kolom
-- '__' : menyatakan varchar, text, string

-- text = case sensitive, harus equal
Select * FROM students;

SELECT * FROM students WHERE name = 'Rafif Iman'; -- ada output

SELECT * FROM students WHERE name = 'Rafif IMAM'; -- tidak ada output

-- kalau mau menampilkan data dengan nama depannya aja
-- '__%' sebagai wildcard untuk menampilkan kelanjutan dari nama data
SELECT * FROM students WHERE name LIKE 'Ra%'; 

-- kalau mau cari data yang hurufnya ga masalah besar atau kecil:
SELECT * FROM students WHERE name ILIKE 'ra%';

-- cari data yang memuat karakter 'o' di tengah atau akhir dengan menyematkan di antara '%_%'
SELECT * FROM students WHERE name ILIKE '%o%';

-- cari orang yang memiliki huruf ke-3 nya adalah 'n' setelah itu bebas hurufnya apa:
SELECT * from students WHERE name ILIKE '__n%'

-- cari orang yang memiliki huruf ke-2 dari belakangnya adalah 'a' dengan huruf sebelumnya itu bebas
SELECT * FROM students WHERE name ILIKE '%a_';

-- menggabungkan sintaks pencarian dengan kondisi data yang ingin dicari juga adalah age > 20.
SELECT * FROM students WHERE name ILIKE '%o%' AND age > 20;

-- menggabungkan sintaks pencarian dengan kondisi data yang ingin dicari juga bisa '%o%' ataupun age > 20
SELECT * FROM students WHERE name ILIKE '%o%' OR age > 20;

-- cari data dengan kondisi yang tidak match dengan data yang punya kriteria '%o%'
SELECT * FROM students WHERE name NOT ILIKE '%o%';

-- cari data age ambil angka 20, 22 dan 19
SELECT * FROM students WHERE age = 20 OR age = 22 OR age = 19;
SELECT * FROM students WHERE age IN (20, 22, 19);

-- angka tidak pakai divider (10.000), tetapi ditulisnya jadi (10000)

-- cari data dengan kondisi yang match dengan data yang punya kriteria '%o%' dan '%a%'
SELECT * FROM students WHERE name ILIKE '%o%' AND name ILIKE '%a%';


-- aggregate function itu statistik deskriptif: jumlah, total, average, min sama max

-- hitung data total_grade itu berapa totalnya (kolom 1), ada berapa occurence-nya (kolom 2)
SELECT SUM(total_grade), COUNT(total_grade) FROM students;

-- by default, nama kolom akan sesuai dengan nama fungsinya (max, min, sum, count)
SELECT
	MAX(total_grade),
	MIN(total_grade),
	SUM(total_grade),
	COUNT(total_grade)
FROM students;

-- kalau mau menamakan kolom atas tabel yang mau kita sajikan:
SELECT
	MAX(total_grade) AS "Max Grade", -- nama kolom sesuai karena pakai "___"
	MIN(total_grade) AS "minGrade", -- nama kolom sesuai karena pakai "___"
	SUM(total_grade) AS AVERAGE, -- nama otomatis jadi lowercase oleh sistem
	COUNT(total_grade) AS Total -- nama otomatis jadi lowercase oleh sistem
FROM students;

-- nilai maksimum dan minimum dari setiap umur: nilai maksimum yang dikelompokkan dari setiap negara
-- tampilkan nilai maksimum dari setiap kampus:
SELECT age, total_grade FROM students;

SELECT MAX(total_grade) FROM students
GROUP BY age; -- XXXX kalau begini, dia gak akan bisa menampilkan pengelompokan usianya kalau ga diselect

-- dapatkan max dari total_grade, lalu kelompokkan berdasarkan nilai unique dari kolom GROUP BY
SELECT age, MAX(total_grade) FROM students
GROUP BY age;

-- HAVING bukan memfilter data, dia memfilter hasil agregat GROUP BY
-- SELECT __ WHERE
-- GROUP BY __ HAVING
SELECT age, MAX(total_grade) FROM students
GROUP BY age HAVING MAX(total_grade) > 80;


-- -- Insert data into the students table
INSERT INTO students (name, age, campus_id, total_grade)
VALUES
    ('Orang 1', 20, 1, 70),
    ('Orang 2', 21, 2, 80),
    ('Orang 3', 19, 1, 77),
    ('Orang 4', 20, 3, 70),
    ('Orang 5', 22, 2, 75)

-- Beda WHERE dan HAVING

-- WHERE: Memfilter data sebelum diagregat
SELECT age, COUNT(age), MAX(total_grade) FROM students
WHERE total_grade > 80
GROUP BY age

-- HAVING: Memfilter data hasil agregat yang dikelompokkan berdasarkan usia
SELECT age, COUNT(age), MAX(total_grade) FROM students
GROUP BY age
HAVING MAX(total_grade) > 80;



-- mengurutkan dengan ORDER
SELECT * FROM students
ORDER by age; -- default ascending

SELECT * FROM students
ORDER by age DESC; -- menjadi urutan descending

-- kalau mau diurutkan juga berdasarkan abjad (multilevel sorting: sort _ then sort _)

SELECT * FROM students
ORDER by age DESC, name ASC;

-- ganti nama tampilan 'max' jadi 'maximum'
SELECT age, COUNT(age), MAX(total_grade) AS maximum FROM students -- alias 'AS' ga bisa dipakai di WHERE
GROUP BY age
ORDER BY maximum

-- melimit output yang defaultnya berdasarkan id
SELECT * FROM students
LIMIT 5; -- limit tampilan tabel hanya 5 record berdasarkan id

-- melimit tampilan output berdasarkan age
SELECT * FROM students
ORDER BY age
LIMIT 5;


-- big query
-- di live code tidak ada join
-- di gc ada join

-- mau digabungkan dengna table campus

SELECT * FROM students -- 
JOIN campus ON campus_id = id; -- kesamaannya di id, tapi ambigu karena dua2nya ada id

SELECT * FROM students s -- kasih inisial untuk masing-masing tabel
JOIN campus c ON s.campus_id = c.id; -- ini bakal menampilkan gabungan semuanya
-- ini defaultnya adalah INNER JOIN, jadi 


-- tampilkan beberapa
SELECT 
	s.id,
	s.name,
	c.id AS id,
	c.campus_name
FROM students s -- kasih inisial untuk masing-masing tabel
JOIN campus c ON s.campus_id = c.id; -- ini bakal menampilkan gabungan semuanya


-- tampilkan yang kampusnya Jakarta dan Remote
SELECT 
	s.id,
	s.name,
-- 	c.id AS id,
	c.campus_name
FROM students s -- kasih inisial untuk masing-masing tabel
JOIN campus c ON s.campus_id = c.id -- ini bakal menampilkan gabungan semuanya
WHERE c.campus_name IN ('Jakarta', 'Remote')


INSERT INTO students (name, age, campus_id, total_grade)
VALUES
    ('Data Invalid', 20, NULL,  70);
	
SELECT * FROM students;


-- bisa kita paksakan untuk menggabungkan ke kanan tabel
SELECT 
	s.id,
	s.name,
-- 	c.id AS id,
	c.campus_name
FROM students s -- kasih inisial untuk masing-masing tabel
RIGHT JOIN campus c ON s.campus_id = c.id -- ini bakal menampilkan gabungan semuanya
WHERE c.campus_name IN ('Jakarta', 'Remote')


-- left join dan yang beririsan itu yang sering sering digunakan 
	
	
-- kalau ada Join di bawah join, maka tabel kiri adalah hasil dari join sebelumnya
	

-- cara COALESCE
-- campus_name akan menampilkan data null untuk 'Data Invalid' isian kolom nama
SELECT s.name, c.campus_name FROM students s -- c dan s adalah alias
LEFT JOIN campus c ON s.campus_id = c.id

-- gunakan fungsi COALESCE untuk melabeli data yang NULL dengan string kalau di sini 'Invalid'
SELECT s.name, COALESCE(c.campus_name, 'Invalid') FROM students s -- c dan s adalah alias
LEFT JOIN campus c ON s.campus_id = c.id

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	