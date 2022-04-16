-- First check
SELECT * FROM hotel2018;

-- Create temporary table
-- Unified dataset
DROP TABLE IF EXISTS hotels;

SELECT * INTO hotels FROM hotel2018
UNION ALL
SELECT * FROM hotel2019
UNION ALL
SELECT * FROM hotel2020;

-- Check 
SELECT * FROM hotels;

-- Create Revenue column depending on rate
-- Check if it is increasing by year
-- SELECT 
-- arrival_date_year,
-- hotel,
-- round(sum((stays_in_week_nights + stays_in_weekend_nights) * adr)) AS Revenue
-- FROM hotels
-- GROUP BY arrival_date_year, hotel

SELECT * FROM hotels
LEFT JOIN marketsegment
ON hotels.market_segment = marketsegment.market_segment
LEFT JOIN mealcost
ON hotels.meal = mealcost.meal;