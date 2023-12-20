-- tamplikan seluruh data dalam tabel actor
SELECT * FROM actor;

-- menjumlahkan rental id
SELECT SUM(rental_id) FROM payment;

-- menampilkan jumlah atas kolom rental_id ke dalam format float, jadi double position
SELECT CAST(SUM(rental_id) AS FLOAT) FROM payment;

-- tampilkan 3 huruf pertama dari data dalam kolom first_name
SELECT first_name, LEFT(first_name, 3) FROM actor;

-- tampilkan 3 huruf terakhir dari data dalam kolom first_name
SELECT first_name, RIGHT(first_name, 3) FROM actor;

-- ambil berapa kata di tengah-tengah karakter
-- SUBSTRING(kolom, mulai karakter ke-x, sampai karakter ke-y)
SELECT first_name, SUBSTRING(first_name, 3, 5) FROM actor;
SELECT first_name, SUBSTR(first_name, 3, 5) FROM actor; -- Sama aja syntax-nya

-- seperti fungsi print
SELECT 'Rp 100';

-- menampilkkan seluruh judul film yang memuat teks 'Ali'
SELECT * FROM film WHERE title ILIKE 'Ali%';

-- menampilkan kolom title tetapi dengan string 'Ali' yang terpotong
SELECT 
	TRIM(leading 'Ali' FROM title) AS film_format, description
FROM film
WHERE title ILIKE 'Ali%';

-- concatenation, menggabungkan data antar kolom maupun sisipan string/angka
SELECT 
	CONCAT(first_name, ' ', last_name) AS "Full Name"
FROM actor;

-- concatenation, menggabungkan data antar kolom maupun sisipan string/angka
SELECT 
	CONCAT(first_name, ' ', last_name, ' (', actor_id, ')') AS "Full Name"
FROM actor;

-- menampilkan data nama depan dan belakang aktor secara Uppercase
SELECT 
	UPPER(CONCAT(first_name, ' ', last_name, ' (', actor_id, ')')) AS "Full Name"
FROM actor;

-- menampilkan data nama depan dan belakang aktor secara lowercase
SELECT 
	UPPER(CONCAT(first_name, ' ', last_name, ' (', actor_id, ')')) AS "Full Name"
FROM actor;


-- menampilkan tabel pembayaran
SELECT * FROM payment;

-- menampilkan kolom payment_id dan payment_date dalam tabel payment
SELECT payment_id, payment_date FROM payment;

-- menampilkan data tanggal pembayaran secara Date Of Year
SELECT payment_id,
	EXTRACT(DOY FROM payment_date)
FROM payment;

-- mengekstrak full date menjadi per kolom per waktu
SELECT payment_id,
	EXTRACT(DAY FROM payment_date) AS day,
	EXTRACT(MONTH FROM payment_date) AS month,
	EXTRACT(YEAR FROM payment_date) AS year
FROM payment;

-- mendapatkan data payment yang diterima pada tanggal 15
SELECT * FROM payment WHERE EXTRACT(DAY FROM payment_date) = 15;

-- mendapatkan data payment yang diterima pada tanggal 15, 20, dan 25
SELECT * FROM payment WHERE EXTRACT(DAY FROM payment_date) IN (15, 20, 25);

-- menjumlahkan total pembayaran yang diterima pada tanggal 15, 20, dan 25 pada tabel payment
SELECT SUM(amount) FROM payment WHERE EXTRACT(DAY FROM payment_date) IN (15, 20, 25);

-- CASE : seakan-akan membuat kolom baru, tetapi tidak mengupdate database:
-- Study Case ketika ingin menampilkan tabel secara label view dengan label baru yang tidak mengubah value data dalam kolom
-- <note>: poerasi matematika tidak bisa dilakukan secara dinamis dalam satu skripl seperti ingin mengambil nilai persentil terendah, dan tertinggi
SELECT payment_id, amount FROM payment
WHERE EXTRACT(DAY FROM payment_date) = 1
LIMIT 6;

-- Kondisinya
-- <3 = rendah
-- 3 - 6 = sedang
-- >6 = tinggi

SELECT
	payment_id,
	amount,
	CASE
		WHEN amount < 3 THEN 'Low'
		WHEN amount >= 3 AND amount <= 6 THEN 'Medium'
		ELSE 'High'
	END
FROM payment
WHERE EXTRACT(DAY FROM payment_date) = 1
LIMIT 6;

-- SUBQUERY, nested query, ada query dalam kueri
-- case study: kita ingin tahu siapa saja yang mendapatkan nilai tertinggi.

-- cari data amount-nya dulu
SELECT * FROM payment;

SELECT amount FROM payment;

SELECT amount FROM payment ORDER BY amount DESC;

SELECT amount
FROM payment
ORDER BY amount DESC;

-- kalau pakai max, nilai yang muncul hanya ada satu, meski yang terinput ada beberapa yang memang menjadi nilai maksimum
SELECT MAX(amount) FROM payment;


-- script ini akan menampilkan amount dari paymount, yang mana record data dalam amount merupakan data maksimum atas amount
SELECT amount
FROM payment
WHERE amount = (SELECT MAX(amount) FROM payment)
ORDER BY amount DESC;

-- menampilkan ada berapa entry yang merupakan maksimal, maksimal dilihat dari select max amount dari payment
SELECT COUNT(amount)
FROM payment
WHERE amount = (SELECT MAX(amount) FROM payment);