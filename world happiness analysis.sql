CREATE TABLE happiness (
  Country TEXT,
  Region TEXT,
  `Happiness Rank` INTEGER,
  `Happiness Score` REAL,
  `Standard Error` REAL,
  `Economy (GDP per Capita)` REAL,
  `Family` REAL,
  `Health (Life Expectancy)` REAL,
  `Freedom` REAL,
  `Trust (Government Corruption)` REAL,
  `Generosity` REAL,
  `Dystopia Residual` REAL
);

INSERT INTO happiness (Country, Region, `Happiness Rank`, `Happiness Score`, `Standard Error`, `Economy (GDP per Capita)`, `Family`, `Health (Life Expectancy)`, `Freedom`, `Trust (Government Corruption)`, `Generosity`, `Dystopia Residual`)
VALUES ('Switzerland', 'Western Europe', 1, 7.587, 0.03411, 1.39651, 1.34951, 0.94143, 0.66557, 0.41978, 0.29678, 2.51738);

SELECT * FROM happiness LIMIT 10;

SELECT * FROM happiness;

SELECT Country, Region, `Happiness Score` FROM happiness;

SELECT * FROM happiness ORDER BY `Happiness Score` DESC;

SELECT Region, AVG(`Happiness Score`) AS Average_Happiness
FROM happiness
GROUP BY Region
ORDER BY Average_Happiness DESC;

SELECT Country, `Happiness Score`
FROM happiness
ORDER BY `Happiness Score` DESC
LIMIT 10;


SELECT Country, `Happiness Score`, `Economy (GDP per Capita)`
FROM happiness
WHERE `Economy (GDP per Capita)` > (SELECT AVG(`Economy (GDP per Capita)`) FROM happiness)
  AND `Happiness Score` > (SELECT AVG(`Happiness Score`) FROM happiness)
ORDER BY `Happiness Score` DESC;

SELECT AVG(`Economy (GDP per Capita)`) AS Average_GDP, AVG(`Happiness Score`) AS Average_Happiness
FROM happiness;

SELECT Country, Region, `Happiness Score`
FROM happiness h
WHERE `Happiness Score` > (SELECT AVG(`Happiness Score`) FROM happiness WHERE Region = h.Region);

SELECT
    Country,
    Region,
    `Happiness Score`,
    RANK() OVER (PARTITION BY Region ORDER BY `Happiness Score` DESC) AS RankWithinRegion
FROM happiness;

SELECT Region, MAX(`Happiness Score`) - MIN(`Happiness Score`) AS ScoreDifference
FROM happiness
GROUP BY Region;

SELECT Country, `Economy (GDP per Capita)`, `Happiness Score`
FROM happiness
WHERE `Economy (GDP per Capita)` > (SELECT AVG(`Economy (GDP per Capita)`) FROM happiness)
  AND `Happiness Score` < (SELECT AVG(`Happiness Score`) FROM happiness);
  
SELECT Region, AVG(Family) AS AverageFamilyScore
FROM happiness
GROUP BY Region
ORDER BY AverageFamilyScore DESC
LIMIT 1;  

SELECT Country, Region, Generosity
FROM happiness 
WHERE Generosity > (SELECT AVG(Generosity) FROM happiness WHERE Region = h.Region);

SELECT
    Country,
    `Happiness Score`,
    PERCENT_RANK() OVER (ORDER BY `Happiness Score`) AS PercentileRank
FROM happiness;

SELECT Country, `Economy (GDP per Capita)`, `Happiness Score`, ABS(`Economy (GDP per Capita)` - `Happiness Score`) AS ScoreDifference
FROM happiness
ORDER BY ScoreDifference DESC;

SELECT
    Country,
    Region,
    `Happiness Score`,
    RANK() OVER (PARTITION BY Region ORDER BY `Happiness Score` DESC) AS RankWithinRegion
FROM happiness;

SELECT Region, MAX(`Happiness Score`) - MIN(`Happiness Score`) AS ScoreDifference
FROM happiness
GROUP BY Region;

SELECT Region, AVG(Family) AS AverageFamilyScore
FROM happiness
GROUP BY Region
ORDER BY AverageFamilyScore DESC
LIMIT 1;

SELECT Country, `Economy (GDP per Capita)`, `Happiness Score`, ABS(`Economy (GDP per Capita)` - `Happiness Score`) AS ScoreDifference
FROM happiness
ORDER BY ScoreDifference DESC;

SELECT
    Country,
    `Happiness Score`,
    PERCENT_RANK() OVER (ORDER BY `Happiness Score`) AS PercentileRank
FROM happiness;

SELECT Country, Region, Generosity
FROM happiness h
WHERE Generosity > (SELECT AVG(Generosity) FROM happiness WHERE Region = h.Region);

SELECT Country, `Economy (GDP per Capita)`, `Happiness Score`
FROM happiness
WHERE `Economy (GDP per Capita)` > (SELECT AVG(`Economy (GDP per Capita)`) FROM happiness)
  AND `Happiness Score` < (SELECT AVG(`Happiness Score`) FROM happiness);
  
 SELECT
    Country,
    Region,
    `Happiness Score`,
    RANK() OVER (PARTITION BY Region ORDER BY `Happiness Score` DESC) AS RankWithinRegion
FROM happiness;
