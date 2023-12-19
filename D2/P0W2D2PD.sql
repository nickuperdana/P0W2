BEGIN; -- transaksi sedang dimulai, tandanya tombol commit dan rollback sedang aktif

SELECT *
FROM instructors;

INSERT INTO instructors(name, gender, age)
VALUES ('Samuel', 'Male', NULL); -- ini cuma berlaku di dalam transaksi ini

-- Buat savepoint
SAVEPOINT insert_samuel_to_instructors;  -- perlunya di mana

INSERT INTO instructors(name, gender, age)
VALUES ('Bita', NULL, 22); -- ini cuma berlaku di dalam transaksi ini

-- batalkan script untuk 'Bita'
ROLLBACK to  insert_samuel_to_instructors;

SELECT *
FROM instructors;

-- Terjadi kesalahan input
INSERT INTO instructors(name, gender, age)
VALUES (NULL, NULL, 22); -- ini cuma berlaku di dalam transaksi ini

-- Eror menyebabkan transaksi tidak bisa berjalan
INSERT INTO instructors(name, gender, age)
VALUES ('Bita', NULL, 22); -- ini cuma berlaku di dalam transaksi ini

-- Kembalikan ke Savepoint
ROLLBACK TO insert_samuel_to_instructors;

INSERT INTO instructors(name, gender, age)
VALUES ('Bitha', 'Female', 25); -- ini cuma berlaku di dalam transaksi ini

-- Membatalkan seluruh transaksi, akhir dari transaksi
ROLLBACK;
-- COMMIT; setujui seluruh transaksi
-- ROLLBACK; batalkan seluruh transaksi

SELECT *
FROM instructors;