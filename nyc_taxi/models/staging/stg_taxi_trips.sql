with source as (
    select * from {{ ref('yellow_tripdata_sample') }}
),

renamed as (
    select
        trip_id,
        cast(pickup_datetime as timestamp)  as pickup_datetime,
        cast(dropoff_datetime as timestamp) as dropoff_datetime,
        passenger_count,
        trip_distance,
        payment_type,
        fare_amount,
        tip_amount,
        total_amount,
        pickup_location_id,
        dropoff_location_id
    from source
)

select * from renamed