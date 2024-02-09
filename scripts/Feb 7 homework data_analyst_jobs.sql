--Question 1 
SELECT *
FROM data_analyst_jobs;
--Answer 1793 rows

--Question 2
SELECT *
FROM data_analyst_jobs
LIMIT 10;
--Answer ExxonMobil

--Question 3
SELECT title
FROM data_analyst_jobs
WHERE location= 'TN' OR location= 'KY';
--Answer TN=21; TN or KY= 27

--Question 4
SELECT title, star_rating
FROM data_analyst_jobs
WHERE star_rating>= '4' AND location= 'TN';
--Answer 4

--Question 5
SELECT *
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
--Answer 151

--Question 6
SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
GROUP BY state
ORDER BY avg_rating DESC;
--Answer NE (Nebraska)

--Question 7
SELECT DISTINCT title 
FROM data_analyst_jobs;
--Answer 881

--Question 8
Select DISTINCT title
FROM data_analyst_jobs
WHERE location= 'CA'
--Answer 230

--Question 9
SELECT company, AVG(star_rating)
FROM data_analyst_jobs
WHERE review_count > '5000'
GROUP BY company;
--Answer 41

--Question 10
SELECT company, review_count, AVG(star_rating)
FROM data_analyst_jobs
WHERE review_count > '5000'
GROUP BY company, review_count, star_rating
ORDER BY star_rating DESC;
--Answer American Express rating 4.2

--Question 11
SELECT DISTINCT title
FROM data_analyst_jobs
WHERE title LIKE 'Analyst%'; 
--Answer is 10

--Question 12
SELECT DISTINCT title
FROM data_analyst_jobs
WHERE title NOT LIKE '%Analyst%' AND title NOT LIKE '%Analytics%' 
--Answer they are capatalized

BONUS 

 --1
 SELECT *
 FROM data_analyst_jobs
 WHERE skill= 'SQL' and domain IS NOT NULL;
 --Answer 23 jobs

--2
SELECT domain
FROM data_analyst_jobs
WHERE domain IS NOT NULL
ORDER BY days_since_posting DESC;
--Answer Internet and Software

--3
--Junior Data Analyst, Data Analyst and Systems/Data Analyst 1
SELECT days_since_posting
FROM data_analyst_jobs
WHERE days_since_posting>= '21'
--Answer 1038