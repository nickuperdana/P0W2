-- buat user nicku_perdana dengan password 'qqqq'
CREATE USER nicku_perdana WITH PASSWORD 'qqqq';

-- memberikan akses 'SELECT' kepada tabel 'buddies' kepada nicku_perdana
GRANT SELECT ON buddies TO nicku_perdana;


-- Grant akses nicku_perdana untuk men-select seluruh tabel di schema public
GRANT SELECT ON ALL TABLES IN SCHEMA public TO nicku_perdana;


-- Grant akses nicku_perdana untuk melakukan apapun atas seluruh tabel di schema public
GRANT ALL ON ALL TABLES IN SCHEMA public TO nicku_perdana;

-- Grant akses nicku_perdana untuk melakukan apapun atas seluruh sequences di schema public
-- sequences adalah berkaitan dengan serial yang telah terecord di dalam tabel, karena tabel buddies ada nilai serial index auto bertambah
GRANT ALL ON ALL SEQUENCES IN SCHEMA public TO nicku_perdana;


-- ================================================================================

-- Setelah seluruhnya di-granted, baru bisa mengakses INSERT dan SELECT, karena sudah dapat ALL access di ALL Tables dan ALL Sequences

INSERT INTO buddies(name, gender, instructor_id)
	VALUES ('OGI', 'Male', 1)
	
SELECT *
FROM buddies;

SELECT *
FROM instructors;

-- ================================================================================

-- merevoke akses __(INSERT, SELECT)__ atas database __(buddies)__ milik user nicku_perdana
REVOKE INSERT, SELECT ON buddies FROM nicku_perdana;

-- ketika melakukan script line27-28, akan keluar pesan error karena akses untuk INSERT dan SELECT atas tabel 'buddies' telah di-revoke

-- tetapi, ketika melakukan script di line 30-31, akan masih berlaku karena INSERT dan SELECT masih berlaku untuk tabel ''

-- Melihat daftar user saat ini
SELECT current_user;

-- Melihat semua user saat ini
SELECT *
FROM pg_catalog.pg_user;

