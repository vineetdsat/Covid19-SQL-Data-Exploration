SELECT *
FROM Covid..CovidDeaths$
ORDER BY 3,4

-- Select the data that we are going to be using


SELECT Location, date, total_cases, total_deaths, population 
FROM Covid..CovidDeaths$
order by 1, 2


-- Query for Getting the Death Percentage
SELECT Location, date, total_cases,total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
FROM Covid..CovidDeaths$
WHERE Location = 'India'
order by 1, 2

-- Query for Percentage of people got Covid
SELECT Location, date, total_cases, (total_cases/population)*100 as PopulationEffected
FROM Covid..CovidDeaths$
WHERE Location = 'India'
order by 1, 2

-- Average Death Percentage around the world
SELECT Location, MAX(population) as population, ROUND(AVG((total_deaths/total_cases)*100),2) as AverageDeathPercentage
FROM Covid..CovidDeaths$
WHERE continent is NOT NULL  -- issue with the dataset
GROUP BY Location, population
ORDER BY 2 DESC


-- 