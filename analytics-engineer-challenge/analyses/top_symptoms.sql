SELECT *
FROM dbt_mquintanilla.covid_symptoms_country_rank
WHERE rank <= 5
ORDER by country_region_code, rank
