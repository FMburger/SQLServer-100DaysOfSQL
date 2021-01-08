USE LeetCode_ShortestDistanceinaLine
GO

SELECT 
    startingPoint.x
FROM point startingPoint 
JOIN point endingPoint
    ON startingPoint.x != endingPoint.x