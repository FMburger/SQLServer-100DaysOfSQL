# SQLServer - 100 Days of SQL
挑戰連續 100 天學習 SQL 語法

## Day2. [LeetCode-#1076] Project Employee II
該不會要來個一題多解?!😲

#### Code
    SELECT
        project_id 
    FROM 
        Project 
    GROUP BY project_id
    HAVING COUNT(employee_id) = (
        SELECT TOP 1
            COUNT(employee_id) 
        FROM 
            Project 
        GROUP BY project_id 
  

#### Success
![](PNG/1076.ProjectEmployeesII.png)

#### References

## Day1. [LeetCode-#1075] Project Employee I
### Hello world~~
最近蠻常解 LeetCode 的題目, 所以第一天就從 LeetCode 開始吧!! 

#### Code
    SELECT
        project_id,
        Round(
            Avg(
                CAST(
                    experience_years AS decimal(10,2)
                )
            ),
            2
        ) AS average_years
    FROM Project P 
    INNER JOIN Employee E 
      ON P.employee_id = E.employee_id
    GROUP BY project_id

#### Success
![](PNG/1075.ProjectEmployeesI.png)

#### References
1. [SQL CAST() inside AVG() for decimal value](https://www.w3resource.com/sql/aggregate-functions/avg-decimal-places-using-cast-within-avg.php)
2. [SQL Server Decimal](https://www.sqlservertutorial.net/sql-server-basics/sql-server-decimal/#:~:text=Overview%20of%20SQL%20Server%20DECIMAL,use%20the%20DECIMAL%20data%20type.&text=In%20this%20syntax%3A,right%20of%20the%20decimal%20point.)
