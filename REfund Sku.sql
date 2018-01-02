SELECT 
	order_id,
    merchant_order_id,
    amount_description,
    amount,
    sku
    transaction_type
FROM
    settlements
WHERE
    Transaction_type = 'refund'
GROUP BY order_id 
having amount_description="Principal" or amount_description="Commission" or 
amount_description="RefundCommission"  or amount_description="Goodwill" 









