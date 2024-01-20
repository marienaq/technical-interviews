-- covid_symptoms_detail_long.sql

-- This model maintains the granularity of data  but pivots symptoms into two columns (symptom and score).  Rows with missing scores or bad scores are excluded.  The score is converted to a FLOAT64
select * FROM (
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'abdominal_pain' as symptom, CAST(symptom_abdominal_pain AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'acne' as symptom, CAST(symptom_acne AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'actinic_keratosis' as symptom, CAST(symptom_actinic_keratosis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'acute_bronchitis' as symptom, CAST(symptom_acute_bronchitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'adrenal_crisis' as symptom, CAST(symptom_adrenal_crisis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'ageusia' as symptom, CAST(symptom_ageusia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'alcoholism' as symptom, CAST(symptom_alcoholism AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'allergic_conjunctivitis' as symptom, CAST(symptom_allergic_conjunctivitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'allergy' as symptom, CAST(symptom_allergy AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'amblyopia' as symptom, CAST(symptom_amblyopia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'amenorrhea' as symptom, CAST(symptom_amenorrhea AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'amnesia' as symptom, CAST(symptom_amnesia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'anal_fissure' as symptom, CAST(symptom_anal_fissure AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'anaphylaxis' as symptom, CAST(symptom_anaphylaxis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'anemia' as symptom, CAST(symptom_anemia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'angina_pectoris' as symptom, CAST(symptom_angina_pectoris AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'angioedema' as symptom, CAST(symptom_angioedema AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'angular_cheilitis' as symptom, CAST(symptom_angular_cheilitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'anosmia' as symptom, CAST(symptom_anosmia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'anxiety' as symptom, CAST(symptom_anxiety AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'aphasia' as symptom, CAST(symptom_aphasia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'aphonia' as symptom, CAST(symptom_aphonia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'apnea' as symptom, CAST(symptom_apnea AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'arthralgia' as symptom, CAST(symptom_arthralgia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'arthritis' as symptom, CAST(symptom_arthritis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'ascites' as symptom, CAST(symptom_ascites AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'asperger_syndrome' as symptom, CAST(symptom_asperger_syndrome AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'asphyxia' as symptom, CAST(symptom_asphyxia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'asthma' as symptom, CAST(symptom_asthma AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'astigmatism' as symptom, CAST(symptom_astigmatism AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'ataxia' as symptom, CAST(symptom_ataxia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'atheroma' as symptom, CAST(symptom_atheroma AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'attention_deficit_hyperactivity_disorder' as symptom, CAST(symptom_attention_deficit_hyperactivity_disorder AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'auditory_hallucination' as symptom, CAST(symptom_auditory_hallucination AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'autoimmune_disease' as symptom, CAST(symptom_autoimmune_disease AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'avoidant_personality_disorder' as symptom, CAST(symptom_avoidant_personality_disorder AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'back_pain' as symptom, CAST(symptom_back_pain AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'bacterial_vaginosis' as symptom, CAST(symptom_bacterial_vaginosis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'balance_disorder' as symptom, CAST(symptom_balance_disorder AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'beau_s_lines' as symptom, CAST(symptom_beau_s_lines AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'bell_s_palsy' as symptom, CAST(symptom_bell_s_palsy AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'biliary_colic' as symptom, CAST(symptom_biliary_colic AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'binge_eating' as symptom, CAST(symptom_binge_eating AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'bleeding' as symptom, CAST(symptom_bleeding AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'bleeding_on_probing' as symptom, CAST(symptom_bleeding_on_probing AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'blepharospasm' as symptom, CAST(symptom_blepharospasm AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'bloating' as symptom, CAST(symptom_bloating AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'blood_in_stool' as symptom, CAST(symptom_blood_in_stool AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'blurred_vision' as symptom, CAST(symptom_blurred_vision AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'blushing' as symptom, CAST(symptom_blushing AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'boil' as symptom, CAST(symptom_boil AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'bone_fracture' as symptom, CAST(symptom_bone_fracture AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'bone_tumor' as symptom, CAST(symptom_bone_tumor AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'bowel_obstruction' as symptom, CAST(symptom_bowel_obstruction AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'bradycardia' as symptom, CAST(symptom_bradycardia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'braxton_hicks_contractions' as symptom, CAST(symptom_braxton_hicks_contractions AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'breakthrough_bleeding' as symptom, CAST(symptom_breakthrough_bleeding AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'breast_pain' as symptom, CAST(symptom_breast_pain AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'bronchitis' as symptom, CAST(symptom_bronchitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'bruise' as symptom, CAST(symptom_bruise AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'bruxism' as symptom, CAST(symptom_bruxism AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'bunion' as symptom, CAST(symptom_bunion AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'burn' as symptom, CAST(symptom_burn AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'burning_chest_pain' as symptom, CAST(symptom_burning_chest_pain AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'burning_mouth_syndrome' as symptom, CAST(symptom_burning_mouth_syndrome AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'candidiasis' as symptom, CAST(symptom_candidiasis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'canker_sore' as symptom, CAST(symptom_canker_sore AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'cardiac_arrest' as symptom, CAST(symptom_cardiac_arrest AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'carpal_tunnel_syndrome' as symptom, CAST(symptom_carpal_tunnel_syndrome AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'cataplexy' as symptom, CAST(symptom_cataplexy AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'cataract' as symptom, CAST(symptom_cataract AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'chancre' as symptom, CAST(symptom_chancre AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'cheilitis' as symptom, CAST(symptom_cheilitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'chest_pain' as symptom, CAST(symptom_chest_pain AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'chills' as symptom, CAST(symptom_chills AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'chorea' as symptom, CAST(symptom_chorea AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'chronic_pain' as symptom, CAST(symptom_chronic_pain AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'cirrhosis' as symptom, CAST(symptom_cirrhosis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'cleft_lip_and_cleft_palate' as symptom, CAST(symptom_cleft_lip_and_cleft_palate AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'clouding_of_consciousness' as symptom, CAST(symptom_clouding_of_consciousness AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'cluster_headache' as symptom, CAST(symptom_cluster_headache AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'colitis' as symptom, CAST(symptom_colitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'coma' as symptom, CAST(symptom_coma AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'common_cold' as symptom, CAST(symptom_common_cold AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'compulsive_behavior' as symptom, CAST(symptom_compulsive_behavior AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'compulsive_hoarding' as symptom, CAST(symptom_compulsive_hoarding AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'confusion' as symptom, CAST(symptom_confusion AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'congenital_heart_defect' as symptom, CAST(symptom_congenital_heart_defect AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'conjunctivitis' as symptom, CAST(symptom_conjunctivitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'constipation' as symptom, CAST(symptom_constipation AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'convulsion' as symptom, CAST(symptom_convulsion AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'cough' as symptom, CAST(symptom_cough AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'crackles' as symptom, CAST(symptom_crackles AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'cramp' as symptom, CAST(symptom_cramp AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'crepitus' as symptom, CAST(symptom_crepitus AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'croup' as symptom, CAST(symptom_croup AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'cyanosis' as symptom, CAST(symptom_cyanosis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'dandruff' as symptom, CAST(symptom_dandruff AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'delayed_onset_muscle_soreness' as symptom, CAST(symptom_delayed_onset_muscle_soreness AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'dementia' as symptom, CAST(symptom_dementia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'dentin_hypersensitivity' as symptom, CAST(symptom_dentin_hypersensitivity AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'depersonalization' as symptom, CAST(symptom_depersonalization AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'depression' as symptom, CAST(symptom_depression AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'dermatitis' as symptom, CAST(symptom_dermatitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'desquamation' as symptom, CAST(symptom_desquamation AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'developmental_disability' as symptom, CAST(symptom_developmental_disability AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'diabetes' as symptom, CAST(symptom_diabetes AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'diabetic_ketoacidosis' as symptom, CAST(symptom_diabetic_ketoacidosis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'diarrhea' as symptom, CAST(symptom_diarrhea AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'dizziness' as symptom, CAST(symptom_dizziness AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'dry_eye_syndrome' as symptom, CAST(symptom_dry_eye_syndrome AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'dysautonomia' as symptom, CAST(symptom_dysautonomia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'dysgeusia' as symptom, CAST(symptom_dysgeusia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'dysmenorrhea' as symptom, CAST(symptom_dysmenorrhea AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'dyspareunia' as symptom, CAST(symptom_dyspareunia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'dysphagia' as symptom, CAST(symptom_dysphagia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'dysphoria' as symptom, CAST(symptom_dysphoria AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'dystonia' as symptom, CAST(symptom_dystonia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'dysuria' as symptom, CAST(symptom_dysuria AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'ear_pain' as symptom, CAST(symptom_ear_pain AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'eczema' as symptom, CAST(symptom_eczema AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'edema' as symptom, CAST(symptom_edema AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'encephalitis' as symptom, CAST(symptom_encephalitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'encephalopathy' as symptom, CAST(symptom_encephalopathy AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'epidermoid_cyst' as symptom, CAST(symptom_epidermoid_cyst AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'epilepsy' as symptom, CAST(symptom_epilepsy AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'epiphora' as symptom, CAST(symptom_epiphora AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'erectile_dysfunction' as symptom, CAST(symptom_erectile_dysfunction AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'erythema' as symptom, CAST(symptom_erythema AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'erythema_chronicum_migrans' as symptom, CAST(symptom_erythema_chronicum_migrans AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'esophagitis' as symptom, CAST(symptom_esophagitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'excessive_daytime_sleepiness' as symptom, CAST(symptom_excessive_daytime_sleepiness AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'eye_pain' as symptom, CAST(symptom_eye_pain AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'eye_strain' as symptom, CAST(symptom_eye_strain AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'facial_nerve_paralysis' as symptom, CAST(symptom_facial_nerve_paralysis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'facial_swelling' as symptom, CAST(symptom_facial_swelling AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'fasciculation' as symptom, CAST(symptom_fasciculation AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'fatigue' as symptom, CAST(symptom_fatigue AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'fatty_liver_disease' as symptom, CAST(symptom_fatty_liver_disease AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'fecal_incontinence' as symptom, CAST(symptom_fecal_incontinence AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'fever' as symptom, CAST(symptom_fever AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'fibrillation' as symptom, CAST(symptom_fibrillation AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'fibrocystic_breast_changes' as symptom, CAST(symptom_fibrocystic_breast_changes AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'fibromyalgia' as symptom, CAST(symptom_fibromyalgia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'flatulence' as symptom, CAST(symptom_flatulence AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'floater' as symptom, CAST(symptom_floater AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'focal_seizure' as symptom, CAST(symptom_focal_seizure AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'folate_deficiency' as symptom, CAST(symptom_folate_deficiency AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'food_craving' as symptom, CAST(symptom_food_craving AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'food_intolerance' as symptom, CAST(symptom_food_intolerance AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'frequent_urination' as symptom, CAST(symptom_frequent_urination AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'gastroesophageal_reflux_disease' as symptom, CAST(symptom_gastroesophageal_reflux_disease AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'gastroparesis' as symptom, CAST(symptom_gastroparesis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'generalized_anxiety_disorder' as symptom, CAST(symptom_generalized_anxiety_disorder AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'generalized_tonic_clonic_seizure' as symptom, CAST(symptom_generalized_tonic_clonic_seizure AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'genital_wart' as symptom, CAST(symptom_genital_wart AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'gingival_recession' as symptom, CAST(symptom_gingival_recession AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'gingivitis' as symptom, CAST(symptom_gingivitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'globus_pharyngis' as symptom, CAST(symptom_globus_pharyngis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'goitre' as symptom, CAST(symptom_goitre AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'gout' as symptom, CAST(symptom_gout AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'grandiosity' as symptom, CAST(symptom_grandiosity AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'granuloma' as symptom, CAST(symptom_granuloma AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'guilt' as symptom, CAST(symptom_guilt AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hair_loss' as symptom, CAST(symptom_hair_loss AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'halitosis' as symptom, CAST(symptom_halitosis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hay_fever' as symptom, CAST(symptom_hay_fever AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'headache' as symptom, CAST(symptom_headache AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'heart_arrhythmia' as symptom, CAST(symptom_heart_arrhythmia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'heart_murmur' as symptom, CAST(symptom_heart_murmur AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'heartburn' as symptom, CAST(symptom_heartburn AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hematochezia' as symptom, CAST(symptom_hematochezia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hematoma' as symptom, CAST(symptom_hematoma AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hematuria' as symptom, CAST(symptom_hematuria AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hemolysis' as symptom, CAST(symptom_hemolysis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hemoptysis' as symptom, CAST(symptom_hemoptysis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hemorrhoids' as symptom, CAST(symptom_hemorrhoids AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hepatic_encephalopathy' as symptom, CAST(symptom_hepatic_encephalopathy AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hepatitis' as symptom, CAST(symptom_hepatitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hepatotoxicity' as symptom, CAST(symptom_hepatotoxicity AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hiccup' as symptom, CAST(symptom_hiccup AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hip_pain' as symptom, CAST(symptom_hip_pain AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hives' as symptom, CAST(symptom_hives AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hot_flash' as symptom, CAST(symptom_hot_flash AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hydrocephalus' as symptom, CAST(symptom_hydrocephalus AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hypercalcaemia' as symptom, CAST(symptom_hypercalcaemia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hypercapnia' as symptom, CAST(symptom_hypercapnia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hypercholesterolemia' as symptom, CAST(symptom_hypercholesterolemia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hyperemesis_gravidarum' as symptom, CAST(symptom_hyperemesis_gravidarum AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hyperglycemia' as symptom, CAST(symptom_hyperglycemia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hyperkalemia' as symptom, CAST(symptom_hyperkalemia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hyperlipidemia' as symptom, CAST(symptom_hyperlipidemia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hypermobility' as symptom, CAST(symptom_hypermobility AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hyperpigmentation' as symptom, CAST(symptom_hyperpigmentation AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hypersomnia' as symptom, CAST(symptom_hypersomnia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hypertension' as symptom, CAST(symptom_hypertension AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hyperthermia' as symptom, CAST(symptom_hyperthermia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hyperthyroidism' as symptom, CAST(symptom_hyperthyroidism AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hypertriglyceridemia' as symptom, CAST(symptom_hypertriglyceridemia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hypertrophy' as symptom, CAST(symptom_hypertrophy AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hyperventilation' as symptom, CAST(symptom_hyperventilation AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hypocalcaemia' as symptom, CAST(symptom_hypocalcaemia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hypochondriasis' as symptom, CAST(symptom_hypochondriasis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hypoglycemia' as symptom, CAST(symptom_hypoglycemia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hypogonadism' as symptom, CAST(symptom_hypogonadism AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hypokalemia' as symptom, CAST(symptom_hypokalemia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hypomania' as symptom, CAST(symptom_hypomania AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hyponatremia' as symptom, CAST(symptom_hyponatremia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hypotension' as symptom, CAST(symptom_hypotension AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hypothyroidism' as symptom, CAST(symptom_hypothyroidism AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hypoxemia' as symptom, CAST(symptom_hypoxemia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hypoxia' as symptom, CAST(symptom_hypoxia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'impetigo' as symptom, CAST(symptom_impetigo AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'implantation_bleeding' as symptom, CAST(symptom_implantation_bleeding AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'impulsivity' as symptom, CAST(symptom_impulsivity AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'indigestion' as symptom, CAST(symptom_indigestion AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'infection' as symptom, CAST(symptom_infection AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'inflammation' as symptom, CAST(symptom_inflammation AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'inflammatory_bowel_disease' as symptom, CAST(symptom_inflammatory_bowel_disease AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'ingrown_hair' as symptom, CAST(symptom_ingrown_hair AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'insomnia' as symptom, CAST(symptom_insomnia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'insulin_resistance' as symptom, CAST(symptom_insulin_resistance AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'intermenstrual_bleeding' as symptom, CAST(symptom_intermenstrual_bleeding AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'intracranial_pressure' as symptom, CAST(symptom_intracranial_pressure AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'iron_deficiency' as symptom, CAST(symptom_iron_deficiency AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'irregular_menstruation' as symptom, CAST(symptom_irregular_menstruation AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'itch' as symptom, CAST(symptom_itch AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'jaundice' as symptom, CAST(symptom_jaundice AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'kidney_failure' as symptom, CAST(symptom_kidney_failure AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'kidney_stone' as symptom, CAST(symptom_kidney_stone AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'knee_pain' as symptom, CAST(symptom_knee_pain AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'kyphosis' as symptom, CAST(symptom_kyphosis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'lactose_intolerance' as symptom, CAST(symptom_lactose_intolerance AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'laryngitis' as symptom, CAST(symptom_laryngitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'leg_cramps' as symptom, CAST(symptom_leg_cramps AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'lesion' as symptom, CAST(symptom_lesion AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'leukorrhea' as symptom, CAST(symptom_leukorrhea AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'lightheadedness' as symptom, CAST(symptom_lightheadedness AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'low_back_pain' as symptom, CAST(symptom_low_back_pain AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'low_grade_fever' as symptom, CAST(symptom_low_grade_fever AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'lymphedema' as symptom, CAST(symptom_lymphedema AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'major_depressive_disorder' as symptom, CAST(symptom_major_depressive_disorder AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'malabsorption' as symptom, CAST(symptom_malabsorption AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'male_infertility' as symptom, CAST(symptom_male_infertility AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'manic_disorder' as symptom, CAST(symptom_manic_disorder AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'melasma' as symptom, CAST(symptom_melasma AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'melena' as symptom, CAST(symptom_melena AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'meningitis' as symptom, CAST(symptom_meningitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'menorrhagia' as symptom, CAST(symptom_menorrhagia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'middle_back_pain' as symptom, CAST(symptom_middle_back_pain AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'migraine' as symptom, CAST(symptom_migraine AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'milium' as symptom, CAST(symptom_milium AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'mitral_insufficiency' as symptom, CAST(symptom_mitral_insufficiency AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'mood_disorder' as symptom, CAST(symptom_mood_disorder AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'mood_swing' as symptom, CAST(symptom_mood_swing AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'morning_sickness' as symptom, CAST(symptom_morning_sickness AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'motion_sickness' as symptom, CAST(symptom_motion_sickness AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'mouth_ulcer' as symptom, CAST(symptom_mouth_ulcer AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'muscle_atrophy' as symptom, CAST(symptom_muscle_atrophy AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'muscle_weakness' as symptom, CAST(symptom_muscle_weakness AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'myalgia' as symptom, CAST(symptom_myalgia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'mydriasis' as symptom, CAST(symptom_mydriasis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'myocardial_infarction' as symptom, CAST(symptom_myocardial_infarction AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'myoclonus' as symptom, CAST(symptom_myoclonus AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'nasal_congestion' as symptom, CAST(symptom_nasal_congestion AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'nasal_polyp' as symptom, CAST(symptom_nasal_polyp AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'nausea' as symptom, CAST(symptom_nausea AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'neck_mass' as symptom, CAST(symptom_neck_mass AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'neck_pain' as symptom, CAST(symptom_neck_pain AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'neonatal_jaundice' as symptom, CAST(symptom_neonatal_jaundice AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'nerve_injury' as symptom, CAST(symptom_nerve_injury AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'neuralgia' as symptom, CAST(symptom_neuralgia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'neutropenia' as symptom, CAST(symptom_neutropenia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'night_sweats' as symptom, CAST(symptom_night_sweats AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'night_terror' as symptom, CAST(symptom_night_terror AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'nocturnal_enuresis' as symptom, CAST(symptom_nocturnal_enuresis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'nodule' as symptom, CAST(symptom_nodule AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'nosebleed' as symptom, CAST(symptom_nosebleed AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'nystagmus' as symptom, CAST(symptom_nystagmus AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'obesity' as symptom, CAST(symptom_obesity AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'onychorrhexis' as symptom, CAST(symptom_onychorrhexis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'oral_candidiasis' as symptom, CAST(symptom_oral_candidiasis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'orthostatic_hypotension' as symptom, CAST(symptom_orthostatic_hypotension AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'osteopenia' as symptom, CAST(symptom_osteopenia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'osteophyte' as symptom, CAST(symptom_osteophyte AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'osteoporosis' as symptom, CAST(symptom_osteoporosis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'otitis' as symptom, CAST(symptom_otitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'otitis_externa' as symptom, CAST(symptom_otitis_externa AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'otitis_media' as symptom, CAST(symptom_otitis_media AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'pain' as symptom, CAST(symptom_pain AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'palpitations' as symptom, CAST(symptom_palpitations AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'panic_attack' as symptom, CAST(symptom_panic_attack AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'papule' as symptom, CAST(symptom_papule AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'paranoia' as symptom, CAST(symptom_paranoia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'paresthesia' as symptom, CAST(symptom_paresthesia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'pelvic_inflammatory_disease' as symptom, CAST(symptom_pelvic_inflammatory_disease AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'pericarditis' as symptom, CAST(symptom_pericarditis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'periodontal_disease' as symptom, CAST(symptom_periodontal_disease AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'periorbital_puffiness' as symptom, CAST(symptom_periorbital_puffiness AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'peripheral_neuropathy' as symptom, CAST(symptom_peripheral_neuropathy AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'perspiration' as symptom, CAST(symptom_perspiration AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'petechia' as symptom, CAST(symptom_petechia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'phlegm' as symptom, CAST(symptom_phlegm AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'photodermatitis' as symptom, CAST(symptom_photodermatitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'photophobia' as symptom, CAST(symptom_photophobia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'photopsia' as symptom, CAST(symptom_photopsia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'pleural_effusion' as symptom, CAST(symptom_pleural_effusion AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'pleurisy' as symptom, CAST(symptom_pleurisy AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'pneumonia' as symptom, CAST(symptom_pneumonia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'podalgia' as symptom, CAST(symptom_podalgia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'polycythemia' as symptom, CAST(symptom_polycythemia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'polydipsia' as symptom, CAST(symptom_polydipsia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'polyneuropathy' as symptom, CAST(symptom_polyneuropathy AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'polyuria' as symptom, CAST(symptom_polyuria AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'poor_posture' as symptom, CAST(symptom_poor_posture AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'post_nasal_drip' as symptom, CAST(symptom_post_nasal_drip AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'postural_orthostatic_tachycardia_syndrome' as symptom, CAST(symptom_postural_orthostatic_tachycardia_syndrome AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'prediabetes' as symptom, CAST(symptom_prediabetes AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'proteinuria' as symptom, CAST(symptom_proteinuria AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'pruritus_ani' as symptom, CAST(symptom_pruritus_ani AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'psychosis' as symptom, CAST(symptom_psychosis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'ptosis' as symptom, CAST(symptom_ptosis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'pulmonary_edema' as symptom, CAST(symptom_pulmonary_edema AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'pulmonary_hypertension' as symptom, CAST(symptom_pulmonary_hypertension AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'purpura' as symptom, CAST(symptom_purpura AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'pus' as symptom, CAST(symptom_pus AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'pyelonephritis' as symptom, CAST(symptom_pyelonephritis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'radiculopathy' as symptom, CAST(symptom_radiculopathy AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'rectal_pain' as symptom, CAST(symptom_rectal_pain AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'rectal_prolapse' as symptom, CAST(symptom_rectal_prolapse AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'red_eye' as symptom, CAST(symptom_red_eye AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'renal_colic' as symptom, CAST(symptom_renal_colic AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'restless_legs_syndrome' as symptom, CAST(symptom_restless_legs_syndrome AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'rheum' as symptom, CAST(symptom_rheum AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'rhinitis' as symptom, CAST(symptom_rhinitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'rhinorrhea' as symptom, CAST(symptom_rhinorrhea AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'rosacea' as symptom, CAST(symptom_rosacea AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'round_ligament_pain' as symptom, CAST(symptom_round_ligament_pain AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'rumination' as symptom, CAST(symptom_rumination AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'scar' as symptom, CAST(symptom_scar AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'sciatica' as symptom, CAST(symptom_sciatica AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'scoliosis' as symptom, CAST(symptom_scoliosis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'seborrheic_dermatitis' as symptom, CAST(symptom_seborrheic_dermatitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'self_harm' as symptom, CAST(symptom_self_harm AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'sensitivity_to_sound' as symptom, CAST(symptom_sensitivity_to_sound AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'sexual_dysfunction' as symptom, CAST(symptom_sexual_dysfunction AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'shallow_breathing' as symptom, CAST(symptom_shallow_breathing AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'sharp_pain' as symptom, CAST(symptom_sharp_pain AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'shivering' as symptom, CAST(symptom_shivering AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'shortness_of_breath' as symptom, CAST(symptom_shortness_of_breath AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'shyness' as symptom, CAST(symptom_shyness AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'sinusitis' as symptom, CAST(symptom_sinusitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'skin_condition' as symptom, CAST(symptom_skin_condition AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'skin_rash' as symptom, CAST(symptom_skin_rash AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'skin_tag' as symptom, CAST(symptom_skin_tag AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'skin_ulcer' as symptom, CAST(symptom_skin_ulcer AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'sleep_apnea' as symptom, CAST(symptom_sleep_apnea AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'sleep_deprivation' as symptom, CAST(symptom_sleep_deprivation AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'sleep_disorder' as symptom, CAST(symptom_sleep_disorder AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'snoring' as symptom, CAST(symptom_snoring AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'sore_throat' as symptom, CAST(symptom_sore_throat AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'spasticity' as symptom, CAST(symptom_spasticity AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'splenomegaly' as symptom, CAST(symptom_splenomegaly AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'sputum' as symptom, CAST(symptom_sputum AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'stomach_rumble' as symptom, CAST(symptom_stomach_rumble AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'strabismus' as symptom, CAST(symptom_strabismus AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'stretch_marks' as symptom, CAST(symptom_stretch_marks AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'stridor' as symptom, CAST(symptom_stridor AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'stroke' as symptom, CAST(symptom_stroke AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'stuttering' as symptom, CAST(symptom_stuttering AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'subdural_hematoma' as symptom, CAST(symptom_subdural_hematoma AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'suicidal_ideation' as symptom, CAST(symptom_suicidal_ideation AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'swelling' as symptom, CAST(symptom_swelling AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'swollen_feet' as symptom, CAST(symptom_swollen_feet AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'swollen_lymph_nodes' as symptom, CAST(symptom_swollen_lymph_nodes AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'syncope' as symptom, CAST(symptom_syncope AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'tachycardia' as symptom, CAST(symptom_tachycardia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'tachypnea' as symptom, CAST(symptom_tachypnea AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'telangiectasia' as symptom, CAST(symptom_telangiectasia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'tenderness' as symptom, CAST(symptom_tenderness AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'testicular_pain' as symptom, CAST(symptom_testicular_pain AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'throat_irritation' as symptom, CAST(symptom_throat_irritation AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'thrombocytopenia' as symptom, CAST(symptom_thrombocytopenia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'thyroid_nodule' as symptom, CAST(symptom_thyroid_nodule AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'tic' as symptom, CAST(symptom_tic AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'tinnitus' as symptom, CAST(symptom_tinnitus AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'tonsillitis' as symptom, CAST(symptom_tonsillitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'toothache' as symptom, CAST(symptom_toothache AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'tremor' as symptom, CAST(symptom_tremor AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'trichoptilosis' as symptom, CAST(symptom_trichoptilosis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'tumor' as symptom, CAST(symptom_tumor AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'type_2_diabetes' as symptom, CAST(symptom_type_2_diabetes AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'unconsciousness' as symptom, CAST(symptom_unconsciousness AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'underweight' as symptom, CAST(symptom_underweight AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'upper_respiratory_tract_infection' as symptom, CAST(symptom_upper_respiratory_tract_infection AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'urethritis' as symptom, CAST(symptom_urethritis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'urinary_incontinence' as symptom, CAST(symptom_urinary_incontinence AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'urinary_tract_infection' as symptom, CAST(symptom_urinary_tract_infection AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'urinary_urgency' as symptom, CAST(symptom_urinary_urgency AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'uterine_contraction' as symptom, CAST(symptom_uterine_contraction AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'vaginal_bleeding' as symptom, CAST(symptom_vaginal_bleeding AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'vaginal_discharge' as symptom, CAST(symptom_vaginal_discharge AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'vaginitis' as symptom, CAST(symptom_vaginitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'varicose_veins' as symptom, CAST(symptom_varicose_veins AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'vasculitis' as symptom, CAST(symptom_vasculitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'ventricular_fibrillation' as symptom, CAST(symptom_ventricular_fibrillation AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'ventricular_tachycardia' as symptom, CAST(symptom_ventricular_tachycardia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'vertigo' as symptom, CAST(symptom_vertigo AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'viral_pneumonia' as symptom, CAST(symptom_viral_pneumonia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'visual_acuity' as symptom, CAST(symptom_visual_acuity AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'vomiting' as symptom, CAST(symptom_vomiting AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'wart' as symptom, CAST(symptom_wart AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'water_retention' as symptom, CAST(symptom_water_retention AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'weakness' as symptom, CAST(symptom_weakness AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'weight_gain' as symptom, CAST(symptom_weight_gain AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'wheeze' as symptom, CAST(symptom_wheeze AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'xeroderma' as symptom, CAST(symptom_xeroderma AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'xerostomia' as symptom, CAST(symptom_xerostomia AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'yawn' as symptom, CAST(symptom_yawn AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'hyperhidrosis' as symptom, CAST(symptom_hyperhidrosis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
  UNION ALL
select country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date, 'pancreatitis' as symptom, CAST(symptom_pancreatitis AS FLOAT64) AS score from bigquery-public-data.covid19_symptom_search.symptom_search_country_daily where PARSE_DATE('%Y-%m-%d', date) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY) 
)
WHERE score is not null and score > 0
ORDER BY country_region_code, country_region, sub_region_1, sub_region_1_code, sub_region_2, sub_region_2_code, place_id, date
