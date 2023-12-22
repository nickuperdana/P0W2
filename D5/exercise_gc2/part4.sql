BEGIN;

CREATE TABLE residences (
  id SERIAL PRIMARY KEY, 
  residence VARCHAR 
);

CREATE TABLE "companySizes" (
  id SERIAL PRIMARY KEY, 
  size VARCHAR 
);

CREATE TABLE salaries (
  id SERIAL PRIMARY KEY, 
  work_year INT,
  experience_level VARCHAR,
  type VARCHAR,
  job_title VARCHAR,
  salary INT,
  company_location VARCHAR,
  residence_id INT,
  "companySize_id" INT, 
  FOREIGN KEY (residence_id) REFERENCES residences(id),
  FOREIGN KEY ("companySize_id") REFERENCES "companySizes"(id)
);

COPY "companySizes"(size)
FROM '/Users/hacktiv8/Desktop/exercise/companySizes.csv'
DELIMITER ','
CSV HEADER;

COPY residences(residence)
FROM '/Users/hacktiv8/Desktop/exercise/residences.csv'
DELIMITER ','
CSV HEADER;

COPY salaries(work_year,experience_level,type,job_title,salary,company_location,residence_id,"companySize_id")
FROM '/Users/hacktiv8/Desktop/exercise/salaries_table.csv'
DELIMITER ','
CSV HEADER;

COMMIT;