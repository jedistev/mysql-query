
SELECT settlement_id, sum(COALESCE(amount, 0.00)) AS`Amount of total Refund` FROM Settlements GROUP BY Settlement_id;

Select settlement_id, transaction_type, (COALESCE(amount, 0.00)) AS`Amount of total Refund` From settlements Where transaction_type="Refund";


