SELECT DISTINCT settlement_id, amount_description, COALESCE(amount, 0) AS null_coloum, SUM(amount) AS`Each_group_Amount` FROM settlements WHERE amount_description = 'Storage fee' Group By settlement_id


