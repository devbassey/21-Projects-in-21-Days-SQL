# Exploring NYC Restaurant Inspections

A comprehensive SQL-based exploratory data analysis of NYC restaurant inspection records across the five boroughs.

## 📌 Project Overview
This project explores the **NYC Restaurant Inspections dataset** using SQL to uncover trends in:

- borough-level inspection activity
- grade distribution
- critical vs non-critical violations
- data quality issues
- violation hotspots
- public health risk patterns

The goal is to understand **restaurant compliance trends across New York City** and identify areas for deeper regulatory and operational insights.

---

## 🛠️ Tools Used
- **SQL**
- Dataset: `nyc_restaurant`
- Query techniques:
  - `SELECT`
  - `COUNT()`
  - `GROUP BY`
  - `ORDER BY`
  - `WHERE`
  - filtering
  - data cleaning with `DELETE`

---

## 🗂️ Dataset Columns
Key fields used in the analysis:

| Column | Description |
|---|---|
| `DBA` | Restaurant name |
| `BORO` | Borough location |
| `CUISINE_DESCRIPTION` | Restaurant cuisine |
| `ACTION` | Regulatory action taken |
| `VIOLATION_CODE` | Inspection violation code |
| `GRADE` | Inspection grade |
| `CRITICAL_FLAG` | Criticality of violation |

---

## 🧹 Data Cleaning Process
Before analysis, the dataset was cleaned to improve integrity.

### ✅ Cleaning Steps
1. Removed records where `BORO = 'Not Recorded'`
2. Removed **3,433** records where `ACTION = 'Missing'`
3. Removed **2,302** records where `VIOLATION_CODE = 'Not Applicable'`

This ensured only meaningful inspection records remained.

---

## Borough Distribution
Inspection activity across NYC boroughs ranked as:

1. Manhattan
2. Brooklyn
3. Queens
4. Bronx
5. Staten Island

### Insight
Manhattan recorded the highest inspection volume, which aligns with its large restaurant density.

---

## Grade Distribution Analysis
The project analyzed grades across:

- A
- B
- C
- Not Yet Graded

### 📌 Key Finding
A significant **144,727 records** were marked as **Not Yet Graded**, suggesting pending grade assignment or legacy inspection records.

### ✅ Insight
Most graded restaurants received an **A**, showing strong compliance with health standards.

---

## Critical Flag Analysis
The `CRITICAL_FLAG` field was grouped into:

- Critical
- Not Critical
- Not Applicable

### 📌 Insight
Critical violations represented the **largest share**, indicating frequent public-health-risk issues such as:

- poor food storage
- pest infestations
- unsafe temperatures
- contamination risks

---

## Violation Analysis
Detailed record-level analysis was performed using:

- restaurant name
- borough
- cuisine
- action taken
- violation code
- critical flag

A filtered analysis on `CRITICAL_FLAG = 'Critical'` helped isolate the most severe cases.

---

## Critical Violations by Borough
Ranking of total critical violations:

1. Manhattan
2. Brooklyn
3. Queens
4. Bronx
5. Staten Island

### 📌 Insight
Manhattan led in critical violations, likely driven by higher inspection volume.

A future **rate-based comparison per restaurant** would provide a fairer borough comparison.

---

## Key Findings
- Data cleaning removed low-quality records across 3 major dimensions
- Manhattan had the highest inspection and critical violation counts
- **144,727 inspections were not yet graded**
- Most graded restaurants achieved **Grade A**
- Critical violations were highly prevalent
- Staten Island consistently had the lowest counts

---

## Recommendations
Future analysis can explore:

- violations per restaurant by borough
- cuisine-based risk analysis
- time-series violation trends
- deeper action-response patterns
- investigation of ungraded inspections

---

## 📈 Business / Public Health Value
This project demonstrates how SQL can be used for:

- public health analytics
- compliance monitoring
- anomaly detection
- urban policy insights
- borough-level risk profiling

---

## 👨‍💻 Author
**Utibe Bassey**  
Data Analyst | SQL | Data Storytelling | Business Intelligence
bassey.utibe22@gmail.com

---

## ⭐ If you found this useful
Feel free to star the repository and connect with me.

