BEGIN;

CREATE TABLE players (
    full_school_name VARCHAR(255),
    school_name VARCHAR(255),
    player_name VARCHAR(255),
    position VARCHAR(255),
    height FLOAT,
    weight FLOAT,
    year VARCHAR(255),
    hometown VARCHAR(255),
    state VARCHAR(255),
    id INT PRIMARY KEY
);

CREATE TABLE teams (
    division VARCHAR(100),
    conference VARCHAR(100),
    school_name VARCHAR(100),
    roster_url VARCHAR(200),
    id INT PRIMARY KEY
);

COPY players(full_school_name,school_name,player_name,position,height,weight,year,hometown,state,id)
FROM 'c:\Users\nicku\Documents\FTDS-HCK-012\P0W2\D5\advance-query-sql\data\players.csv'
DELIMITER ','
CSV HEADER; -- ini wajib

COPY teams(division,conference,school_name,roster_url,id) -- sebaiknya nanti 'id' ini di database jadi serial dan tidak masuk di database; csv tidak perlu adakan id
FROM 'c:\Users\nicku\Documents\FTDS-HCK-012\P0W2\D5\advance-query-sql\data\teams.csv'
DELIMITER ','
CSV HEADER;


COMMIT;