SELECT 
       skills,
      ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
LEFT JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
LEFT JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title = 'Data Analyst'
      AND salary_year_avg IS NOT NULL
      AND job_work_from_home = 'True'
GROUP BY skills
ORDER BY avg_salary DESC
LIMIT 25


/*Insights:
--Engineering + data skills pay the most
--The top salaries cluster around infrastructure and backend skills (Kubernetes, Elasticsearch, Golang, Cloud platforms). This shows that data analysts who can work closer to data engineering and scalable systems command significantly higher pay than pure reporting roles.

--Advanced analytics & ML tooling boosts compensation
--Libraries and platforms like Pandas, NumPy, Scikit-learn, Databricks appear consistently in the upper salary range, signaling strong demand for analysts who can build predictive models, handle large datasets, and support data science workflows—not just dashboards.

--Cloud + ecosystem knowledge is now table stakes
--Skills across AWS, GCP, IBM Cloud, GitHub, Atlassian indicate that modern data analyst roles value end-to-end ownership: data access, version control, collaboration, and deployment—driving higher salaries for analysts who operate across the full analytics lifecycle

[
  {
    "skills": "kubernetes",
    "avg_salary": "145000"
  },
  {
    "skills": "elasticsearch",
    "avg_salary": "145000"
  },
  {
    "skills": "golang",
    "avg_salary": "145000"
  },
  {
    "skills": "swift",
    "avg_salary": "140500"
  },
  {
    "skills": "pandas",
    "avg_salary": "125913"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": "125781"
  },
  {
    "skills": "gcp",
    "avg_salary": "123750"
  },
  {
    "skills": null,
    "avg_salary": "120180"
  },
  {
    "skills": "databricks",
    "avg_salary": "120000"
  },
  {
    "skills": "numpy",
    "avg_salary": "118281"
  },
  {
    "skills": "vba",
    "avg_salary": "115000"
  },
  {
    "skills": "ibm cloud",
    "avg_salary": "111500"
  },
  {
    "skills": "unix",
    "avg_salary": "110000"
  },
  {
    "skills": "aws",
    "avg_salary": "105278"
  },
  {
    "skills": "outlook",
    "avg_salary": "104833"
  },
  {
    "skills": "c++",
    "avg_salary": "103500"
  },
  {
    "skills": "matlab",
    "avg_salary": "102750"
  },
  {
    "skills": "qlik",
    "avg_salary": "101588"
  },
  {
    "skills": "dax",
    "avg_salary": "101000"
  },
  {
    "skills": "sap",
    "avg_salary": "100000"
  },
  {
    "skills": "java",
    "avg_salary": "100000"
  },
  {
    "skills": "atlassian",
    "avg_salary": "100000"
  },
  {
    "skills": "ms access",
    "avg_salary": "98857"
  },
  {
    "skills": "github",
    "avg_salary": "98333"
  },
  {
    "skills": "looker",
    "avg_salary": "98128"
  }
]/*