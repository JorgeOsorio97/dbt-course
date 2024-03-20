with orders as (
    select
        o.order_id,
        o.customer_id,
        o.order_date,
        p.amount as amount

    from {{ ref('stg_orders') }} as o
    inner join {{ ref('stg_payments') }} as p on o.order_id=p.order_id
    where p.status='success'

)
select * from orders