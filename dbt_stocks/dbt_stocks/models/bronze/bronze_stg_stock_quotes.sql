SELECT 
  DATA:c::float as current_price,
  DATA:v::float as change_amount,
  DATA:dp::float as change_percent,
  DATA:h::float as day_high,
  DATA:l::float as day_low,
  DATA:o::float as day_open,
  DATA:pc::float as prev_close,
  DATA:t::timestamp as market_timestamp,
  DATA:symbol::string as symbol,
  DATA:fetch_at::timestamp as fetched_at
FROM {{ source('raw', 'bronze_stock_quotes_raw') }}
