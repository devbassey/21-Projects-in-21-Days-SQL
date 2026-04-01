#---->EXPLORING NYC RESTAURANT INSPECTIONS<----

# STEP 1 — Preview the table
# I used the SELECT keyword to preview the snapshot of the restaurant data. I limit the search result to 10.

-- See ALL columns for the first 10 rows
SELECT 
    *
FROM
    nyc_restaurant
LIMIT 10;


-- Count total number of rows in the table.
SELECT 
    COUNT(*) AS Total_Rows
FROM
    nyc_restaurant; # THE RESULT REVEALS THAT THERE ARE 423 ROWS IN TOTAL
 
 
 
# Step 2 — Select only the columns need for the analysis
#----> Rename columns where column names have spaces in between
ALTER TABLE nyc_restaurant RENAME COLUMN `CUISINE DESCRIPTION` TO CUISINE_DESCRIPTION;


SELECT 
    DBA,
    BORO,
    'CUISINE DESCRIPTION',
    'INSPECTION DATE',
    GRADE,
    SCORE,
    'VIOLATION DESCRIPTION'
FROM nyc_restaurant
LIMIT 20;
