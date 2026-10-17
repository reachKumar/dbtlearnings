{{

    config(
        materialized='table',
        schema="external"
    )
}}
select 

*,
{{cents_to_dollars('salary')}} as salary_usd

from {{ source('raw', 'employees') }}
 