{{
    config(
        materialized='table',
        pre_hook=["create or replace temporary table DBTSNFLEARNING2026.STG_SALES.temp_emp as select * from DBTSNFLEARNING2026.STG_SALES.EMPLOYEES"]
    )
}}

select
*
from 
DBTSNFLEARNING2026.STG_SALES.temp_emp