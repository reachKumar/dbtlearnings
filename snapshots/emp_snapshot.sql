{% snapshot emp_snapshot %}
{{

    config(
        unique_key='employee_id',
        strategy='timestamp',
        updated_at='load_date_time'

    )
}}

select 
    employee_id,
    first_name,
    last_name,
    hire_date,
    current_timestamp() as load_date_time

 from {{ source('raw', 'employees') }}
{% endsnapshot %}