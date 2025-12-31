WITH remote_jobs AS (
  SELECT skills_to_job.skill_id, COUNT(*) AS skill_count
  FROM skills_job_dim AS skills_to_job
  INNER JOIN job_postings_fact AS jobs
    ON jobs.job_id = skills_to_job.job_id
  WHERE jobs.job_work_from_home = TRUE
  GROUP BY skills_to_job.skill_id
)
SELECT s.skill_id, s.skills AS skill_name, r.skill_count
FROM remote_jobs r
INNER JOIN skills_dim s ON s.skill_id = r.skill_id
ORDER BY r.skill_count DESC
LIMIT 10;