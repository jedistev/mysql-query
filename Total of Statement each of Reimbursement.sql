SELECT  transaction_type, amount_description, SUM(COALESCE(amount, 0.00)) AS`amount_sum` FROM settlements WHERE amount_description = 'Commission' and transaction_type='order'
