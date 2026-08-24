-- ============================================================
-- SWIGGY DATA ANALYSIS PROJECT
-- MICROSOFT FABRIC WAREHOUSE SQL SCRIPTS
-- ============================================================

-- ==========================================
-- STEP 1: CREATE SCHEMA
-- ==========================================

CREATE SCHEMA swiggy_project;


-- ==========================================
-- STEP 2: DATA VALIDATION
-- ==========================================

SELECT COUNT(*) AS dim_date_rows
FROM swiggy_project.dim_date;

SELECT COUNT(*) AS dim_dish_rows
FROM swiggy_project.dim_dish;

SELECT COUNT(*) AS dim_location_rows
FROM swiggy_project.dim_location;

SELECT COUNT(*) AS dim_restaurant_rows
FROM swiggy_project.dim_restaurant;

SELECT COUNT(*) AS fact_orders_rows
FROM s*iggy_project.fact_orders;


-- ===*==================================*===
-- STEP*3: DATE COLUMN VALIDATION
-- =====*===========================*========

SELECT TOP 20 order_date*FROM swiggy_project.dim_date;


--*==================================*=======
-- STEP 4: ADD NEW DATE CO*UMN
-- ===========================*==============

ALTER TABLE swiggy_project.dim_date
ADD order_date_new DATE;


-- ==========================================
-- STEP 5: CHECK NULLS BEFORE UPDATE
-- ==========================================

SELECT COUNT(*) AS null_rows_before_update
FROM swiggy_project.dim_date
WHERE order_date_new IS NULL;


-- ==========================================
-- STEP 6: CONVERT STRING TO DATE
-- ==========================================

UPDATE swiggy_project.dim_date
SET order_date_new =
TRY_CONVERT(DATE, order_date, 5);


-- ==========================================
-- STEP 7: VALIDATE CONVERSION
-- ==========================================

SELECT
    COUNT(*) AS total_rows,
    COUNT(order_d*te_new) AS converted_rows
FROM swi*gy_project.dim_date;


-- ========*=================================
*- STEP 8: IDENTIFY FAILED CONVERSI*NS
-- ============================*=============

SELECT *
FROM swigg*_project.dim_date
WHERE order_date*new IS NULL;


-- ================*=========================
-- STEP *: OPTIONAL CLEANUP
-- ============*=============================

-- *LTER TABLE swiggy_project.dim_date*-- DROP COLUMN order_date;

-- EXE* sp_rename
-- 'swiggy_project.dim_*ate.order_date_new',
-- 'order_dat*',
-- 'COLUMN';


-- =============*============================
-- ST*P 10: FINAL VALIDATION
-- ========*=================================
*SELECT TOP 20 *
FROM swiggy_projec*.dim_date;
