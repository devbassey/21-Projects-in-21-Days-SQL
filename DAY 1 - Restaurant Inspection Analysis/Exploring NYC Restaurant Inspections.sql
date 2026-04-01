SELECT 
    *
FROM
    nyc_restaurant
LIMIT 10;


#-- Count total number of rows in the table.
SELECT 
    COUNT(*) AS Total_Rows
FROM
    nyc_restaurant; # THE RESULT REVEALS THAT THERE ARE 423 ROWS IN TOTAL
 
 
 
# Step 2 — Select only the columns need for the analysis
#----> Rename columns where column names have spaces in between
ALTER TABLE nyc_restaurant RENAME COLUMN `CUISINE DESCRIPTION` TO CUISINE_DESCRIPTION;
ALTER TABLE nyc_restaurant RENAME COLUMN `INSPECTION DATE` TO INSPECTION_DATE;
ALTER TABLE nyc_restaurant RENAME COLUMN `VIOLATION DESCRIPTION` TO VIOLATION_DESCRIPTION;
ALTER TABLE nyc_restaurant RENAME COLUMN `CRITICAL FLAG` TO CRITICAL_FLAG;

-- Show only the important columns
SELECT 
    DBA,
    BORO,
    CUISINE_DESCRIPTION,
    INSPECTION_DATE,
    GRADE,
    SCORE,
    VIOLATION_DESCRIPTION
FROM nyc_restaurant
LIMIT 20;


# Step 3 — Filter restaurants by grade
#---GRADE A
SELECT 
    DBA, BORO, GRADE, SCORE
FROM
    nyc_restaurant
WHERE
    GRADE = 'A'; #---> This result displays all the GRADE A restaurants in New York
    
SELECT 
    COUNT(grade) AS Grade_A
FROM
    nyc_restaurant
WHERE
    GRADE = 'A'; # ---> this results shows that there are 19 GRADE A RESTAURANTS in New York

#---GRADE B
SELECT 
    DBA, BORO, GRADE, SCORE
FROM
    nyc_restaurant
WHERE
    GRADE = 'B'; #---> This result displays all the GRADE A restaurants in New York
    
SELECT 
    COUNT(grade) AS Grade_B
FROM
    nyc_restaurant
WHERE
    GRADE = 'B'; # ---> this results shows that there are 19 GRADE B RESTAURANTS in New York

