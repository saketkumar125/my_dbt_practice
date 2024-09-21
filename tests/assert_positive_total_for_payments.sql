select
    order_id,
    sum(payment) as total_amount
from {{ ref('stg_stripe__payments') }}
group by 1
having total_amount < 0