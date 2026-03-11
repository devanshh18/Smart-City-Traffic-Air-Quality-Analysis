use smart_city_analysis;
CREATE TABLE traffic_data (
    traffic_id INT AUTO_INCREMENT PRIMARY KEY,
    timestamp DATETIME,
    day VARCHAR(20),
    hour INT,
    weather VARCHAR(50),
    area_type VARCHAR(50),
    traffic_density VARCHAR(20),
    car_count INT,
    bike_count INT,
    truck_count INT,
    signal_waiting_time_seconds INT
);

SHOW TABLES;

select count(*) from traffic_data;

-- SQL Data Validation & Initial Analysis 

select * from traffic_data limit 10;

select count(*) as total_rows from traffic_data;

SELECT DISTINCT area_type
FROM traffic_data;

SELECT traffic_density,
COUNT(*) AS records
FROM traffic_data
GROUP BY traffic_density;

SELECT 
MIN(car_count) AS min_cars,
MAX(car_count) AS max_cars,
AVG(car_count) AS avg_cars
FROM traffic_data;

SELECT 
MIN(bike_count),
MAX(bike_count),
AVG(bike_count)
FROM traffic_data;

SELECT 
MIN(truck_count),
MAX(truck_count),
AVG(truck_count)
FROM traffic_data;