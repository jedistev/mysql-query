SELECT 
    transaction_type,
    sku, 
    SUM(quantity_purchased) AS Total_QTY
FROM
    settlements_qty_test
WHERE
		transaction_type ='other-transaction'
        AND amount_description = 'REVERSAL_REIMBURSEMENT'
        AND amount_type = 'FBA Inventory Reimbursement'
GROUP BY SKU
ORDER BY Total_QTY DESC