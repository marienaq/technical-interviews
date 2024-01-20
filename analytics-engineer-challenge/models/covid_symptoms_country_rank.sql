-- covid_symptoms_country_rank.sql

-- This model calculates the rank of a symptom at a country level based on highest score.  Additional columns are added for troubleshooting.
SELECT
  country_region_code, -- Two digit country code
  country_region, 
  symptom,
  RANK() OVER (PARTITION BY country_region_code ORDER BY SUM(score) DESC) AS rank, -- Rank in terms of highest total score
  ROUND(SUM(score),0) AS total_scores, -- Sum of all scores available from start to end date
  (SELECT CURRENT_TIMESTAMP()) AS last_updated_dt, -- The date the ranking data was generated (model run date)
  min(PARSE_DATE('%Y-%m-%d', csdl.date)) as start_date, -- The most recent date of data used in calculating scores
  max(PARSE_DATE('%Y-%m-%d', csdl.date)) as end_date  -- The latest date of data used in calculating scores
FROM
  dbt_mquintanilla.covid_symptom_scores_detail_long csdl
GROUP BY
  country_region_code, country_region, symptom
ORDER BY
  country_region_code, rank