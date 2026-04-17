{{config(materialized ='table')}}
WITH proxy_data as (
    SELECT
    *
FROM {{source('raw_data','proxy_raw_data')}}
),

renamed as (
    SELECT
    slug
FROM proxy_data
),

final as (
    SELECT
    slug
FROM renamed
)

SELECT *
FROM final