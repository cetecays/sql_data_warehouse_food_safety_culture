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

IF OBJECT_ID ('bronze.hospital_general_information', 'U') IS NOT NULL
	DROP TABLE bronze.hospital_general_information;
GO

CREATE TABLE bronze.hospital_general_information (
	hgi_facility_id INT,
	hgi_facility_name NVARCHAR(500),
	hgi_address NVARCHAR(500),
	hgi_city_town NVARCHAR(500),
	hgi_state NVARCHAR(10),
	hgi_zip_code INT,
	hgi_country_parish NVARCHAR(500),
	hgi_telephone_number NVARCHAR(100),
	hgi_hospital_type NVARCHAR(100),
	hgi_hospital_ownership NVARCHAR(100),
	hgi_emergency_services NVARCHAR(10),
	hgi_birthing_friendly NVARCHAR(10),
	hgi_hospital_overall_rating NVARCHAR(50),
	hgi_rating_footnote NVARCHAR(50),
	hgi_group_measure_count NVARCHAR(50),
	hgi_facility_mort_measures_count NVARCHAR(50),
	hgi_mort_measures_better_count NVARCHAR(50),
	hgi_mort_measures_no_different NVARCHAR(50),
	hgi_mort_measures_worse NVARCHAR(50),
	hgi_mort_group_footnote NVARCHAR(50),
	hgi_safety_group_measure_count NVARCHAR(50),
	hgi_facility_safety_measure_count NVARCHAR(50),
	hgi_safety_measures_better_count NVARCHAR(50),
	hgi_safety_measures_no_different_count NVARCHAR(50),
	hgi_safety_measures_worse_count NVARCHAR(50),
	hgi_safety_group_footnote NVARCHAR(50),
	hgi_readm_group_measure_count NVARCHAR(50),
	hgi_facility_readm_measures_count NVARCHAR(50),
	hgi_readm_measures_better_count NVARCHAR(50),
	hgi_readm_measures_no_different_count NVARCHAR(50),
	hgi_readm_measures_worse_count NVARCHAR(50),
	hgi_readm_group_footnote NVARCHAR(50),
	hgi_pt_exp_group_measure_count NVARCHAR(50),
	hgi_facility_pt_exp_measures_count NVARCHAR(50),
	hgi_pt_exp_group_footnote NVARCHAR(50),
	hgi_te_group_measure_count NVARCHAR(50),
	hgi_facility_te_measures_count NVARCHAR(50),
	hgi_te_group_footnote NVARCHAR(50)
);

IF OBJECT_ID ('bronze.unplanned_hospital_visits', 'U') IS NOT NULL
	DROP TABLE bronze.unplanned_hospital_visits;

CREATE TABLE bronze.unplanned_hospital_visits (
	uhv_facility_id INT,
	uhv_facility_name NVARCHAR(500),
	uhv_address NVARCHAR(500),
	uhv_city_town NVARCHAR(500),
	uhv_state NVARCHAR(10),
	uhv_zip_code INT,
	uhv_country_parish NVARCHAR(500),
	uhv_telephone_number NVARCHAR(100),
	uhv_measure_id NVARCHAR(100),
	uhv_measure_name NVARCHAR(500),
	uhv_compared_to_national NVARCHAR(100),
	uhv_denominator NVARCHAR(50),
	uhv_score NVARCHAR(50),
	uhv_lower_estimate NVARCHAR(50),
	uhv_higher_estimate NVARCHAR(50),
	uhv_number_of_patients NVARCHAR(50),
	uhv_number_of_patients_returned NVARCHAR(50),
	uhv_footnote INT,
	uhv_start_date DATE,
	uhv_end_date DATE
);
