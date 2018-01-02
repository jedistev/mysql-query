SELECT settlement_id, 
	settlement_start_date,
    settlement_end_date,
    total_amount,
    SUM(IF(transaction_type = 'order',amount,0)) AS 'Order',
    SUM(IF(transaction_type = 'refund',amount,0)) AS 'Refund',
    SUM(IF(transaction_type = 'ServiceFee',amount,0)) AS 'Servicefee',
    SUM(IF(transaction_type = 'ServiceFee',amount,0)) AS 'other-transaction'

FROM settlements
GROUP BY settlement_id

