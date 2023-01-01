SELECT*
FROM world_cup_country_analysis

SELECT
	country,
    goals_scored AS total_goals_scored
FROM world_cup_country_analysis
ORDER BY goals_scored DESC

SELECT
	top_scorer,
    top_scorer_goals
FROM world_cup_country_analysis
ORDER BY top_scorer_goals DESC
LIMIT 10

SELECT
	country,
    red_cards
FROM world_cup_country_analysis
WHERE red_cards != 0

SELECT
	country,
    yellow_cards
FROM world_cup_country_analysis
WHERE yellow_cards >= 0
ORDER BY yellow_cards ASC

SELECT
	country,
    passes_completed
FROM world_cup_country_analysis
WHERE passes_completed >=1000
ORDER BY passes_completed DESC
lIMIT 15

SELECT*
FROM world_cup_country_analysis
WHERE
	red_cards > 0 AND yellow_cards >= 0

SELECT*
FROM world_cup_country_analysis
WHERE
	goals_scored >= 10 OR top_scorer_goals >= 5

SELECT*
FROM world_cup_country_analysis
WHERE
NOT	goals_scored >= 10 OR NOT top_scorer_goals >= 5
LIMIT 5

SELECT
	country,
    goal_attempt
FROM world_cup_country_analysis
WHERE 
	goal_attempt BETWEEN 50 AND 150
ORDER BY goal_attempt DESC
LIMIT 10

SELECT*
FROM world_cup_country_analysis
WHERE assist IN (8 , 11 , 12)
ORDER BY assist

SELECT*
FROM world_cup_country_analysis
WHERE country LIKE 'S%'

SELECT*
FROM world_cup_country_analysis
WHERE country LIKE '%A'

SELECT*
FROM world_cup_country_analysis
WHERE country LIKE '%Z%'

SELECT COUNT(*) AS total_country
FROM world_cup_country_analysis

SELECT COUNT(red_cards)
FROM world_cup_country_analysis

SELECT SUM(goals_scored) AS total_goals_scored
FROM world_cup_country_analysis

SELECT AVG(passes_completed) AS average_passes
FROM world_cup_country_analysis

SELECT MAX(assist) AS highest_assist
FROM world_cup_country_analysis

SELECT MIN(yellow_cards) lowest_yellow_card
FROM world_cup_country_analysis

SELECT
	count(*) AS total_yellow_cards,
    yellow_cards
FROM world_cup_country_analysis
GROUP BY yellow_cards

SELECT
	country AS participating_countries
FROM  world_cup_country_analysis
