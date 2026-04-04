
----EXPLORING NYC Restaurant Inspections Report-----
SELECT count (*) FROM nyc_restaurant; -- This query counts the total number of records in the nyc_restaurant table, which represents the total number of restaurant inspections in the dataset.

select top 10 * from nyc_restaurant;	-- This query retrieves the first 10 records from the nyc_restaurant table, allowing us to get a glimpse of the data structure and the types of information available for each restaurant inspection.

select * from nyc_restaurant;


---Data Cleaning: 
---1. Removing Records with Missing Borough Information
DELETE from nyc_restaurant
WHERE BORO = 'Not Recorded'; -- This query deletes all records from the nyc_restaurant table where the BORO column has the value 'Not Recorded', which helps to clean the dataset by removing entries with missing borough information.


---2. Removing Records with Missing Action Information
select count(Action)
from nyc_restaurant
where action = 'Missing'; -- This query counts the number of records in the nyc_restaurant table where the action column has the value 'Missing', which helps to identify how many inspections have missing action information. (3433 ROWS WAS COUNTED)

DELETE from nyc_restaurant
WHERE action = 'Missing'; -- This query deletes all records from the nyc_restaurant table where the action column has the value 'Missing', which helps to clean the dataset by removing entries with missing action information.

---3. Removing Records with Missing Violation Code Information
SELECT count(violation_code)
FROM nyc_restaurant
WHERE violation_code = 'Not Applicable'; -- This query counts the number of records in the nyc_restaurant table where the violation_code column has the value 'Not Applicable', which helps to identify how many inspections have missing violation code information. (2302 ROWS WAS COUNTED)

DELETE from nyc_restaurant
WHERE violation_code = 'Not Applicable'; -- This query deletes all records from the nyc_restaurant table where the violation_code column has the value 'Not Applicable', which helps to clean the dataset by removing entries with missing violation code information.

select * from nyc_restaurant;


---Display the Unique Borough in the Dataset and their count
select distinct BORO
FROM nyc_restaurant; -- This query retrieves the distinct values from the BORO column in the nyc_restaurant table, which helps to identify the unique boroughs represented in the dataset.

---Count the number of records for each borough
SELECT 
    BORO, 
    COUNT(*) AS record_count
FROM 
    nyc_restaurant
WHERE 
    BORO IN ('Brooklyn', 'Bronx', 'Manhattan', 'Staten Island', 'Queens')
GROUP BY 
    BORO
ORDER BY 
    record_count DESC; -- This query counts the number of records for each borough in the nyc_restaurant table, filtering for the five main boroughs (Brooklyn, Bronx, Manhattan, Staten Island, Queens). The results are grouped by borough and ordered in descending order based on the count of records.


---Snapshot of the data after cleaning
Select top 10 * from nyc_restaurant; -- This query retrieves the first 10 records from the nyc_restaurant table after the data cleaning process, allowing us to see the updated dataset and verify that the cleaning steps were successful.

select count(GRADE)
from nyc_restaurant
WHERE GRADE = 'Not Yet Graded'; -- This query counts the number of records in the nyc_restaurant table where the GRADE column has the value 'Not Yet Graded', which helps to identify how many inspections have not yet received a grade. (144727 ROWS WAS COUNTED)



---Grade Distribution Analysis
SELECT 
    GRADE, 
    COUNT(*) AS grade_count
FROM 
    nyc_restaurant
WHERE 
    GRADE IN ('A', 'B', 'C', 'Not Yet Graded')
GROUP BY 
    GRADE
ORDER BY 
    grade_count DESC; -- This query counts the number of records for each grade in the nyc_restaurant table, filtering for the grades 'A', 'B', 'C', and 'Not Yet Graded'. The results are grouped by grade and ordered in descending order based on the count of records.


--Violation Code Analysis
select 
    dba,
    boro,
    cuisine_description,
    action,
    violation_code,
    critical_flag
from
    nyc_restaurant -- This query retrieves specific columns (dba, boro, cuisine_description, action, violation_code, critical_flag) from the nyc_restaurant table, which allows us to analyze the details of restaurant inspections, including the name of the restaurant (dba), its location (boro), the type of cuisine, the action taken during the inspection, the violation code, and whether the violation is considered critical.


--Critical Violation Analysis
select 
    dba,
    boro,
    cuisine_description,
    action,
    violation_code,
    critical_flag
from
    nyc_restaurant
WHERE 
    critical_flag = 'Critical'; -- This query retrieves specific columns (dba, boro, cuisine_description, action, violation_code, critical_flag) from the nyc_restaurant table where the critical_flag column has the value 'Critical', allowing us to focus on analyzing the details of inspections that involved critical violations.


---Count the total number of critical violations for each borough
SELECT 
    BORO, 
    COUNT(*) AS total_critical
FROM 
    nyc_restaurant
WHERE 
    BORO IN ('Brooklyn', 'Bronx', 'Manhattan', 'Staten Island', 'Queens')
    AND critical_flag = 'Critical'
GROUP BY 
    BORO
ORDER BY 
    total_critical DESC; -- This query counts the total number of critical violations for each borough in the nyc_restaurant table, filtering for the five main boroughs (Brooklyn, Bronx, Manhattan, Staten Island, Queens) and where the critical_flag column has the value 'Critical'. The results are grouped by borough and ordered in descending order based on the total count of critical violations.

