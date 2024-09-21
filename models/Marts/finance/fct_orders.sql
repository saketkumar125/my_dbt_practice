SELECT ord.order_id,
       ord.customer_id,
       ord.order_date,
       coalesce(payment,0)  as payment
  FROM {{ ref('stg_orders') }} AS ord
       LEFT JOIN {{ ref('stg_stripe__payments')}} AS pay 
       USING (order_id)