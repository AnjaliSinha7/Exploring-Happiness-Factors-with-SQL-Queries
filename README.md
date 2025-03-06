# Exploring-Happiness-Factors-with-SQL-Queries


## Description

This project investigates the World Happiness Report dataset using SQL to identify the key factors that influence happiness levels across the globe. The analysis explores various indicators such as economic performance, social support, health, freedom, generosity, and corruption to understand their impact on happiness scores.

## Dataset

The project utilizes the World Happiness Report dataset, which can be found on Kaggle: [https://www.kaggle.com/](https://www.kaggle.com/) (search for "World Happiness Report"). The dataset contains information on various factors related to happiness for different countries and regions.

## Tools

The following tools were used in this project:

* **SQLite:** A lightweight and embedded database engine used to store and manage the data.
* **SQLite Online:** A web-based SQLite viewer used to write and execute SQL queries.
* **CSV to SQL Converter:** An online tool used to convert the CSV dataset into SQL INSERT statements for importing into the database.

## Queries

The `queries/analysis.sql` file contains the SQL queries used in this analysis. Some of the key queries include:

* **Average Happiness Score by Region:** Calculates the average happiness score for each region.
* **Top 10 Happiest Countries:** Identifies the top 10 countries with the highest happiness scores.
* **Countries with High GDP and Happiness:** Finds countries that have both high GDP per capita and high happiness scores.
* **Correlation between GDP and Happiness:** Examines the relationship between GDP per capita and happiness scores.
* **Countries with Higher Than Average Social Support:** Identifies countries with social support levels above the average.
* **Countries with Low Corruption Perception and High Happiness:** Finds countries that have low perceived corruption and high happiness scores.

## Results

The analysis revealed several interesting insights:

* **Regional Differences:** There are significant variations in happiness scores across different regions.
* **Key Factors:** Economic factors, social support, health, and freedom appear to be strongly correlated with happiness.
* **Corruption:** Countries with lower perceived corruption tend to have higher happiness scores.

## Instructions

To replicate this project:

1. Download the World Happiness Report dataset from Kaggle.
2. Convert the CSV dataset to SQL INSERT statements using a CSV to SQL converter.
3. Go to SQLite Online ([https://sqliteonline.com/](https://sqliteonline.com/)).
4. Create a new database and execute the SQL INSERT statements to import the data.
5. Write and execute the SQL queries provided in the `queries/analysis.sql` file.
6. Analyze the results and draw conclusions.

## Conclusion

This project demonstrates the use of SQL in analyzing and understanding the factors that contribute to global happiness. The findings highlight the importance of economic development, social support, health, freedom, and good governance in promoting happiness and well-being.
