-- VIEWING DATA 

-- Data from www.kaggle.com/dsv/5063467
SELECT *
FROM CancerDeaths..CancerPopulation

SELECT *
FROM CancerDeaths..TotalDeaths;

SELECT *
FROM CancerDeaths..DiseaseBurden;

-- View column names
SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'CancerPopulation';

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'TotalDeaths';

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DiseaseBurden';

-- RENAME COLUMNS

-- Rename columns for CancerPopulation
EXEC sp_rename 'CancerDeaths..CancerPopulation.Entity'
	,'country'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.Code'
	,'code'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.Year'
	,'year'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Liver cancer - Sex: Both - Age: Age-standardized (P]'
	,'liver_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Kidney cancer - Sex: Both - Age: Age-standardized (]'
	,'kidney_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Larynx cancer - Sex: Both - Age: Age-standardized (]'
	,'larynx_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Breast cancer - Sex: Both - Age: Age-standardized (]'
	,'breast_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Thyroid cancer - Sex: Both - Age: Age-standardized]'
	,'thyroid_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Bladder cancer - Sex: Both - Age: Age-standardized]'
	,'bladder_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Uterine cancer - Sex: Both - Age: Age-standardized]'
	,'uterine_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Ovarian cancer - Sex: Both - Age: Age-standardized]'
	,'ovarian_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Stomach cancer - Sex: Both - Age: Age-standardized]'
	,'stomach_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Prostate cancer - Sex: Both - Age: Age-standardized]'
	,'prostate_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Cervical cancer - Sex: Both - Age: Age-standardized]'
	,'cervical_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Testicular cancer - Sex: Both - Age: Age-standardiz]'
	,'testicular_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Pancreatic cancer - Sex: Both - Age: Age-standardiz]'
	,'pancreatic_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Esophageal cancer - Sex: Both - Age: Age-standardiz]'
	,'esophageal_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Nasopharynx cancer - Sex: Both - Age: Age-standardi]'
	,'nasopharynx_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Colon and rectum cancer - Sex: Both - Age: Age-stan]'
	,'colon_rectum_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Non-melanoma skin cancer - Sex: Both - Age: Age-sta]'
	,'non_melanoma_skin_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Lip and oral cavity cancer - Sex: Both - Age: Age-s]'
	,'lip_oral_cavity_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Brain and nervous system cancer - Sex: Both - Age:]'
	,'brain_cns_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Tracheal, bronchus, and lung cancer - Sex: Both - A]'
	,'lung_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Gallbladder and biliary tract cancer - Sex: Both -]'
	,'gallbladder_biliary_tract_cancer_prevalence'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..CancerPopulation.[Prevalence - Neoplasms - Sex: Both - Age: Age-standardized (Perc]'
	,'neoplasms_prevalence'
	,'COLUMN';

-- Rename columns for TotalDeaths
EXEC sp_rename 'CancerDeaths..TotalDeaths.Entity'
	,'country'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.Code'
	,'code'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.Year'
	,'year'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Liver cancer - Sex: Both - Age: All Ages (Number)]'
	,'liver_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Kidney cancer - Sex: Both - Age: All Ages (Number)]'
	,'kidney_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Lip and oral cavity cancer - Sex: Both - Age: All Ages]'
	,'lip_oral_cavity_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Tracheal, bronchus, and lung cancer - Sex: Both - Age:]'
	,'lung_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Larynx cancer - Sex: Both - Age: All Ages (Number)]'
	,'larynx_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Gallbladder and biliary tract cancer - Sex: Both - Age:]'
	,'gallbladder_biliary_tract_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Malignant skin melanoma - Sex: Both - Age: All Ages (Nu]'
	,'malignant_skin_melanoma_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Leukemia - Sex: Both - Age: All Ages (Number)]'
	,'leukemia_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Hodgkin lymphoma - Sex: Both - Age: All Ages (Number)]'
	,'hodgkin_lymphoma_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Multiple myeloma - Sex: Both - Age: All Ages (Number)]'
	,'multiple_myeloma_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Other neoplasms - Sex: Both - Age: All Ages (Number)]'
	,'other_neoplasms_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Breast cancer - Sex: Both - Age: All Ages (Number)]'
	,'breast_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Prostate cancer - Sex: Both - Age: All Ages (Number)]'
	,'prostate_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Thyroid cancer - Sex: Both - Age: All Ages (Number)]'
	,'thyroid_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Stomach cancer - Sex: Both - Age: All Ages (Number)]'
	,'stomach_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Bladder cancer - Sex: Both - Age: All Ages (Number)]'
	,'bladder_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Uterine cancer - Sex: Both - Age: All Ages (Number)]'
	,'uterine_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Ovarian cancer - Sex: Both - Age: All Ages (Number)]'
	,'ovarian_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Cervical cancer - Sex: Both - Age: All Ages (Number)]'
	,'cervical_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Brain and central nervous system cancer - Sex: Both - A]'
	,'brain_cns_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Non-Hodgkin lymphoma - Sex: Both - Age: All Ages (Numbe]'
	,'non_hodgkin_lymphoma_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Pancreatic cancer - Sex: Both - Age: All Ages (Number)]'
	,'pancreatic_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Esophageal cancer - Sex: Both - Age: All Ages (Number)]'
	,'esophageal_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Testicular cancer - Sex: Both - Age: All Ages (Number)]'
	,'testicular_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Nasopharynx cancer - Sex: Both - Age: All Ages (Number)]'
	,'nasopharynx_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Other pharynx cancer - Sex: Both - Age: All Ages (Numbe]'
	,'other_pharynx_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Colon and rectum cancer - Sex: Both - Age: All Ages (Nu]'
	,'colon_rectum_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Non-melanoma skin cancer - Sex: Both - Age: All Ages (N]'
	,'non_melanoma_skin_cancer_deaths'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..TotalDeaths.[Deaths - Mesothelioma - Sex: Both - Age: All Ages (Number)]'
	,'mesothelioma_deaths'
	,'COLUMN';

-- Rename columns for DiseaseBurden
EXEC sp_rename 'CancerDeaths..DiseaseBurden.Entity'
	,'country'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.Code'
	,'code'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.Year'
	,'year'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Other pharynx cancer -]'
	,'other_pharynx_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Liver cancer - Sex: Bot]'
	,'liver_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Breast cancer - Sex: Bo]'
	,'breast_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Tracheal, bronchus, and]'
	,'lung_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Gallbladder and biliary]'
	,'gallbladder_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Kidney cancer - Sex: Bo]'
	,'kidney_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Larynx cancer - Sex: Bo]'
	,'larynx_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Stomach cancer - Sex: B]'
	,'stomach_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Thyroid cancer - Sex: B]'
	,'thyroid_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Uterine cancer - Sex: B]'
	,'uterine_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Ovarian cancer - Sex: B]'
	,'ovarian_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Bladder cancer - Sex: B]'
	,'bladder_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Cervical cancer - Sex:]'
	,'cervical_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Prostate cancer - Sex:]'
	,'prostate_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Brain and central nervo]'
	,'brain_cns_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Pancreatic cancer - Sex]'
	,'pancreatic_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Testicular cancer - Sex]'
	,'testicular_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Esophageal cancer - Sex]'
	,'esophageal_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Nasopharynx cancer - Se]'
	,'nasopharynx_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Colon and rectum cancer]'
	,'colon_rectum_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Non-melanoma skin cance]'
	,'non_melanoma_skin_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Lip and oral cavity can]'
	,'lip_oral_cavity_cancer_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Malignant skin melanoma]'
	,'malignant_skin_melanoma_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Other malignant neoplas]'
	,'other_malignant_neoplasms_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Mesothelioma - Sex: Bot]'
	,'mesothelioma_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Hodgkin lymphoma - Sex:]'
	,'hodgkin_lymphoma_dalys'
	,'COLUMN';

EXEC sp_rename 'CancerDeaths..DiseaseBurden.[DALYs (Disability-Adjusted Life Years) - Non-Hodgkin lymphoma -]'
	,'non_hodgkin_lymphoma_dalys'
	,'COLUMN';

-- The first data source is missing a population column, so I referred to a second data source
-- Data from www.kaggle.com/datasets/kaggleashwin/population-dataset
SELECT *
FROM CancerDeaths..Population;

-- TEMP TABLE
-- Reformat data to that of the first data source

DROP TABLE IF exists #Population
CREATE TABLE #Population (
	name NVARCHAR(MAX)
	,code NVARCHAR(MAX)
	,year INT
	,population BIGINT
	);

INSERT INTO #Population
SELECT [Country Name] AS name
	,[Country Code] AS code
	,CONVERT(INT, [Year]) AS year
	,[Population] AS population
FROM (
	SELECT [Country Name]
		,[Country Code]
		,F33 AS [1990]
		,F34 AS [1991]
		,F35 AS [1992]
		,F36 AS [1993]
		,F37 AS [1994]
		,F38 AS [1995]
		,F39 AS [1996]
		,F40 AS [1997]
		,F41 AS [1998]
		,F42 AS [1999]
		,F43 AS [2000]
		,F44 AS [2001]
		,F45 AS [2002]
		,F46 AS [2003]
		,F47 AS [2004]
		,F48 AS [2005]
		,F49 AS [2006]
		,F50 AS [2007]
		,F51 AS [2008]
		,F52 AS [2009]
		,F53 AS [2010]
		,F54 AS [2011]
		,F55 AS [2012]
		,F56 AS [2013]
		,F57 AS [2014]
		,F58 AS [2015]
		,F59 AS [2016]
		,F60 AS [2017]
		,F61 AS [2018]
		,F62 AS [2019]
	FROM CancerDeaths..Population
	) AS Source
UNPIVOT([Population] FOR [Year] IN (
			[1990]
			,[1991]
			,[1992]
			,[1993]
			,[1994]
			,[1995]
			,[1996]
			,[1997]
			,[1998]
			,[1999]
			,[2000]
			,[2001]
			,[2002]
			,[2003]
			,[2004]
			,[2005]
			,[2006]
			,[2007]
			,[2008]
			,[2009]
			,[2010]
			,[2011]
			,[2012]
			,[2013]
			,[2014]
			,[2015]
			,[2016]
			,[2017]
			,[2018]
			,[2019]
			)) AS Unpivoted

SELECT *
FROM #Population;

-- View NULL values in code
SELECT *
FROM CancerDeaths..CancerPopulation
WHERE code IS NULL;

SELECT *
FROM CancerDeaths..TotalDeaths
WHERE code IS NULL;

SELECT *
FROM CancerDeaths..DiseaseBurden
WHERE code IS NULL;

-- It seems that most the 'countries' with a NULL value in 'code' is not a country, but a category/region
-- It includes countries like Scotland, England, Wales, but there is already United Kingdom, so I will just exclude these

-- DATA EXPLORATION

-- Which country has the highest average cancer deaths per year?

SELECT TOP 5 code
	,CAST(SUM(liver_cancer_deaths + kidney_cancer_deaths + lip_oral_cavity_cancer_deaths + lung_cancer_deaths + larynx_cancer_deaths + gallbladder_biliary_tract_cancer_deaths + malignant_skin_melanoma_deaths + leukemia_deaths + hodgkin_lymphoma_deaths + multiple_myeloma_deaths + other_neoplasms_deaths + breast_cancer_deaths + prostate_cancer_deaths + thyroid_cancer_deaths + stomach_cancer_deaths + bladder_cancer_deaths + uterine_cancer_deaths + ovarian_cancer_deaths + cervical_cancer_deaths + brain_cns_cancer_deaths + non_hodgkin_lymphoma_deaths + pancreatic_cancer_deaths + esophageal_cancer_deaths + testicular_cancer_deaths + nasopharynx_cancer_deaths + other_pharynx_cancer_deaths + colon_rectum_cancer_deaths + non_melanoma_skin_cancer_deaths + mesothelioma_deaths) / 29 AS INT) AS average_deaths
FROM CancerDeaths..TotalDeaths
WHERE code IS NOT NULL
	AND code != 'OWID_WRL'
GROUP BY code
ORDER BY average_deaths DESC;

-- Overall trend of cancer deaths over the years

SELECT year
	,SUM(liver_cancer_deaths) AS liver_cancer_deaths
	,SUM(kidney_cancer_deaths) AS kidney_cancer_deaths
	,SUM(lip_oral_cavity_cancer_deaths) AS lip_oral_cavity_cancer_deaths
	,SUM(lung_cancer_deaths) AS lung_cancer_deaths
	,SUM(larynx_cancer_deaths) AS larynx_cancer_deaths
	,SUM(gallbladder_biliary_tract_cancer_deaths) AS gallbladder_biliary_tract_cancer_deaths
	,SUM(malignant_skin_melanoma_deaths) AS malignant_skin_melanoma_deaths
	,SUM(leukemia_deaths) AS leukemia_deaths
	,SUM(hodgkin_lymphoma_deaths) AS hodgkin_lymphoma_deaths
	,SUM(multiple_myeloma_deaths) AS multiple_myeloma_deaths
	,SUM(other_neoplasms_deaths) AS other_neoplasms_deaths
	,SUM(breast_cancer_deaths) AS breast_cancer_deaths
	,SUM(prostate_cancer_deaths) AS prostate_cancer_deaths
	,SUM(thyroid_cancer_deaths) AS thyroid_cancer_deaths
	,SUM(stomach_cancer_deaths) AS stomach_cancer_deaths
	,SUM(bladder_cancer_deaths) AS bladder_cancer_deaths
	,SUM(uterine_cancer_deaths) AS uterine_cancer_deaths
	,SUM(ovarian_cancer_deaths) AS ovarian_cancer_deaths
	,SUM(cervical_cancer_deaths) AS cervical_cancer_deaths
	,SUM(brain_cns_cancer_deaths) AS brain_cns_cancer_deaths
	,SUM(non_hodgkin_lymphoma_deaths) AS non_hodgkin_lymphoma_deaths
	,SUM(pancreatic_cancer_deaths) AS pancreatic_cancer_deaths
	,SUM(esophageal_cancer_deaths) AS esophageal_cancer_deaths
	,SUM(testicular_cancer_deaths) AS testicular_cancer_deaths
	,SUM(nasopharynx_cancer_deaths) AS nasopharynx_cancer_deaths
	,SUM(other_pharynx_cancer_deaths) AS other_pharynx_cancer_deaths
	,SUM(colon_rectum_cancer_deaths) AS colon_rectum_cancer_deaths
	,SUM(non_melanoma_skin_cancer_deaths) AS non_melanoma_skin_cancer_deaths
	,SUM(mesothelioma_deaths) AS mesothelioma_deaths
FROM CancerDeaths..TotalDeaths
GROUP BY year
ORDER BY year;

-- Which cancer had the highest deaths in 2019 in the UK?

WITH ranked_country
AS (
	SELECT country
		,code
		,year
		,CancerType
		,Deaths
	FROM CancerDeaths..TotalDeaths
	UNPIVOT(Deaths FOR CancerType IN (
				liver_cancer_deaths
				,kidney_cancer_deaths
				,lip_oral_cavity_cancer_deaths
				,lung_cancer_deaths
				,larynx_cancer_deaths
				,gallbladder_biliary_tract_cancer_deaths
				,malignant_skin_melanoma_deaths
				,leukemia_deaths
				,hodgkin_lymphoma_deaths
				,multiple_myeloma_deaths
				,other_neoplasms_deaths
				,breast_cancer_deaths
				,prostate_cancer_deaths
				,thyroid_cancer_deaths
				,stomach_cancer_deaths
				,bladder_cancer_deaths
				,uterine_cancer_deaths
				,ovarian_cancer_deaths
				,cervical_cancer_deaths
				,brain_cns_cancer_deaths
				,non_hodgkin_lymphoma_deaths
				,pancreatic_cancer_deaths
				,esophageal_cancer_deaths
				,testicular_cancer_deaths
				,nasopharynx_cancer_deaths
				,other_pharynx_cancer_deaths
				,colon_rectum_cancer_deaths
				,non_melanoma_skin_cancer_deaths
				,mesothelioma_deaths
				)) AS Unpivoted
	)
SELECT country
	,code
	,year
	,cancer_type
	,death_count
FROM (
	SELECT country
		,code
		,year
		,CancerType AS cancer_type
		,Deaths AS death_count
		,ROW_NUMBER() OVER (
			PARTITION BY code
			,year ORDER BY Deaths DESC
			) AS rn
	FROM ranked_country
	) Ranked
WHERE rn = 1
	AND code = 'GBR'
	AND year = 2019;

--Which cancer has the highest mortality per year in the world?
WITH ranked_world
AS (
	SELECT year
		,CancerType
		,SUM(Deaths) AS TotalDeaths
		,ROW_NUMBER() OVER (
			PARTITION BY year ORDER BY SUM(Deaths) DESC
			) AS rn
	FROM CancerDeaths..TotalDeaths
	UNPIVOT(Deaths FOR CancerType IN (
				liver_cancer_deaths
				,kidney_cancer_deaths
				,lip_oral_cavity_cancer_deaths
				,lung_cancer_deaths
				,larynx_cancer_deaths
				,gallbladder_biliary_tract_cancer_deaths
				,malignant_skin_melanoma_deaths
				,leukemia_deaths
				,hodgkin_lymphoma_deaths
				,multiple_myeloma_deaths
				,other_neoplasms_deaths
				,breast_cancer_deaths
				,prostate_cancer_deaths
				,thyroid_cancer_deaths
				,stomach_cancer_deaths
				,bladder_cancer_deaths
				,uterine_cancer_deaths
				,ovarian_cancer_deaths
				,cervical_cancer_deaths
				,brain_cns_cancer_deaths
				,non_hodgkin_lymphoma_deaths
				,pancreatic_cancer_deaths
				,esophageal_cancer_deaths
				,testicular_cancer_deaths
				,nasopharynx_cancer_deaths
				,other_pharynx_cancer_deaths
				,colon_rectum_cancer_deaths
				,non_melanoma_skin_cancer_deaths
				,mesothelioma_deaths
				)) AS Unpivoted
	GROUP BY CancerType
		,year
	)
SELECT year
	,CancerType AS cancer_type
	,TotalDeaths AS total_deaths
FROM ranked_world
WHERE rn = 1
ORDER BY year;

-- To perform more indepth analysis, I need to merge this dataset with the CancerPopulation and Population Datasets
-- To make it easier, I will just make a new table with all the data

DROP TABLE IF exists CancerDeaths.dbo.CancerRate
CREATE TABLE CancerDeaths.dbo.CancerRate (
	country VARCHAR(255)
	,code VARCHAR(255)
	,year INT
	,liver_cancer_prevalence DECIMAL(18, 2)
	,kidney_cancer_prevalence DECIMAL(18, 2)
	,larynx_cancer_prevalence DECIMAL(18, 2)
	,breast_cancer_prevalence DECIMAL(18, 2)
	,thyroid_cancer_prevalence DECIMAL(18, 2)
	,bladder_cancer_prevalence DECIMAL(18, 2)
	,uterine_cancer_prevalence DECIMAL(18, 2)
	,ovarian_cancer_prevalence DECIMAL(18, 2)
	,stomach_cancer_prevalence DECIMAL(18, 2)
	,prostate_cancer_prevalence DECIMAL(18, 2)
	,cervical_cancer_prevalence DECIMAL(18, 2)
	,testicular_cancer_prevalence DECIMAL(18, 2)
	,pancreatic_cancer_prevalence DECIMAL(18, 2)
	,esophageal_cancer_prevalence DECIMAL(18, 2)
	,nasopharynx_cancer_prevalence DECIMAL(18, 2)
	,colon_rectum_cancer_prevalence DECIMAL(18, 2)
	,non_melanoma_skin_cancer_prevalence DECIMAL(18, 2)
	,lip_oral_cavity_cancer_prevalence DECIMAL(18, 2)
	,brain_nervous_system_cancer_prevalence DECIMAL(18, 2)
	,lung_cancer_prevalence DECIMAL(18, 2)
	,gallbladder_biliary_tract_cancer_prevalence DECIMAL(18, 2)
	,neoplasms_prevalence DECIMAL(18, 2)
	,liver_cancer_deaths INT
	,kidney_cancer_deaths INT
	,lip_oral_cavity_cancer_deaths INT
	,lung_cancer_deaths INT
	,larynx_cancer_deaths INT
	,gallbladder_biliary_tract_cancer_deaths INT
	,malignant_skin_melanoma_deaths INT
	,leukemia_deaths INT
	,hodgkin_lymphoma_deaths INT
	,multiple_myeloma_deaths INT
	,other_neoplasms_deaths INT
	,breast_cancer_deaths INT
	,prostate_cancer_deaths INT
	,thyroid_cancer_deaths INT
	,stomach_cancer_deaths INT
	,bladder_cancer_deaths INT
	,uterine_cancer_deaths INT
	,ovarian_cancer_deaths INT
	,cervical_cancer_deaths INT
	,brain_cns_cancer_deaths INT
	,non_hodgkin_lymphoma_deaths INT
	,pancreatic_cancer_deaths INT
	,esophageal_cancer_deaths INT
	,testicular_cancer_deaths INT
	,nasopharynx_cancer_deaths INT
	,other_pharynx_cancer_deaths INT
	,colon_rectum_cancer_deaths INT
	,non_melanoma_skin_cancer_deaths INT
	,mesothelioma_deaths INT
	,other_pharynx_cancer_dalys DECIMAL(18, 2)
	,liver_cancer_dalys DECIMAL(18, 2)
	,breast_cancer_dalys DECIMAL(18, 2)
	,lung_cancer_dalys DECIMAL(18, 2)
	,gallbladder_cancer_dalys DECIMAL(18, 2)
	,kidney_cancer_dalys DECIMAL(18, 2)
	,larynx_cancer_dalys DECIMAL(18, 2)
	,stomach_cancer_dalys DECIMAL(18, 2)
	,thyroid_cancer_dalys DECIMAL(18, 2)
	,uterine_cancer_dalys DECIMAL(18, 2)
	,ovarian_cancer_dalys DECIMAL(18, 2)
	,bladder_cancer_dalys DECIMAL(18, 2)
	,cervical_cancer_dalys DECIMAL(18, 2)
	,prostate_cancer_dalys DECIMAL(18, 2)
	,brain_cns_cancer_dalys DECIMAL(18, 2)
	,pancreatic_cancer_dalys DECIMAL(18, 2)
	,testicular_cancer_dalys DECIMAL(18, 2)
	,esophageal_cancer_dalys DECIMAL(18, 2)
	,nasopharynx_cancer_dalys DECIMAL(18, 2)
	,colon_rectum_cancer_dalys DECIMAL(18, 2)
	,non_melanoma_skin_cancer_dalys DECIMAL(18, 2)
	,lip_oral_cavity_cancer_dalys DECIMAL(18, 2)
	,malignant_skin_melanoma_dalys DECIMAL(18, 2)
	,other_malignant_neoplasms_dalys DECIMAL(18, 2)
	,mesothelioma_dalys DECIMAL(18, 2)
	,hodgkin_lymphoma_dalys DECIMAL(18, 2)
	,non_hodgkin_lymphoma_dalys DECIMAL(18, 2)
	,population INT
	);

INSERT INTO CancerDeaths.dbo.CancerRate
SELECT DISTINCT cp.country
	,cp.code
	,cp.year
	,cp.liver_cancer_prevalence
	,cp.kidney_cancer_prevalence
	,cp.larynx_cancer_prevalence
	,cp.breast_cancer_prevalence
	,cp.thyroid_cancer_prevalence
	,cp.bladder_cancer_prevalence
	,cp.uterine_cancer_prevalence
	,cp.ovarian_cancer_prevalence
	,cp.stomach_cancer_prevalence
	,cp.prostate_cancer_prevalence
	,cp.cervical_cancer_prevalence
	,cp.testicular_cancer_prevalence
	,cp.pancreatic_cancer_prevalence
	,cp.esophageal_cancer_prevalence
	,cp.nasopharynx_cancer_prevalence
	,cp.colon_rectum_cancer_prevalence
	,cp.non_melanoma_skin_cancer_prevalence
	,cp.lip_oral_cavity_cancer_prevalence
	,cp.brain_nervous_system_cancer_prevalence
	,cp.lung_cancer_prevalence
	,cp.gallbladder_biliary_tract_cancer_prevalence
	,cp.neoplasms_prevalence
	,td.liver_cancer_deaths
	,td.kidney_cancer_deaths
	,td.lip_oral_cavity_cancer_deaths
	,td.lung_cancer_deaths
	,td.larynx_cancer_deaths
	,td.gallbladder_biliary_tract_cancer_deaths
	,td.malignant_skin_melanoma_deaths
	,td.leukemia_deaths
	,td.hodgkin_lymphoma_deaths
	,td.multiple_myeloma_deaths
	,td.other_neoplasms_deaths
	,td.breast_cancer_deaths
	,td.prostate_cancer_deaths
	,td.thyroid_cancer_deaths
	,td.stomach_cancer_deaths
	,td.bladder_cancer_deaths
	,td.uterine_cancer_deaths
	,td.ovarian_cancer_deaths
	,td.cervical_cancer_deaths
	,td.brain_cns_cancer_deaths
	,td.non_hodgkin_lymphoma_deaths
	,td.pancreatic_cancer_deaths
	,td.esophageal_cancer_deaths
	,td.testicular_cancer_deaths
	,td.nasopharynx_cancer_deaths
	,td.other_pharynx_cancer_deaths
	,td.colon_rectum_cancer_deaths
	,td.non_melanoma_skin_cancer_deaths
	,td.mesothelioma_deaths
	,db.other_pharynx_cancer_dalys
	,db.liver_cancer_dalys
	,db.breast_cancer_dalys
	,db.lung_cancer_dalys
	,db.gallbladder_cancer_dalys
	,db.kidney_cancer_dalys
	,db.larynx_cancer_dalys
	,db.stomach_cancer_dalys
	,db.thyroid_cancer_dalys
	,db.uterine_cancer_dalys
	,db.ovarian_cancer_dalys
	,db.bladder_cancer_dalys
	,db.cervical_cancer_dalys
	,db.prostate_cancer_dalys
	,db.brain_cns_cancer_dalys
	,db.pancreatic_cancer_dalys
	,db.testicular_cancer_dalys
	,db.esophageal_cancer_dalys
	,db.nasopharynx_cancer_dalys
	,db.colon_rectum_cancer_dalys
	,db.non_melanoma_skin_cancer_dalys
	,db.lip_oral_cavity_cancer_dalys
	,db.malignant_skin_melanoma_dalys
	,db.other_malignant_neoplasms_dalys
	,db.mesothelioma_dalys
	,db.hodgkin_lymphoma_dalys
	,db.non_hodgkin_lymphoma_dalys
	,p.population
FROM CancerDeaths..CancerPopulation AS cp
LEFT JOIN CancerDeaths..TotalDeaths AS td ON cp.code = td.code
	AND cp.year = td.year
LEFT JOIN CancerDeaths..DiseaseBurden AS db ON cp.code = db.code
	AND cp.year = db.year
LEFT JOIN #Population AS p ON cp.code = p.code
	AND cp.year = p.year
WHERE cp.code IS NOT NULL
	AND td.code IS NOT NULL
	AND db.code IS NOT NULL
	AND p.code IS NOT NULL

SELECT *
FROM CancerDeaths..CancerRate
ORDER BY country
	,year

-- What is the mortality rate of each cancer in 2019?

WITH ranked_country AS (
		SELECT country
			,code
			,year
			,CancerType
			,Deaths
			,population
		FROM CancerDeaths..CancerRate
		UNPIVOT(Deaths FOR CancerType IN (
					liver_cancer_deaths
					,kidney_cancer_deaths
					,lip_oral_cavity_cancer_deaths
					,lung_cancer_deaths
					,larynx_cancer_deaths
					,gallbladder_biliary_tract_cancer_deaths
					,malignant_skin_melanoma_deaths
					,leukemia_deaths
					,hodgkin_lymphoma_deaths
					,multiple_myeloma_deaths
					,other_neoplasms_deaths
					,breast_cancer_deaths
					,prostate_cancer_deaths
					,thyroid_cancer_deaths
					,stomach_cancer_deaths
					,bladder_cancer_deaths
					,uterine_cancer_deaths
					,ovarian_cancer_deaths
					,cervical_cancer_deaths
					,brain_cns_cancer_deaths
					,non_hodgkin_lymphoma_deaths
					,pancreatic_cancer_deaths
					,esophageal_cancer_deaths
					,testicular_cancer_deaths
					,nasopharynx_cancer_deaths
					,other_pharynx_cancer_deaths
					,colon_rectum_cancer_deaths
					,non_melanoma_skin_cancer_deaths
					,mesothelioma_deaths
					)) AS Unpivoted
		)

SELECT country
	,code
	,year
	,cancer_type
	,CAST(ROUND(Deaths * 1.0 / population * 1.0 * 100000, 2) AS FLOAT) AS mortality_rate
FROM (
	SELECT country
		,code
		,year
		,CancerType AS cancer_type
		,Deaths
		,population
		,ROW_NUMBER() OVER (
			PARTITION BY code
			,year ORDER BY (Deaths * 1.0 / population * 1.0 * 100000) DESC
			) AS rn
	FROM ranked_country
	) Ranked
WHERE rn = 1
	AND year = 2019
ORDER BY mortality_rate DESC;

-- Has there been any significant change in mortality rates for breast cancers over time in the UK?

WITH ranked_country
AS (
	SELECT country
		,code
		,year
		,CancerType
		,Deaths
		,population
	FROM CancerDeaths..CancerRate
	UNPIVOT(Deaths FOR CancerType IN (
				liver_cancer_deaths
				,kidney_cancer_deaths
				,lip_oral_cavity_cancer_deaths
				,lung_cancer_deaths
				,larynx_cancer_deaths
				,gallbladder_biliary_tract_cancer_deaths
				,malignant_skin_melanoma_deaths
				,leukemia_deaths
				,hodgkin_lymphoma_deaths
				,multiple_myeloma_deaths
				,other_neoplasms_deaths
				,breast_cancer_deaths
				,prostate_cancer_deaths
				,thyroid_cancer_deaths
				,stomach_cancer_deaths
				,bladder_cancer_deaths
				,uterine_cancer_deaths
				,ovarian_cancer_deaths
				,cervical_cancer_deaths
				,brain_cns_cancer_deaths
				,non_hodgkin_lymphoma_deaths
				,pancreatic_cancer_deaths
				,esophageal_cancer_deaths
				,testicular_cancer_deaths
				,nasopharynx_cancer_deaths
				,other_pharynx_cancer_deaths
				,colon_rectum_cancer_deaths
				,non_melanoma_skin_cancer_deaths
				,mesothelioma_deaths
				)) AS Unpivoted
	)
SELECT country
	,code
	,year
	,cancer_type
	,CAST(ROUND(Deaths * 1.0 / population * 1.0 * 100000, 2) AS FLOAT) AS mortality_rate
FROM (
	SELECT country
		,code
		,year
		,CancerType AS cancer_type
		,Deaths
		,population
		,ROW_NUMBER() OVER (
			PARTITION BY code
			,year ORDER BY (Deaths * 1.0 / population * 1.0 * 100000) DESC
			) AS rn
	FROM ranked_country
	) Ranked
WHERE cancer_type = 'breast_cancer_deaths'
	AND code = 'GBR'
ORDER BY year
	,mortality_rate DESC;

-- Which cancer had the highest incidence in 2019 in the UK?

WITH incidence_rate
AS (
	SELECT country
		,code
		,year
		,CancerType
		,Incidence
		,population
	FROM CancerDeaths..CancerRate
	UNPIVOT(Incidence FOR CancerType IN (
				liver_cancer_prevalence
				,kidney_cancer_prevalence
				,larynx_cancer_prevalence
				,breast_cancer_prevalence
				,thyroid_cancer_prevalence
				,bladder_cancer_prevalence
				,uterine_cancer_prevalence
				,ovarian_cancer_prevalence
				,stomach_cancer_prevalence
				,prostate_cancer_prevalence
				,cervical_cancer_prevalence
				,testicular_cancer_prevalence
				,pancreatic_cancer_prevalence
				,esophageal_cancer_prevalence
				,nasopharynx_cancer_prevalence
				,colon_rectum_cancer_prevalence
				,non_melanoma_skin_cancer_prevalence
				,lip_oral_cavity_cancer_prevalence
				,brain_nervous_system_cancer_prevalence
				,lung_cancer_prevalence
				,gallbladder_biliary_tract_cancer_prevalence
				,neoplasms_prevalence
				)) AS Unpivoted
	)
SELECT country
	,code
	,year
	,cancer_type
	,Incidence AS incidence
FROM (
	SELECT country
		,code
		,year
		,CancerType AS cancer_type
		,Incidence
		,population
		,ROW_NUMBER() OVER (
			PARTITION BY code
			,year ORDER BY Incidence DESC
			) AS rn
	FROM incidence_rate
	) Ranked
WHERE rn = 1
	AND year = 2019
	AND code = 'GBR'
ORDER BY incidence DESC;

-- What is the rate of survival for breast cancer in the UK?
-- This isn't very accurate because the incidence was age-standardised and in percent

WITH incidence_rate
AS (
	SELECT country
		,code
		,year
		,CancerTypeI
		,CancerTypeD
		,Incidence
		,population
		,Deaths
	FROM CancerDeaths..CancerRate
	UNPIVOT(Incidence FOR CancerTypeI IN (
				liver_cancer_prevalence
				,kidney_cancer_prevalence
				,larynx_cancer_prevalence
				,breast_cancer_prevalence
				,thyroid_cancer_prevalence
				,bladder_cancer_prevalence
				,uterine_cancer_prevalence
				,ovarian_cancer_prevalence
				,stomach_cancer_prevalence
				,prostate_cancer_prevalence
				,cervical_cancer_prevalence
				,testicular_cancer_prevalence
				,pancreatic_cancer_prevalence
				,esophageal_cancer_prevalence
				,nasopharynx_cancer_prevalence
				,colon_rectum_cancer_prevalence
				,non_melanoma_skin_cancer_prevalence
				,lip_oral_cavity_cancer_prevalence
				,brain_nervous_system_cancer_prevalence
				,lung_cancer_prevalence
				,gallbladder_biliary_tract_cancer_prevalence
				,neoplasms_prevalence
				)) AS Unpivoted
	UNPIVOT(Deaths FOR CancerTypeD IN (
				liver_cancer_deaths
				,kidney_cancer_deaths
				,lip_oral_cavity_cancer_deaths
				,lung_cancer_deaths
				,larynx_cancer_deaths
				,gallbladder_biliary_tract_cancer_deaths
				,malignant_skin_melanoma_deaths
				,leukemia_deaths
				,hodgkin_lymphoma_deaths
				,multiple_myeloma_deaths
				,other_neoplasms_deaths
				,breast_cancer_deaths
				,prostate_cancer_deaths
				,thyroid_cancer_deaths
				,stomach_cancer_deaths
				,bladder_cancer_deaths
				,uterine_cancer_deaths
				,ovarian_cancer_deaths
				,cervical_cancer_deaths
				,brain_cns_cancer_deaths
				,non_hodgkin_lymphoma_deaths
				,pancreatic_cancer_deaths
				,esophageal_cancer_deaths
				,testicular_cancer_deaths
				,nasopharynx_cancer_deaths
				,other_pharynx_cancer_deaths
				,colon_rectum_cancer_deaths
				,non_melanoma_skin_cancer_deaths
				,mesothelioma_deaths
				)) AS Unpivoted
	WHERE CancerTypeI = 'breast_cancer_prevalence'
		AND CancerTypeD = 'breast_cancer_deaths'
		AND code = 'GBR'
	)
SELECT country
	,code
	,year
	,population
	,incidence
	,deaths
	,CASE 
		WHEN incidence * population * 100.0 = 0
			THEN NULL
		ELSE CAST(ROUND(100 - (deaths * 100.0) / (incidence * 1.0 * population * 1.0), 4) AS FLOAT)
		END AS survival_rate
FROM incidence_rate
ORDER BY year

-- Which cancer has the largest disease burden (DALYs) in the UK?

WITH burden_rate AS (
		SELECT country
			,code
			,year
			,CancerType
			,Burden
		FROM CancerDeaths..CancerRate
		UNPIVOT(Burden FOR CancerType IN (
					other_pharynx_cancer_dalys
					,liver_cancer_dalys
					,breast_cancer_dalys
					,lung_cancer_dalys
					,gallbladder_cancer_dalys
					,kidney_cancer_dalys
					,larynx_cancer_dalys
					,stomach_cancer_dalys
					,thyroid_cancer_dalys
					,uterine_cancer_dalys
					,ovarian_cancer_dalys
					,bladder_cancer_dalys
					,cervical_cancer_dalys
					,prostate_cancer_dalys
					,brain_cns_cancer_dalys
					,pancreatic_cancer_dalys
					,testicular_cancer_dalys
					,esophageal_cancer_dalys
					,nasopharynx_cancer_dalys
					,colon_rectum_cancer_dalys
					,non_melanoma_skin_cancer_dalys
					,lip_oral_cavity_cancer_dalys
					,malignant_skin_melanoma_dalys
					,other_malignant_neoplasms_dalys
					,mesothelioma_dalys
					,hodgkin_lymphoma_dalys
					,non_hodgkin_lymphoma_dalys
					)) AS Unpivoted
		)

SELECT country
	,code
	,year
	,cancer_type
	,Burden AS burden
FROM (
	SELECT country
		,code
		,year
		,CancerType AS cancer_type
		,Burden
		,ROW_NUMBER() OVER (
			PARTITION BY code
			,year ORDER BY Burden DESC
			) AS rn
	FROM burden_rate
	) Ranked
WHERE rn = 1
	AND code = 'GBR'
ORDER BY code
	,year
	,burden DESC;

-- Creating Views to store data for visualisation

-- Death Count
CREATE VIEW CancerDeathRankingView AS
WITH ranked_country
AS (
    SELECT country
        ,code
        ,year
        ,CancerType
        ,Deaths
    FROM CancerDeaths..CancerRate
    UNPIVOT(Deaths FOR CancerType IN (
                liver_cancer_deaths
                ,kidney_cancer_deaths
                ,lip_oral_cavity_cancer_deaths
                ,lung_cancer_deaths
                ,larynx_cancer_deaths
                ,gallbladder_biliary_tract_cancer_deaths
                ,malignant_skin_melanoma_deaths
                ,leukemia_deaths
                ,hodgkin_lymphoma_deaths
                ,multiple_myeloma_deaths
                ,other_neoplasms_deaths
                ,breast_cancer_deaths
                ,prostate_cancer_deaths
                ,thyroid_cancer_deaths
                ,stomach_cancer_deaths
                ,bladder_cancer_deaths
                ,uterine_cancer_deaths
                ,ovarian_cancer_deaths
                ,cervical_cancer_deaths
                ,brain_cns_cancer_deaths
                ,non_hodgkin_lymphoma_deaths
                ,pancreatic_cancer_deaths
                ,esophageal_cancer_deaths
                ,testicular_cancer_deaths
                ,nasopharynx_cancer_deaths
                ,other_pharynx_cancer_deaths
                ,colon_rectum_cancer_deaths
                ,non_melanoma_skin_cancer_deaths
                ,mesothelioma_deaths
            )) AS Unpivoted
)
SELECT country
    ,code
    ,year
    ,cancer_type
    ,death_count
	,rn
FROM (
    SELECT country
        ,code
        ,year
        ,CancerType AS cancer_type
        ,Deaths AS death_count
        ,ROW_NUMBER() OVER (
            PARTITION BY code
            ,year ORDER BY Deaths DESC
            ) AS rn
    FROM ranked_country
) Ranked;

-- Incidence Rate
CREATE VIEW CancerIncidenceRateView AS
WITH incidence_rate AS (
    SELECT country
        ,code
        ,year
        ,CancerType
        ,Incidence
        ,population
    FROM CancerDeaths..CancerRate
    UNPIVOT(Incidence FOR CancerType IN (
                liver_cancer_prevalence
                ,kidney_cancer_prevalence
                ,larynx_cancer_prevalence
                ,breast_cancer_prevalence
                ,thyroid_cancer_prevalence
                ,bladder_cancer_prevalence
                ,uterine_cancer_prevalence
                ,ovarian_cancer_prevalence
                ,stomach_cancer_prevalence
                ,prostate_cancer_prevalence
                ,cervical_cancer_prevalence
                ,testicular_cancer_prevalence
                ,pancreatic_cancer_prevalence
                ,esophageal_cancer_prevalence
                ,nasopharynx_cancer_prevalence
                ,colon_rectum_cancer_prevalence
                ,non_melanoma_skin_cancer_prevalence
                ,lip_oral_cavity_cancer_prevalence
                ,brain_nervous_system_cancer_prevalence
                ,lung_cancer_prevalence
                ,gallbladder_biliary_tract_cancer_prevalence
                ,neoplasms_prevalence
            )) AS Unpivoted
)

SELECT country
    ,code
    ,year
    ,cancer_type
    ,Incidence AS incidence
	,rn
FROM (
    SELECT country
        ,code
        ,year
        ,CancerType AS cancer_type
        ,Incidence
        ,population
        ,ROW_NUMBER() OVER (
            PARTITION BY code
            ,year ORDER BY Incidence DESC
            ) AS rn
    FROM incidence_rate
) Ranked;

-- Mortality Rate / 100,000
CREATE VIEW CancerMortalityRateView AS
WITH ranked_country AS (
    SELECT country
        ,code
        ,year
        ,CancerType
        ,Deaths
        ,population
    FROM CancerDeaths..CancerRate
    UNPIVOT(Deaths FOR CancerType IN (
                liver_cancer_deaths
                ,kidney_cancer_deaths
                ,lip_oral_cavity_cancer_deaths
                ,lung_cancer_deaths
                ,larynx_cancer_deaths
                ,gallbladder_biliary_tract_cancer_deaths
                ,malignant_skin_melanoma_deaths
                ,leukemia_deaths
                ,hodgkin_lymphoma_deaths
                ,multiple_myeloma_deaths
                ,other_neoplasms_deaths
                ,breast_cancer_deaths
                ,prostate_cancer_deaths
                ,thyroid_cancer_deaths
                ,stomach_cancer_deaths
                ,bladder_cancer_deaths
                ,uterine_cancer_deaths
                ,ovarian_cancer_deaths
                ,cervical_cancer_deaths
                ,brain_cns_cancer_deaths
                ,non_hodgkin_lymphoma_deaths
                ,pancreatic_cancer_deaths
                ,esophageal_cancer_deaths
                ,testicular_cancer_deaths
                ,nasopharynx_cancer_deaths
                ,other_pharynx_cancer_deaths
                ,colon_rectum_cancer_deaths
                ,non_melanoma_skin_cancer_deaths
                ,mesothelioma_deaths
            )) AS Unpivoted
)

SELECT country
    ,code
    ,year
    ,cancer_type
    ,CAST(ROUND(Deaths * 1.0 / population * 1.0 * 100000, 2) AS FLOAT) AS mortality_rate
	,rn
FROM (
    SELECT country
        ,code
        ,year
        ,CancerType AS cancer_type
        ,Deaths
        ,population
        ,ROW_NUMBER() OVER (
            PARTITION BY code
            ,year ORDER BY (Deaths * 1.0 / population * 1.0 * 100000) DESC
            ) AS rn
    FROM ranked_country
) Ranked;

-- Burden Rate / DALYs
CREATE VIEW CancerBurdenRateView AS
WITH burden_rate AS (
    SELECT country
        ,code
        ,year
        ,CancerType
        ,Burden
    FROM CancerDeaths..CancerRate
    UNPIVOT(Burden FOR CancerType IN (
                other_pharynx_cancer_dalys
                ,liver_cancer_dalys
                ,breast_cancer_dalys
                ,lung_cancer_dalys
                ,gallbladder_cancer_dalys
                ,kidney_cancer_dalys
                ,larynx_cancer_dalys
                ,stomach_cancer_dalys
                ,thyroid_cancer_dalys
                ,uterine_cancer_dalys
                ,ovarian_cancer_dalys
                ,bladder_cancer_dalys
                ,cervical_cancer_dalys
                ,prostate_cancer_dalys
                ,brain_cns_cancer_dalys
                ,pancreatic_cancer_dalys
                ,testicular_cancer_dalys
                ,esophageal_cancer_dalys
                ,nasopharynx_cancer_dalys
                ,colon_rectum_cancer_dalys
                ,non_melanoma_skin_cancer_dalys
                ,lip_oral_cavity_cancer_dalys
                ,malignant_skin_melanoma_dalys
                ,other_malignant_neoplasms_dalys
                ,mesothelioma_dalys
                ,hodgkin_lymphoma_dalys
                ,non_hodgkin_lymphoma_dalys
            )) AS Unpivoted
)

SELECT country
    ,code
    ,year
    ,cancer_type
    ,Burden AS burden
	,rn
FROM (
    SELECT country
        ,code
        ,year
        ,CancerType AS cancer_type
        ,Burden
        ,ROW_NUMBER() OVER (
            PARTITION BY code
            ,year ORDER BY Burden DESC
            ) AS rn
    FROM burden_rate
) Ranked;

-- Viewing Views

SELECT *
FROM CancerDeathRankingView
ORDER BY code, year, rn, death_count DESC;

SELECT *
FROM CancerIncidenceRateView
ORDER BY code, year, rn, incidence DESC;

SELECT *
FROM CancerMortalityRateView
ORDER BY code, year, rn, mortality_rate DESC;

SELECT *
FROM CancerBurdenRateView
ORDER BY code, year, rn, burden DESC;