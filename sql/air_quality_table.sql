CREATE TABLE air_quality_data (
    air_id INT AUTO_INCREMENT PRIMARY KEY,
    country VARCHAR(50),
    state VARCHAR(100),
    city VARCHAR(100),
    station VARCHAR(150),
    last_update DATETIME,
    latitude DECIMAL(10,6),
    longitude DECIMAL(10,6),
    pollutant_id VARCHAR(20),
    pollutant_min FLOAT,
    pollutant_max FLOAT,
    pollutant_avg FLOAT
);

show tables;

describe traffic_data;
describe air_quality_data;

select count(*) from air_quality_data;
select * from air_quality_data;

ALTER TABLE air_quality_data 
MODIFY last_update VARCHAR(50);

ALTER TABLE air_quality_data 
MODIFY pollutant_min VARCHAR(50);

ALTER TABLE air_quality_data 
MODIFY pollutant_max VARCHAR(50);

ALTER TABLE air_quality_data 
MODIFY pollutant_avg VARCHAR(50);

SELECT COUNT(*) FROM air_quality_data;

TRUNCATE TABLE air_quality_data;

select * from air_quality_data;

-- SQL Data Validation & Initial Analysis 

SELECT * 
FROM air_quality_data 
LIMIT 10;

SELECT COUNT(*) AS total_rows
FROM air_quality_data;

SELECT DISTINCT weather
FROM traffic_data;

SELECT DISTINCT pollutant_id
FROM air_quality_data;

SELECT city,
COUNT(*) AS records
FROM air_quality_data
GROUP BY city
ORDER BY records DESC;

SELECT state,
COUNT(*) AS records
FROM air_quality_data
GROUP BY state
ORDER BY records DESC;

SELECT pollutant_id,
COUNT(*) AS records
FROM air_quality_data
GROUP BY pollutant_id
ORDER BY records DESC;