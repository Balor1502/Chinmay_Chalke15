SELECT COUNT(job_id)AS job_posted_count,
job_title_short As job,
EXTRACT(MONTH FROM job_posted_date) AS month

FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'



LIMIT 10;
