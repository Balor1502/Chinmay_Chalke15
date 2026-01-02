SELECT job_id,
         job_title,
         job_posted_date,
         job_location,
         salary_year_avg,
         job_schedule_type,
         name AS company_name
FROM job_postings_fact       
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id  -- Assuming company_id is the joining key
WHERE job_title = 'Data Analyst'
  AND job_location = 'Anywhere' 
  AND salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10;