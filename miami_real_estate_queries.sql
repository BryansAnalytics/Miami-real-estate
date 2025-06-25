
-- Query 1: Count total rows and group listings by status
SELECT COUNT(*) AS total_rows
FROM real_estate;

SELECT status, COUNT(*) AS listing_count
FROM real_estate
GROUP BY status;

-- Query 2: Listings and average price per zip code
SELECT zip_code,
       COUNT(*) AS listings,
       ROUND(AVG(listing_price_usd), 0) AS avg_price
FROM real_estate
GROUP BY zip_code
ORDER BY avg_price DESC;

-- Query 3: Average price per sqft by zip code
SELECT zip_code,
       ROUND(AVG(price_per_sqft), 2) AS avg_price_per_sqft,
       COUNT(*) AS listings
FROM real_estate
GROUP BY zip_code
ORDER BY avg_price_per_sqft ASC;

-- Query 4: Filter listings by price_per_sqft and bed count
SELECT zip_code, listing_price_usd, price_per_sqft, bed, bath
FROM real_estate
WHERE bed >= 3
  AND price_per_sqft <= 250
ORDER BY price_per_sqft ASC;

-- Query 5: Add filter for status
SELECT zip_code, listing_price_usd, price_per_sqft, bed, bath
FROM real_estate
WHERE bed >= 3
  AND price_per_sqft <= 250
  AND status = 'for_sale'
ORDER BY price_per_sqft ASC;

-- Query 6: Listings and avg price by zip_code and status
SELECT zip_code, status, COUNT(*) AS listing_count
FROM real_estate
GROUP BY zip_code, status
ORDER BY zip_code, status;

-- Query 7: Listings and avg price grouped by bed
SELECT bed,
       COUNT(*) AS listings,
       ROUND(AVG(listing_price_usd), 0) AS avg_price
FROM real_estate
GROUP BY bed
ORDER BY bed;
