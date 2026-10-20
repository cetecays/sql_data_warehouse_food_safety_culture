/*
====================================================================
DDL Script: Create Bronze Tables
====================================================================
Script Purpose:
  This script creates tables in the 'bronze' schema, dropping existing
  tables if they already exist.
  Run this script to re-define the DDL structure of 'bronze' tables
====================================================================
*/

IF OBJECT_ID ('bronze.survey_survey_results', 'U') IS NOT NULL
	DROP TABLE bronze.survey_survey_results;
GO

CREATE TABLE bronze.survey_survey_results (
	survey_observation NVARCHAR(MAX),
	survey_site NVARCHAR(MAX),
	survey_language NVARCHAR(MAX),
	survey_q1 NVARCHAR(MAX),
	survey_q2 NVARCHAR(MAX),
	survey_q3 NVARCHAR(MAX),
	survey_q4 NVARCHAR(MAX),
	survey_q5 NVARCHAR(MAX),
	survey_q6 NVARCHAR(MAX),
	survey_q7 NVARCHAR(MAX),
	survey_q8 NVARCHAR(MAX),
	survey_q9 NVARCHAR(MAX),
	survey_q10 NVARCHAR(MAX),
	survey_q11 NVARCHAR(MAX),
	survey_q12 NVARCHAR(MAX),
	survey_q13 NVARCHAR(MAX),
	survey_q14 NVARCHAR(MAX),
	survey_q15 NVARCHAR(MAX),
	survey_q16 NVARCHAR(MAX),
	survey_q17 NVARCHAR(MAX),
	survey_q18 NVARCHAR(MAX),
	survey_q19 NVARCHAR(MAX),
	survey_q20 NVARCHAR(MAX),
	survey_q21 NVARCHAR(MAX),
	survey_q22 NVARCHAR(MAX),
	survey_q23 NVARCHAR(MAX),
	survey_q24 NVARCHAR(MAX),
	survey_q25 NVARCHAR(MAX),
	survey_q26 NVARCHAR(MAX),
	survey_q27 NVARCHAR(MAX),
	survey_q28 NVARCHAR(MAX),
	survey_d1 NVARCHAR(MAX),
	survey_d2 NVARCHAR(MAX),
	survey_d3 NVARCHAR(MAX),
	survey_d4 NVARCHAR(MAX),
	survey_d5 NVARCHAR(MAX),
	survey_d6 NVARCHAR(MAX),
	survey_d7 NVARCHAR(MAX),
	survey_d8 NVARCHAR(MAX),
	survey_d9 NVARCHAR(MAX)
);
