SELECT 
    endingPoint.x
FROM point startingPoint 
JOIN point endingPoint
    ON startingPoint.x != endingPoint.x