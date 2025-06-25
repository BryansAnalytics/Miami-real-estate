# Miami-real-estate
SQL queries analyzing property prices and trends in Miami using a real estate dataset.

-- Miami Real Estate Project - SQL Queries

-- 1. Total number of rows in the dataset
SELECT COUNT(*) AS total_rows
FROM real_estate;

-- 2. Number of listings per status
SELECT status, COUNT(*) AS listing_count
FROM real_estate
GROUP BY status;

-- 3. Number of listings and average listing price by zip code
SELECT zip_code,
       COUNT(*) AS listings,
       ROUND(AVG(listing_price_usd), 0) AS avg_price
FROM real_estate
GROUP BY zip_code
ORDER BY avg_price DESC;

-- 4. Number of listings and average price per square foot by zip code
SELECT zip_code,
       ROUND(AVG(price_per_sqft), 2) AS avg_price_per_sqft,
       COUNT(*) AS listings
FROM real_estate
GROUP BY zip_code
ORDER BY avg_price_per_sqft ASC;

-- 5. Filter: 3+ bedroom homes under $250/sqft, sorted by price per sqft
SELECT zip_code, listing_price_usd, price_per_sqft, bed, bath
FROM real_estate
WHERE bed >= 3
  AND price_per_sqft <= 250
ORDER BY price_per_sqft ASC;

-- 6. Add status filter: for_sale only
SELECT zip_code, listing_price_usd, price_per_sqft, bed, bath
FROM real_estate
WHERE bed >= 3
  AND price_per_sqft <= 250
  AND status = 'for_sale'
ORDER BY price_per_sqft ASC;

-- 7. Group by zip code and status to analyze listing types by location
SELECT zip_code, status, COUNT(*) AS listing_count
FROM real_estate
GROUP BY zip_code, status
ORDER BY zip_code, status;

-- 8. Listings and average price by bedroom count
SELECT bed,
       COUNT(*) AS listings,
       ROUND(AVG(listing_price_usd), 0) AS avg_price
FROM real_estate
GROUP BY bed
ORDER BY bed;
