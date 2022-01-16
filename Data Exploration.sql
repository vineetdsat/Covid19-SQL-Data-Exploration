SELECT *
FROM Covid..CovidDeaths$
ORDER BY 3,4

-- Select the data that we are going to be using

SELECT Location, date, total_cases, total_deaths, population 
FROM Covid..CovidDeaths$
order by 1, 2

SELECT Location, date, total_cases,total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
FROM Covid..CovidDeaths$
WHERE Location = 'India'
order by 1, 2
