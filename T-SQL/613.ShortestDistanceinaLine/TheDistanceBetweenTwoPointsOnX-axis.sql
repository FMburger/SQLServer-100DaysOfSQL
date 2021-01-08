USE LeetCode_ShortestDistanceinaLine
GO

SELECT 
    ABS(startingPoint.x - endingPoint.x) AS shortest
FROM point startingPoint
JOIN point endingPoint
    ON startingPoint.x != endingPoint.x