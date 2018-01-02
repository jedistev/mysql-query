SELECT  amount_description, SUM(COALESCE(amount, 0.00)) AS`amount sum` FROM settlements WHERE amount_description = 'Commission'
