CREATE SCHEMA cars;
USE cars;
-- Readin data -- 
SELECT * FROM cars_project;

-- Get total cars in order to count the total sales -- 
SELECT COUNT(*) FROM cars_project;

-- The manager asked us how many cars will be available in 2023? -- 
SELECT COUNT(*) FROM cars_project WHERE year=2023;
-- The manager asked us how many cars is available in 2020,2021,2022? --
SELECT COUNT(*) FROM cars_project WHERE year = 2022;
-- The manager asked us to see a table of total cars of each year? --
SELECT year, COUNT(*) FROM cars_project GROUP BY year;
-- They asked How many diesel car in 2020? --
SELECT COUNT(*) FROM cars_project WHERE year = 2020 AND fuel = 'Diesel';
-- They asked us how many cars runs by petrol, gas, electric, etc --
SELECT COUNT(*), fuel FROM cars_project GROUP BY fuel;
-- The manager wanted to know which year there were more than 100 cars --
SELECT year, COUNT(*) FROM cars_project GROUP BY year HAVING COUNT(*) > 100;
-- The manager wanted a complete list of cars count from 2015 to 2023 -- 
SELECT year, COUNT(*) FROM cars_project WHERE year BETWEEN 2015 AND 2023 GROUP BY year;

