{{config(materialized ='table')}}

WITH whitelisting as(
    SELECT
        *
    FROM {{source('raw_data', 'raw_client_data')}}
),
renamed as (
    SELECT 
        `company name` as retailer,
        SPLIT(slug,'-') [OFFSET(0)] AS brand,
        SPLIT(slug,'-') [OFFSET(1)] AS region_abv,
        slug as brand_region,
        whitelisted
    FROM whitelisting
),

final as (
    SELECT *
    from renamed
)
SELECT *
FROM final