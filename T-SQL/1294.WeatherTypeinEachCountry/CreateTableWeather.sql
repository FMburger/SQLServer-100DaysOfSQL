USE LeetCode_WeatherTypeinEachCountry
GO

CREATE TABLE Weather
(
	country_id int,
	weather_state varchar(50),
	day date
	PRIMARY KEY(country_id, day)
)