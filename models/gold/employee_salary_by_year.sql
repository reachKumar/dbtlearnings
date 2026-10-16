select 

year(hire_date) as hire_year,
sum(salary) as salary


from {{ source('raw', 'employees') }}
group by all