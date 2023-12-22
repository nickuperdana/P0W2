SELECT * FROM teams;

SELECT * FROM players;

-- kesamaannya ada di school_name

SELECT * FROM players p
JOIN teams t ON p.school_name = t.school_name;


SELECT p.player_name, p.school_name, t.conference FROM players p 
JOIN teams t ON p.school_name = t.school_name;
-- kita pengen liat apa yang di tabel player yang direferensikan oleh tabel teams

-- ingin ngehitung orangnya COUNT, berdasarkan school_name GROUPBY
SELECT COUNT(p.player_name), p.school_name FROM players p 
JOIN teams t ON p.school_name = t.school_name
GROUP BY p.school_name;

-- ingin dikelompokkan juga berdasarkan conference
SELECT COUNT(p.player_name), p.school_name, t.conference FROM players p 
JOIN teams t ON p.school_name = t.school_name
GROUP BY p.school_name, t.conference;


SELECT COUNT(p.player_name), p.school_name, t.conference FROM players p 
JOIN teams t ON p.school_name = t.school_name
GROUP BY p.school_name, t.conference
ORDER BY school_name;

-- ini kan datanya seperti ini, ingin ditransform yang kolom year menjadi kolom atas conference
SELECT teams.conference AS conference,
       players.year,
       COUNT(1) AS players
  FROM players
  JOIN teams teams
    ON teams.school_name = players.school_name
 GROUP BY 1,2
 ORDER BY 1,2
 
-- Bikin tabep pivot conference x Tahun 
SELECT 
	conference,
	SUM(CASE WHEN year = 'FR' THEN players ELSE Null END),
	SUM(CASE WHEN year = 'SR' THEN players ELSE Null END),
	SUM(CASE WHEN year = 'JR' THEN players ELSE Null END),
	SUM(CASE WHEN year = 'SO' THEN players ELSE Null END)
FROM (
	SELECT
		teams.conference AS conference,
		players.year,
		COUNT(1) AS players
	FROM players players
	JOIN teams ON teams.school_name = players.school_name
	GROUP BY 1,2
	) subquery
GROUP By 1
	   
