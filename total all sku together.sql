SELECT 
	settlement_id,

    sku,
    SUM(IF (transaction_type = 'order'AND amount_description = 'Principal' AND amount_type = 'ItemPrice', quantity_purchased, 0)) AS 'TotaL_Order_Quantity',
	SUM(IF( amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT', quantity_purchased, 0)) AS 'TotaL_Reimbursement_Quantity', 
	SUM((IF( transaction_type = 'order'AND amount_description = 'Principal' AND amount_type = 'ItemPrice', quantity_purchased, 0)) 
    + (IF( amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT', quantity_purchased, 0))) AS 'TotaL_Quantity'

FROM settlements
Where settlement_id
GROUP BY Sku 
HAVING sku IS NOT NULL AND LENGTH(sku) > 0
Order by sku ASC

