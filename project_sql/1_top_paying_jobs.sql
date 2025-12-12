/* 
Question: What are the top-paying jobs for my role (Data Analyst)?
- Identify the top 10 highest paying jobs Data Analyst roles that are available remotely.
- Focus on job postings with specified salaries (remove nulls).
*/

SELECT
    job_id,
    company.name AS company_name,
    job_title_short,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM job_postings_fact
LEFT JOIN company_dim AS company ON job_postings_fact.company_id = company.company_id 
WHERE job_location = 'Anywhere' AND salary_year_avg IS NOT NULL AND job_title_short = 'Data Analyst'
ORDER BY salary_year_avg DESC
LIMIT 10;

