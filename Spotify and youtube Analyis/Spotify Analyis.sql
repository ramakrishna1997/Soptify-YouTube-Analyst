CREATE DATABASE Spotify;
USE Spotify;
SELECT * FROM cleaned_dataset;
-- Write an SQL query to solve the given problem statement.
-- Which is the most viewed song track on youtube?
SELECT Track, Max(Views) as total
FROM cleaned_dataset
WHERE most_playedon="YouTube"
GROUP BY Track
ORDER BY total DESC
LIMIT 1;

-- Write an SQL query to solve the given problem statement.
-- Which Song track is streamed most on Spotify?
SELECT Track,Stream FROM cleaned_dataset
WHERE most_playedon='Spotify'
GROUP BY Track,Stream
ORDER BY Stream DESC
LIMIT 1;

-- EnergyLiveness ratio is one of the popular ways to measure the quality of the song, which are the top 5 songs that have the highest energyliveness ratio.
SELECT * FROM cleaned_dataset;

SELECT Track,EnergyLiveness 
FROM cleaned_dataset
ORDER BY EnergyLiveness DESC
LIMIT 5;

-- let us assume a situation where an artist named Black Eyed Peas wants to analyze his songs. The artist wants to know which platform is capable of keeping his song track more engaged. 
-- To check this he assigns you this task and wants you to report to him where his song tracks are more played on. compare the platforms
SELECT * FROM cleaned_dataset;

SELECT most_playedon,count(*) as enagged
FROM cleaned_dataset
WHERE Artist='Black Eyed Peas'
GROUP BY most_playedon
ORDER BY enagged DESC
LIMIT 1;

-- Gorillaz wants to know their most liked song on youtube. Report to them with their most liked song along with the Energy and Tempo of the song.

SELECT * FROM cleaned_dataset;
SELECT Track,Likes,Tempo FROM cleaned_dataset
WHERE Artist='Gorillaz'
ORDER BY Likes DESC
LIMIT 1;

-- Which Album types are more prominent on Spotify?

SELECT Album_type,count(Album_type)  FROM cleaned_dataset
GROUP BY Album_type
ORDER BY count(Album_type) DESC
limit 2;

-- Write an SQL query to solve the given problem statement.
-- Spotify's most loved song tracks are to be declared soon. Help Spotify choose the top 5 most streamed+youtube viewed song track.
SELECT * FROM cleaned_dataset;
SELECT Track,Stream+Views as total FROM cleaned_dataset
GROUP BY Track,total
ORDER BY total DESC
LIMIT 5























