# SQLServer - 100 Days of SQL
挑戰連續 100 天學習 SQL 語法

## Day3. [LeetCode-#1077] Project Employee III
延續前兩天的題目, 今天終於把最後一題結束了。
這題的解法是先用 LEFT JOIN 找出各專案最高經驗年數, 然後再做一次 LEFT JOIN 找出所對應的工號

#### Code
    SELECT 
	    Pid1 AS project_id,
	    Emp1 AS employee_id
    FROM(
        SELECT 
		    P1.project_id AS Pid1,
		    P1.employee_id AS Emp1,
		    experience_years AS Years1
	    FROM Project P1
        INNER JOIN Employee E1
          ON P1.employee_id = E1.employee_id) T1
	INNER JOIN(                                 
		SELECT    -- 1>找出專案最多經驗
			P2.project_id AS Pid2,
			MAX(E2.experience_years) AS Years2
		FROM Employee E2
		LEFT JOIN Project P2
		 ON E2.employee_id = P2.employee_id
		GROUP BY project_id) T2
	  ON T1.Pid1 = T2.Pid2 AND T1.Years1 = T2.Years2

#### Success
![](PNG/1077.ProjectEmployeesIII.png)

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
