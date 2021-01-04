USE LeetCode_WeatherTypeinEachCountry
GO
SELECT 
	country_name,
CASE 
    WHEN AVG(CAST(Weather.weather_state AS FLOAT)) <= 15 THEN 'Cold'
    WHEN AVG(CAST(Weather.weather_state AS FLOAT)) >= 25 THEN 'Hot'
    ELSE 'Warm'
END AS weather_type
FROM Countries
LEFT JOIN Weather
  ON Countries.country_id = Weather.country_id
WHERE Weather.day 
  BETWEEN '11/01/2019' 
  AND '11/30/2019'
GROUP BY country_name