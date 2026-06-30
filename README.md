# Healthcare Workforce Analytics using SQL

## Project Overview

Healthcare organizations often struggle with employee burnout, rising stress levels, mental health absenteeism, and employee turnover. These issues can negatively impact workforce productivity, employee well-being, and patient care.

This project analyzes a healthcare workforce dataset using **MySQL** to identify key factors contributing to employee stress, burnout, mental health absences, and turnover intention. The analysis provides actionable insights that can help HR teams make data-driven decisions to improve employee retention and workplace well-being.

---

## Business Problem

The HR department wants to answer the following questions:

- Which departments have the highest employee stress?
- Which employee roles experience the most burnout?
- Does high stress lead to higher burnout?
- Do burnout and stress increase mental health absences?
- Which workplace factors contribute most to employee dissatisfaction?
- Which employees are at the highest risk of leaving?
- Which departments require immediate HR intervention?

---

## Dataset Information

The dataset contains employee information from a healthcare organization, including:

- Employee ID
- Employee Type
- Department
- Workplace Factor
- Stress Level
- Burnout Frequency
- Job Satisfaction
- Access to Employee Assistance Programs (EAPs)
- Mental Health Absences
- Turnover Intention

---

## Tools Used

- MySQL Workbench
- SQL

---

## SQL Concepts Demonstrated

This project covers a wide range of SQL concepts, including:

- SELECT
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- Aggregate Functions (COUNT, AVG)
- CASE Statements
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
  - RANK()
  - DENSE_RANK()
  - ROW_NUMBER()
- Views

---

## Analysis Performed

### 1. Data Exploration
- Count total employees
- Check duplicate Employee IDs
- Understand workforce distribution
- Calculate average job satisfaction
- Calculate average mental health absences

### 2. Stress Analysis
- Employees with high stress
- Stress by department
- Stress by employee type
- Workplace factors contributing to stress
- Employees with maximum stress levels

### 3. Burnout Analysis
- Burnout by department
- Burnout by employee type
- Relationship between stress and burnout
- Burnout vs Job Satisfaction
- Burnout vs Mental Health Absences

### 4. Mental Health Analysis
- Average absences by department
- Average absences by employee type
- Employees above average absences
- Top employees with highest absences
- Relationship between stress, burnout and absences

### 5. Turnover Analysis
- Turnover by department
- Turnover by employee type
- Stress vs Turnover
- Burnout vs Turnover
- Job Satisfaction vs Turnover
- EAP Access vs Turnover
- Workplace Factors vs Turnover

### 6. Advanced SQL Analysis
- Employee Risk Score
- Top 10 High-Risk Employees
- Ranking departments using Window Functions
- Top employees within each department using ROW_NUMBER()
- Department Summary View

---

## Key Business Insights

The analysis helps HR identify:

- Departments experiencing the highest stress levels
- Employee roles with frequent burnout
- Workplace factors affecting employee well-being
- Employees with excessive mental health absences
- Factors influencing employee turnover
- High-risk employees requiring immediate HR attention

---

## Project Outcome

Using SQL, this project transforms raw healthcare employee data into meaningful HR insights that can support:

- Employee retention strategies
- Mental health initiatives
- Burnout reduction programs
- Better workforce planning
- Data-driven HR decision making

---

## Files Included

- Healthcare_sql_Analysis.sql
```

---

## Author

**Sumedh Patil**

Aspiring Data Analyst skilled in SQL, Excel, and Power BI, focused on solving business problems through data analysis.
