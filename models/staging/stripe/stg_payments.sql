with payments as (
    
    select
        id as payment_id,
        orderid AS order_id,
        paymentmethod,
        amount,
        status,
        created as payment_created,
        _batched_at as payment_batched_at

    from dbtworkshop.stripe.payment
)

select * from payments