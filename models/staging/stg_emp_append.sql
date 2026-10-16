{{

    config(
        materialized='incremental',
        incremental_strategy='append'
    )
}}

select 

* 

from {{ source('raw', 'employees') }}

{%if is_incremental()%}
where hire_date>(select max(hire_date) from {{this}})
{% endif%}