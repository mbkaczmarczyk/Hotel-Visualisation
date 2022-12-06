with HOTELS_TOTAL as (

select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$'])
/*
select 
arrival_date_year,
hotel,
ROUND(SUM((stays_in_week_nights+stays_in_weekend_nights)*adr),2) as revenue 
from HOTELS_TOTAL 
group by arrival_date_year, hotel
*/

select * from HOTELS_TOTAL
left join dbo.market_segment$
on HOTELS_TOTAL.market_segment = market_segment$.market_segment
left join dbo.meal_cost$
on meal_cost$.meal = HOTELS_TOTAL.meal