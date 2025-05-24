/*
===============================================================================
DDL Script: Create Original Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'original' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'original' Tables
===============================================================================
*/


IF OBJECT_ID('original.listings_viz', 'U') IS NOT NULL
    DROP TABLE original.listings_viz;
CREATE TABLE original.listings_viz (
    id INT,
    name NVARCHAR(MAX),
    host_id INT,
    host_name NVARCHAR(255),
    neighbourhood_cleansed NVARCHAR(255),
    room_type NVARCHAR(255),
    price FLOAT,
    minimum_nights INT,
    number_of_reviews INT,
    last_review DATE,
    reviews_per_month FLOAT,
    calculated_host_listings_count INT,
    availability_365 INT,
);

IF OBJECT_ID('original.calendar', 'U') IS NOT NULL
    DROP TABLE original.calendar;
CREATE TABLE original.calendar (
    listing_id INT,
    date DATE,
    available NVARCHAR(10),
    price FLOAT,
);

IF OBJECT_ID('original.reviews_viz', 'U') IS NOT NULL
    DROP TABLE original.reviews_viz;
CREATE TABLE original.reviews_viz (
    listing_id INT,
    id INT,
    date DATE,
);
