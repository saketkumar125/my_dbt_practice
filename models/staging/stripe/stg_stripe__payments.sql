select
     orderid as order_id,
    SUM(amount)  as payment

from {{ source('stripe', 'payment') }}
GROUP BY orderid