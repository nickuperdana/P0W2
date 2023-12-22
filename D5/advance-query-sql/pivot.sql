SELECT teams.conference AS conference,
      players.year,
      COUNT(1) AS players
FROM players
JOIN teams teams
  ON teams.school_name = players.school_name
GROUP BY 1,2
ORDER BY 1,2


SELECT *
FROM (
  SELECT teams.conference AS conference,
          players.year,
          COUNT(1) AS players
      FROM players players
  JOIN teams
        ON teams.school_name = players.school_name
      GROUP BY 1,2
) sub


SELECT conference,
      SUM(players) AS total_players,
      SUM(CASE WHEN year = 'FR' THEN players ELSE NULL END) AS fr,
      SUM(CASE WHEN year = 'SO' THEN players ELSE NULL END) AS so,
      SUM(CASE WHEN year = 'JR' THEN players ELSE NULL END) AS jr,
      SUM(CASE WHEN year = 'SR' THEN players ELSE NULL END) AS sr
FROM (
      SELECT teams.conference AS conference,
              players.year,
              COUNT(1) AS players
        FROM players
        JOIN teams
          ON teams.school_name = players.school_name
        GROUP BY 1,2
      ) sub
GROUP BY 1
ORDER BY 2 DESC