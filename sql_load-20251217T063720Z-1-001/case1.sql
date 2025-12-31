CREATE TABLE april_job AS
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 4
  AND EXTRACT(YEAR FROM job_posted_date) = 2025;

CREATE TABLE may_job AS
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 5
  AND EXTRACT(YEAR FROM job_posted_date) = 2025;
 

CREATE TABLE june_job AS
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 6
  AND EXTRACT(YEAR FROM job_posted_date) = 2025;


CREATE TABLE july_job AS
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 7
  AND EXTRACT(YEAR FROM job_posted_date) = 2025;

CREATE TABLE august_job AS
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 8
  AND EXTRACT(YEAR FROM job_posted_date) = 2025;

CREATE TABLE nov_job AS
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 11
  AND EXTRACT(YEAR FROM job_posted_date) = 2025;

CREATE TABLE dec_job AS
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 12
  AND EXTRACT(YEAR FROM job_posted_date) = 2025;

CREATE TABLE mar_job AS
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 3
  AND EXTRACT(YEAR FROM job_posted_date) = 2025;

