with source as (
    select * from {{ ref('stg_taxi_trips') }}
),

final as (
    select
        cast(pickup_datetime as date) as trip_date,
        count(trip_id)                as total_trips,
        sum(fare_amount)              as total_fare,
        sum(tip_amount)               as total_tips
    from source
    group by cast(pickup_datetime as date)
    order by trip_date
)

select * from final