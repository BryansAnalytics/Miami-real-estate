# Miami Real Estate Analysis

## 📌 Overview
This project explores housing trends across Miami using SQL. The dataset includes listings with details such as price, square footage, number of bedrooms and bathrooms, and zip codes. The goal was to uncover pricing patterns, housing availability, and cost efficiency across different neighborhoods.

## 🧰 Tools Used
- **MySQL** via DB Fiddle
- **Excel** (data cleaning – sample file included)
- **Tableau** (dashboard to be added)

## 📂 Dataset Structure

The dataset contains real estate listings in Miami, including:
- `listing_price_usd`
- `price_per_sqft`
- `bed`, `bath`
- `zip_code`
- `status` (e.g., "for_sale", "ready_to_build")

The data was tested and queried using DB Fiddle (MySQL v5.7+ and v8).

## 📊 Key Business Questions

- How many properties are in the dataset, and what are their listing statuses?
- What is the average price per square foot by zip code?
- Which zip codes have the most listings?
- What do listing trends look like by bedroom count?
- How do prices vary by status and location?

## 📌  Key Queries & Insights

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
## Project Summary

This dashboard analyzes Miami residential real estate listings to uncover trends in pricing, location value, and market dynamics. Built in Tableau using a cleaned Excel dataset.

### Key KPIs:
- Avg. Listing Price: **$899,425**
- Avg. Home Size: **1,634 sqft**
- Avg. Price per Sqft: **$498**

### Key Insights:
- 📍 **33109** stands out with an average listing price over **$8.5M**, indicating a luxury cluster.
- 📊 **Scatter plot** reveals a general price-size correlation with outliers suggesting over/undervalued properties.
- 🏷️ A large number of homes are still listed **under $500K**, showing affordability pockets.
- 📆 Some listings haven’t sold in **10+ years**, hinting at long-held inventory or equity opportunities.

## 📊 Tableau Dashboard
[🔗 View the Dashboard on Tableau Public] (https://public.tableau.com/app/profile/brayan.altamirano/viz/MiamiDatasetDashboard2WorkinProgress/Dashboard1)
(https://public.tableau.com/app/profile/brayan.altamirano/viz/MiamiPriceSegmentation/Dashboard4) 

### 📁 Excel Dataset
[Download the Miami Real Estate Dataset (Excel)](Miami.csv)

