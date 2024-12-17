create schema phonedata;
use phonedata;
select*from mobile;
-- Q1)Check mobile features and price list --
select phone_name, price from mobile;

-- find out the price of 5 most expensive phones.
select*from mobile
order by price desc
limit 5;

-- find out the price of 5 most chepest phone.
select*from mobile
order by price asc
limit 5;

-- list of top 5 Samsung phones with price and all features.
select*from mobile 
where Brands = 'Samsung'
order by price desc
limit 5;

-- find out which phone support 5g and top 5
select*from mobile
where 5G_Availability = "Yes"
order by price desc
limit 5;

-- Total price of all mobile is to be found with brand name --
select brands, sum(price) from mobile group by brands;