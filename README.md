# Miami Real Estate SQL Analysis

This project explores housing trends across Miami using SQL. The dataset includes listings with details such as price, square footage, number of bedrooms and bathrooms, and zip codes. The goal was to uncover pricing patterns, housing availability, and cost efficiency across different neighborhoods.

## 📊 Dataset Overview

The dataset contains real estate listings in Miami, including:
- `listing_price_usd`
- `price_per_sqft`
- `bed`, `bath`
- `zip_code`
- `status` (e.g., "for_sale", "ready_to_build")

The data was tested and queried using DB Fiddle (MySQL v5.7+ and v8).

---

## 🧠 Key Business Questions

- How many properties are in the dataset, and what are their listing statuses?
- What is the average price per square foot by zip code?
- Which zip codes have the most listings?
- What do listing trends look like by bedroom count?
- How do prices vary by status and location?

---

## 🛠️ SQL Techniques Used

- `COUNT()` and `GROUP BY` for counts by status, bedrooms, and zip codes
- `AVG()` and `ROUND()` for pricing summaries
- `WHERE` filters to isolate property features (e.g., 3+ beds under $250/sqft)
- `ORDER BY` for ranking listings by cost metrics
- Combined filters for targeted neighborhood insights
---

## 📌 Queries Used

```sql
-- Count total rows in the dataset
SELECT COUNT(*) AS total_rows FROM real_estate;

-- Count listings by status
SELECT status, COUNT(*) AS listing_count
FROM real_estate
GROUP BY status;

-- Average listing price by zip code
SELECT zip_code,
       COUNT(*) AS listings,
       ROUND(AVG(listing_price_usd), 0) AS avg_price
FROM real_estate
GROUP BY zip_code
ORDER BY avg_price DESC;

-- Average price per sqft by zip code
SELECT zip_code,
       ROUND(AVG(price_per_sqft), 2) AS avg_price_per_sqft,
       COUNT(*) AS listings
FROM real_estate
GROUP BY zip_code
ORDER BY avg_price_per_sqft ASC;
```
## 📊 Tableau Dashboard
[🔗 View the Dashboard on Tableau Public] (https://public.tableau.com/app/profile/brayan.altamirano/viz/MiamiDatasetDashboard2WorkinProgress/Dashboard1)
(https://public.tableau.com/app/profile/brayan.altamirano/viz/MiamiPriceSegmentation/Dashboard4) 
