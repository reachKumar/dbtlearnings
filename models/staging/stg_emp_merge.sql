{{

    config(
        materialized='incremental',
        unique_key='employee_id',
        incremental_strategy='merge'
        
    )
}}

select 

* 

from {{ source('raw', 'employees') }}

{%if is_incremental()%}
where hire_date>=(select max(hire_date) from {{this}})
{% endif%}