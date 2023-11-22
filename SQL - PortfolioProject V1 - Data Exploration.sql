SELECT *
FROM PortfolioProject..CovidDeaths
where continent is not null
order by 3,4

--Select *
--FROM PortfolioProject..CovidDeaths
--order by 3,4


--Select Data that we are going to be using

Select Location, date, total_cases, new_cases, total_deaths, population
FROM PortfolioProject..CovidDeaths
where continent is not null
order by 1,2

-- Looking at Total Cases vs Total Deaths
-- Shows likelihood of dying if you contract covid in your country
Select Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS DeathPercentage
FROM PortfolioProject..CovidDeaths
Where Location like '%states%'
and continent is not null
order by 1,2

Select Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS DeathPercentage
FROM PortfolioProject..CovidDeaths
Where Location = 'Asia'
order by 1,2


-- Looking at Total Cases vs Population

Select Location, date, total_cases, Population, (total_cases/population)*100 AS PopulationInfected
FROM PortfolioProject..CovidDeaths
where continent is not null
order by 1,2

Select Location, date, total_cases, Population, (total_cases/population)*100 AS PopulationInfected
FROM PortfolioProject..CovidDeaths
Where Location like '%states%'
and continent is not null
order by 1,2


-- Looking at Countries with highest infection rate compared to population

Select Location, MAX(total_cases) as HighestInfectionCount, Population, MAX((total_cases/population))*100 AS PercentPopulationInfected
FROM PortfolioProject..CovidDeaths
--Where Location = 'Europe'
Group by Location, Population
order by PercentPopulationInfected desc


-- Showing Countries with Highest Death Count per population

Select Location, MAX(cast(total_deaths as int)) as TotalDeathCount
FROM PortfolioProject..CovidDeaths
--Where Location = 'Europe'
where continent is not null
Group by Location
order by TotalDeathCount desc

-- LET'S BREAK THINGS DOWN BY CONTINENT

Select continent, MAX(cast(total_deaths as int)) as TotalDeathCount
FROM PortfolioProject..CovidDeaths
--Where Location like '%states%'
where continent is null
Group by continent
order by TotalDeathCount desc

-- Showing continent with the highest death count per population

Select continent, MAX(cast(total_deaths as int)) as TotalDeathCount
FROM PortfolioProject..CovidDeaths
--Where Location like '%states%'
where continent is not null
Group by continent
order by TotalDeathCount desc

-- GLOBAL NUMBERS

Select SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths,
	SUM(cast(new_deaths as int))/SUM(new_cases)*100 as DeathPercentage
FROM PortfolioProject..CovidDeaths
--Where Location like '%states%'
WHERE continent is not null
--group by date
order by 1,2

Select date, SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths,
	SUM(cast(new_deaths as int))/SUM(new_cases)*100 as DeathPercentage
FROM PortfolioProject..CovidDeaths
--Where Location like '%states%'
WHERE continent is not null
group by date
order by 1,2

-- Looking at Total Population vs Vaccinations

SELECT deaths.continent, deaths.location, deaths.date, deaths.population, vac.new_vaccinations
, SUM(CONVERT(INT,vac.new_vaccinations)) OVER (partition by deaths.Location order by deaths.location, 
	deaths.date) as RollingPeopleVacc
FROM PortfolioProject..CovidDeaths deaths 
Join PortfolioProject..CovidVaccinations vac
	On deaths.location = vac.location
	and deaths.date = vac.date
where deaths.continent is not null
order by 2,3



-- USE CTE


With PopvsVac (Continent, Location, Date, Population, new_vaccinations, RollingPeopleVacc)
as
(
SELECT deaths.continent, deaths.location, deaths.date, deaths.population, vac.new_vaccinations
, SUM(CONVERT(INT,vac.new_vaccinations)) OVER (partition by deaths.Location order by deaths.location, 
	deaths.date) as RollingPeopleVacc
FROM PortfolioProject..CovidDeaths deaths 
Join PortfolioProject..CovidVaccinations vac
	On deaths.location = vac.location
	and deaths.date = vac.date
where deaths.continent is not null
--order by 2,3
)
SELECT *, (RollingPeopleVacc/Population)*100
From PopvsVac



-- USE TEMP TABLE


DROP TABLE if exists #PercentPopulationVaccinated
Create Table #PercentPopulationVaccinated
(
Continent nvarchar(255),
Location nvarchar(255),
Date datetime,
Population numeric,
new_vaccinations numeric,
RollingPeopleVacc numeric
)

Insert Into #PercentPopulationVaccinated
SELECT deaths.continent, deaths.location, deaths.date, deaths.population, vac.new_vaccinations
, SUM(CONVERT(INT,vac.new_vaccinations)) OVER (partition by deaths.Location order by deaths.location, 
	deaths.date) as RollingPeopleVacc
FROM PortfolioProject..CovidDeaths deaths 
Join PortfolioProject..CovidVaccinations vac
	On deaths.location = vac.location
	and deaths.date = vac.date
where deaths.continent is not null
--order by 2,3

Select *, (RollingPeopleVacc/Population)*100
FROM #PercentPopulationVaccinated


-- Creating View to Store data for later visualization

Create View PercentPopulationVacc as
SELECT deaths.continent, deaths.location, deaths.date, deaths.population, vac.new_vaccinations
, SUM(CONVERT(INT,vac.new_vaccinations)) OVER (partition by deaths.Location order by deaths.location, 
	deaths.date) as RollingPeopleVacc
FROM PortfolioProject..CovidDeaths deaths 
Join PortfolioProject..CovidVaccinations vac
	On deaths.location = vac.location
	and deaths.date = vac.date
where deaths.continent is not null
--order by 2,3

Select *
From PercentPopulationVacc
