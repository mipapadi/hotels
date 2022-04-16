-- First check
select * from hotel.dbo.[2018]

-------------------------------------------------------------------------

-- Select database
use Hotel

-------------------------------------------------------------------------

-- Unified dataset
-- Temp table
with hotels as (
select * from [2018]
union
select * from [2019]
union
select * from [2020]
)

---- Create Revenue column depending on rate
---- Check if it is increasing by year
--select 
--arrival_date_year,
--hotel,
--round(sum((stays_in_week_nights + stays_in_weekend_nights) * adr), 0) as Revenue
--from hotels
--group by arrival_date_year, hotel


select * from hotels
left join MarketSegment
on hotels.market_segment = MarketSegment.market_segment
left join MealCost
on hotels.meal = MealCost.meal