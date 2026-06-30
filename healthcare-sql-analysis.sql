create database healthcare_dataset;

use healthcare_dataset;

SELECT COUNT(*) AS Total_Employees
FROM healthcare_dataset;

SELECT Employee_ID, COUNT(*)
FROM healthcare_dataset
GROUP BY Employee_ID
HAVING COUNT(*) > 1;

SELECT Burnout_Frequency,
       COUNT(*) AS Total_Employees
FROM healthcare_dataset
GROUP BY Burnout_Frequency
ORDER BY Total_Employees DESC;

SELECT ROUND(AVG(Job_Satisfaction),2) AS Avg_Job_Satisfaction
FROM healthcare_dataset;

SELECT ROUND(AVG(Mental_Health_Absences),2) AS Avg_Absences
FROM healthcare_dataset;

SELECT Turnover_Intention,
       COUNT(*) AS Total_Employees
FROM healthcare_dataset
GROUP BY Turnover_Intention;

SELECT Access_to_EAPs,
       COUNT(*) AS Total_Employees
FROM healthcare_dataset
GROUP BY Access_to_EAPs;

SELECT COUNT(*) AS High_Stress_Employees
FROM healthcare_dataset
WHERE Stress_level >= 8;

SELECT Department,
       COUNT(*) AS High_Stress_Count
FROM healthcare_dataset
WHERE Stress_level >= 8
GROUP BY Department
ORDER BY High_Stress_Count DESC;

SELECT Department,
       ROUND(AVG(Stress_level),2) AS Avg_Stress
FROM healthcare_dataset
GROUP BY Department
ORDER BY Avg_Stress DESC;

SELECT Employee_Type,
       ROUND(AVG(Stress_level),2) AS Avg_Stress
FROM healthcare_dataset
GROUP BY Employee_Type
ORDER BY Avg_Stress DESC;

SELECT Workplace_Factor,
       ROUND(AVG(Stress_level),2) AS Avg_Stress
FROM healthcare_dataset
GROUP BY Workplace_Factor
ORDER BY Avg_Stress DESC;

SELECT Employee_Type,
       Stress_level,
       COUNT(*) AS Total_Employees
FROM healthcare_dataset
GROUP BY Employee_Type, Stress_level
ORDER BY Employee_Type, Stress_level DESC;

SELECT Employee_ID,
       Employee_Type,
       Department,
       Stress_level
FROM healthcare_dataset
WHERE Stress_level =
(
    SELECT MAX(Stress_level)
    FROM healthcare_dataset
);

SELECT
ROUND(
COUNT(CASE WHEN Stress_level >= 8 THEN 1 END) * 100.0 / COUNT(*),
2
) AS High_Stress_Percentage
FROM healthcare_dataset;

SELECT Department,
       Burnout_Frequency,
       COUNT(*) AS Total_Employees
FROM healthcare_dataset
GROUP BY Department, Burnout_Frequency
ORDER BY Department;

SELECT Employee_Type,
       Burnout_Frequency,
       COUNT(*) AS Total_Employees
FROM healthcare_dataset
GROUP BY Employee_Type, Burnout_Frequency
ORDER BY Employee_Type;

SELECT Burnout_Frequency,
       ROUND(AVG(Stress_level),2) AS Avg_Stress
FROM healthcare_dataset
GROUP BY Burnout_Frequency
ORDER BY Avg_Stress DESC;

SELECT Burnout_Frequency,
       ROUND(AVG(Job_Satisfaction),2) AS Avg_Job_Satisfaction
FROM healthcare_dataset
GROUP BY Burnout_Frequency
ORDER BY Avg_Job_Satisfaction;

SELECT Burnout_Frequency,
       ROUND(AVG(Mental_Health_Absences),2) AS Avg_Absences
FROM healthcare_dataset
GROUP BY Burnout_Frequency
ORDER BY Avg_Absences DESC;

SELECT Burnout_Frequency,
       Turnover_Intention,
       COUNT(*) AS Total_Employees
FROM healthcare_dataset
GROUP BY Burnout_Frequency, Turnover_Intention
ORDER BY Burnout_Frequency;

SELECT Department,
       ROUND(AVG(Stress_level),2) AS Avg_Stress,
       COUNT(*) AS Burnout_Cases
FROM healthcare_dataset
WHERE Burnout_Frequency = 'Often'
GROUP BY Department
ORDER BY Avg_Stress DESC;

SELECT Employee_ID,
       Employee_Type,
       Department,
       Stress_level,
       Burnout_Frequency
FROM healthcare_dataset
WHERE Stress_level >= 8
AND Burnout_Frequency = 'Often';

SELECT
ROUND(
COUNT(CASE WHEN Burnout_Frequency = 'Often' THEN 1 END) * 100.0 / COUNT(*),
2
) AS Burnout_Percentage
FROM healthcare_dataset;

SELECT Employee_Type,
       ROUND(AVG(Mental_Health_Absences),2) AS Avg_Absences
FROM healthcare_dataset
GROUP BY Employee_Type
ORDER BY Avg_Absences DESC;

SELECT Employee_ID,
       Employee_Type,
       Department,
       Mental_Health_Absences
FROM healthcare_dataset
ORDER BY Mental_Health_Absences DESC
LIMIT 10;

SELECT Employee_ID,
       Employee_Type,
       Department,
       Mental_Health_Absences
FROM healthcare_dataset
WHERE Mental_Health_Absences >
(
    SELECT AVG(Mental_Health_Absences)
    FROM healthcare_dataset
);

SELECT Stress_level,
       ROUND(AVG(Mental_Health_Absences),2) AS Avg_Absences
FROM healthcare_dataset
GROUP BY Stress_level
ORDER BY Stress_level DESC;

SELECT Burnout_Frequency,
       ROUND(AVG(Mental_Health_Absences),2) AS Avg_Absences
FROM healthcare_dataset
GROUP BY Burnout_Frequency
ORDER BY Avg_Absences DESC;

SELECT Job_Satisfaction,
       ROUND(AVG(Mental_Health_Absences),2) AS Avg_Absences
FROM healthcare_dataset
GROUP BY Job_Satisfaction
ORDER BY Job_Satisfaction;

SELECT Workplace_Factor,
       ROUND(AVG(Mental_Health_Absences),2) AS Avg_Absences
FROM healthcare_dataset
GROUP BY Workplace_Factor
ORDER BY Avg_Absences DESC;

SELECT Employee_ID,
       Employee_Type,
       Department,
       Stress_level,
       Mental_Health_Absences
FROM healthcare_dataset
WHERE Stress_level >= 8
AND Mental_Health_Absences >
(
    SELECT AVG(Mental_Health_Absences)
    FROM healthcare_dataset
);

SELECT Department,
       ROUND(AVG(Mental_Health_Absences),2) AS Avg_Absences,
       RANK() OVER (ORDER BY AVG(Mental_Health_Absences) DESC) AS Department_Rank
FROM healthcare_dataset
GROUP BY Department;

SELECT Department,
       COUNT(*) AS Employees_Planning_To_Leave
FROM healthcare_dataset
WHERE Turnover_Intention = 'Yes'
GROUP BY Department
ORDER BY Employees_Planning_To_Leave DESC;

SELECT Employee_Type,
       COUNT(*) AS Employees_Planning_To_Leave
FROM healthcare_dataset
WHERE Turnover_Intention = 'Yes'
GROUP BY Employee_Type
ORDER BY Employees_Planning_To_Leave DESC;

SELECT Turnover_Intention,
       ROUND(AVG(Stress_level),2) AS Avg_Stress
FROM healthcare_dataset
GROUP BY Turnover_Intention;

SELECT Turnover_Intention,
       ROUND(AVG(Job_Satisfaction),2) AS Avg_Job_Satisfaction
FROM healthcare_dataset
GROUP BY Turnover_Intention;

SELECT Turnover_Intention,
       ROUND(AVG(Mental_Health_Absences),2) AS Avg_Absences
FROM healthcare_dataset
GROUP BY Turnover_Intention;

SELECT Access_to_EAPs,
       Turnover_Intention,
       COUNT(*) AS Total_Employees
FROM healthcare_dataset
GROUP BY Access_to_EAPs, Turnover_Intention
ORDER BY Access_to_EAPs;

SELECT Burnout_Frequency,
       Turnover_Intention,
       COUNT(*) AS Total_Employees
FROM healthcare_dataset
GROUP BY Burnout_Frequency, Turnover_Intention
ORDER BY Burnout_Frequency;

SELECT Workplace_Factor,
       COUNT(*) AS Total_Employees
FROM healthcare_dataset
WHERE Turnover_Intention = 'Yes'
GROUP BY Workplace_Factor
ORDER BY Total_Employees DESC;

SELECT Employee_ID,
       Employee_Type,
       Department,
       Stress_level,
       Burnout_Frequency,
       Job_Satisfaction,
       Mental_Health_Absences
FROM healthcare_dataset
WHERE Turnover_Intention = 'Yes'
AND Stress_level >= 8
AND Job_Satisfaction <= 2;

SELECT Department,
       COUNT(*) AS Employees_Leaving,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS Dept_Rank
FROM healthcare_dataset
WHERE Turnover_Intention = 'Yes'
GROUP BY Department;

WITH Ranked_Employees AS (
    SELECT Employee_ID,
           Department,
           Mental_Health_Absences,
           ROW_NUMBER() OVER (
               PARTITION BY Department
               ORDER BY Mental_Health_Absences DESC
           ) AS rn
    FROM healthcare_dataset
)

SELECT *
FROM Ranked_Employees
WHERE rn <= 3;

SELECT Department,
       ROUND(AVG(Stress_level),2) AS Avg_Stress
FROM healthcare_dataset
GROUP BY Department
HAVING AVG(Stress_level) >
(
    SELECT AVG(Stress_level)
    FROM healthcare_dataset
);

SELECT Stress_level,
       COUNT(*) AS Employees,
       SUM(COUNT(*)) OVER (ORDER BY Stress_level) AS Running_Total
FROM healthcare_dataset
GROUP BY Stress_level;

SELECT Employee_Type,
       ROUND(AVG(Stress_level),2) AS Avg_Stress,
       DENSE_RANK() OVER (
           ORDER BY AVG(Stress_level) DESC
       ) AS Stress_Rank
FROM healthcare_dataset
GROUP BY Employee_Type;

CREATE VIEW Department_Summary AS
SELECT Department,
       COUNT(*) AS Total_Employees,
       ROUND(AVG(Stress_level),2) AS Avg_Stress,
       ROUND(AVG(Job_Satisfaction),2) AS Avg_Satisfaction,
       ROUND(AVG(Mental_Health_Absences),2) AS Avg_Absences
FROM healthcare_dataset
GROUP BY Department;

SELECT Department,
       ROUND(AVG(Job_Satisfaction),2) AS Avg_Satisfaction
FROM healthcare_dataset
GROUP BY Department
ORDER BY Avg_Satisfaction DESC
LIMIT 1;

SELECT Employee_ID,
       Employee_Type,
       Department,
       Stress_level,
       Job_Satisfaction,
       Mental_Health_Absences,
       (
           Stress_level +
           Mental_Health_Absences +
           (6 - Job_Satisfaction)
       ) AS Risk_Score
FROM healthcare_dataset
ORDER BY Risk_Score DESC
LIMIT 10;