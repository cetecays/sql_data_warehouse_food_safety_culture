/*
===================================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===================================================================================
Script Purpose:
  This stored procedure loads data into the 'bronze' schema from external CSV files.
  It performs the following actions:
  - Truncates the bronze tables before loading data
  - Uses the 'Bulk INSERT' command to load data from csv Files to bronze tables.

Parameters:
  None
  This stored procedure does not accept any parameters or return any values.

Usage Example:
  EXEC bronze.load_bronze;
===================================================================================
*/
CREATE OR ALTER PROCEDURE bronze.load_bronze AS 
BEGIN
	DECLARE @start_time DATETIME, @end_time DATETIME, @batch_start_time DATETIME, @batch_end_time DATETIME;
	BEGIN TRY
		PRINT '===========================================';
		PRINT 'Loading Bronze Layer';
		PRINT '===========================================';

		PRINT '-------------------------------------------'
		PRINT 'Loading Survey Results Table'
		PRINT '-------------------------------------------'

		SET @batch_start_time = GETDATE();
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.survey_survey_results';
		TRUNCATE TABLE bronze.survey_survey_results;

		PRINT '>> Inserting data into: bronze.survey_survey_results';
		BULK INSERT bronze.survey_survey_results
		FROM 'C:\Users\yanso\OneDrive\Documents\Data Projects\Food Safety Culture\survey_results.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			ROWTERMINATOR = '0x0A',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		SET @batch_end_time = GETDATE();
		PRINT '=============================================='
		PRINT 'Bronze Layer has Completed Loading'
		PRINT '=============================================='
		PRINT '	- Total Load Duration: ' + CAST(DATEDIFF(second, @batch_start_time, @batch_end_time) AS NVARCHAR) + ' seconds';
	END TRY
	BEGIN CATCH
		PRINT '==========================================='
		PRINT 'ERROR OCCURED WHILE LOADING BRONZE LAYER'
		PRINT 'Error Message' + ERROR_MESSAGE();
		PRINT 'Error Message' + CAST (ERROR_NUMBER() AS NVARCHAR);
		PRINT 'Error Message' + CAST (ERROR_STATE() AS NVARCHAR);
		PRINT '==========================================='
	END CATCH
END
