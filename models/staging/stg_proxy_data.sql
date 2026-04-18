{{config(materialized ='table')}}

WITH proxy_data as (
    SELECT
    *
FROM {{source('raw_data','proxy_raw_data')}}
),

renamed as (
    SELECT
    slug as brand,
    proxy_request_all as proxy,
    region,
    whitelisted
FROM proxy_data
),

final as (
    SELECT
    *
FROM renamed
)

SELECT *
FROM final