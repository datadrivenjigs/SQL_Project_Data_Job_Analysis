select 
count(job_id) as number_of_jobs,
    job_title_short,
    job_location,
    CASE
    When job_location = 'anywhere' then 'remote'
    when job_location = 'New York, NY' then 'local'
    else 'onsite'
    END AS location_category
from 
job_postings_fact;
where 
job_title_short = 'data analyst'
group by 
location_category;

/*

label new column as follows:
-'anywhere' jobs as 'remote'
-'New York, NY' jobs as 'local'
-otherwise 'onsite'

*/