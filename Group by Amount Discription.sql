SELECT 
    settlement_id,
    total_amount,
    transaction_type,
    amount_description,
    SUM(amount) AS `Each_group_Amount`
FROM
    settlements
WHERE
    transaction_type = 'order'
        OR transaction_type = 'Refund'
        OR transaction_type = 'ServiceFee'
		OR transaction_type = 'other-transaction'
        OR transaction_type = ''
        
GROUP BY settlement_id ASC , amount_description ASC