-- Query 1: Top 10 Countries with Highest Total Confirmed Cases
SELECT 
  country_name,
  MAX(cumulative_confirmed) AS total_cases
FROM 
  `bigquery-public-data.covid19_open_data.covid19_open_data`
WHERE 
  date = '2021-12-31'
GROUP BY 
  country_name
ORDER BY 
  total_cases DESC
LIMIT 10;

-- Query 2: Trend of New Cases in India (Jan to Jun 2021)
SELECT 
  date,
  new_confirmed
FROM 
  `bigquery-public-data.covid19_open_data.covid19_open_data`
WHERE 
  country_name = 'India'
  AND date BETWEEN '2021-01-01' AND '2021-06-30'
ORDER BY 
  date;

-- Query 3: Daily New Deaths in USA (Dec 2021)
SELECT 
  date,
  new_deceased
FROM 
  `bigquery-public-data.covid19_open_data.covid19_open_data`
WHERE 
  country_name = 'United States'
  AND date BETWEEN '2021-12-01' AND '2021-12-31'
ORDER BY 
  date;

-- Query 4: Top 10 Countries with Highest Vaccination Rate (2021)
SELECT 
  country_name,
  MAX(cumulative_persons_vaccinated) AS total_vaccinated
FROM 
  `bigquery-public-data.covid19_open_data.covid19_open_data`
WHERE 
  date = '2021-12-31'
  AND cumulative_persons_vaccinated IS NOT NULL
GROUP BY 
  country_name
ORDER BY 
  total_vaccinated DESC
LIMIT 10;

