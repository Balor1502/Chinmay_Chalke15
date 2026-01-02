WITH skill_demand AS (
    SELECT
        sd.skill_id,
        sd.skills,
        COUNT(sjd.job_id) AS demand_count
    FROM job_postings_fact jpf
    LEFT JOIN skills_job_dim sjd
        ON jpf.job_id = sjd.job_id
    LEFT JOIN skills_dim sd
        ON sjd.skill_id = sd.skill_id
    WHERE jpf.job_title = 'Data Analyst'
      AND jpf.job_work_from_home = 'True'
      AND jpf.salary_year_avg IS NOT NULL
    GROUP BY sd.skill_id, sd.skills
),
average_salary AS (
    SELECT
        sd.skill_id,
        ROUND(AVG(jpf.salary_year_avg), 0) AS avg_salary
    FROM job_postings_fact jpf
    LEFT JOIN skills_job_dim sjd
        ON jpf.job_id = sjd.job_id
    LEFT JOIN skills_dim sd
        ON sjd.skill_id = sd.skill_id
    WHERE jpf.job_title = 'Data Analyst'
      AND jpf.job_work_from_home = 'True'
      AND jpf.salary_year_avg IS NOT NULL
    GROUP BY sd.skill_id
)
SELECT
    sd.skills,
    sd.demand_count,
    sal.avg_salary
FROM skill_demand sd
JOIN average_salary sal
    ON sd.skill_id = sal.skill_id
WHERE demand_count > 10    
ORDER BY sal.avg_salary DESC,
         sd.demand_count DESC
LIMIT 25;
