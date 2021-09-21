-- Databricks notebook source
 

-- COMMAND ----------
 

-- Create temporary views from the database
CREATE OR REPLACE TEMP VIEW Temp_RouteGeneralInfo
USING parquet
OPTIONS (path '/insert path/');

CREATE OR REPLACE TEMP VIEW Temp_RouteSpecialInfo
USING parquet
OPTIONS (path '/insert path/');

-- COMMAND ----------

--Create a first table to future join
CREATE OR REPLACE TEMPORARY VIEW Temp_Table1 AS
SELECT Route,ProductImportance,CustomerImportance
FROM Temp_RouteGeneralInfo
WHERE CAST(DateValue as DATE) >'2020-01-01' AND RegionValue="My Region";

SELECT * FROM Temp_Table1
LIMIT 10;

-- COMMAND ----------

--Create a second table for future join
CREATE OR REPLACE TEMPORARY VIEW Temp_Table2 AS
SELECT Route,SpecialCase
FROM Temp_RouteSpecialInfo;

SELECT * FROM Temp_Table2
LIMIT 10;

-- COMMAND ----------

--Join tables and then export data as CSV
SELECT * FROM Temp_Table1
JOIN Temp_Table2 ON Temp_Table1.Route=Temp_Table2.Route
LIMIT 10;