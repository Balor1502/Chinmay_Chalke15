This project demonstrates my ability to design, load, query, and analyze relational data using SQL. It focuses on answering business-style questions using structured datasets related to job postings, companies, and skills.

The project is designed to reflect real-world data analyst work and is suitable for technical interviews and portfolio review.

🎯 Objective 

Practice writing efficient and readable SQL queries

Understand relational database design

Solve business problems using SQL

Demonstrate hands-on experience with real datasets

🛠️ Tech Stack

Database: PostgreSQL

Language: SQL

Tool: pgAdmin

Data Source: CSV files

🧱 Database Design

The database follows a star-schema–like structure with fact and dimension tables.

Tables Used

job_postings_fact – job-level information (fact table)

company_dim – company details

skills_dim – skills information

skills_job_dim – bridge table for job–skill mapping

Relationships

One company → many job postings

One job posting → many skills (many-to-many)

📥 Data Ingestion

Data was imported from CSV files using the \copy command. Special care was taken to:

Match column data types

Handle primary and foreign keys

Resolve file-path and permission issues

🔍 SQL Concepts Demonstrated

Joins: INNER JOIN, LEFT JOIN

Aggregations: COUNT, AVG, MAX, MIN

Filtering: WHERE, HAVING

Sorting: ORDER BY

Subqueries

Common Table Expressions (CTEs)

📊 Business Questions Answered

Which companies have the highest number of job postings?

What skills are most in demand across roles?

Which job roles require the widest skill sets?

How many skills are required per job on average?

✅ Key Insights

Identified top in-demand technical skills across job postings

Found companies with aggressive hiring trends

Observed how skill requirements vary by job role

These insights mirror common HR analytics and labor market analysis use cases.

📁 Project Structure
SQL-Project/
│
├── data/        # CSV files
├── schema/      # CREATE TABLE scripts
├── queries/     # SQL analysis queries
└── README.md
💡 What I Would Improve Next

Add indexes to improve query performance

Create views for reusable queries

Automate ETL using scripts

Connect the database to Power BI / Tableau

👤 Author

Chinmay Chalke
Aspiring Data Analyst



📄 Usage

This project is created for learning, interview preparation, and portfolio presentation
