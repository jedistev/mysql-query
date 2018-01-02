SELECT transaction_type, SUM(COALESCE(amount, 0.00)) AS`amount_sum` FROM settlements WHERE transaction_type = 'Lightning Deal Fee'
