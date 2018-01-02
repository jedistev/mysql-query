Select 
	settlement_id,
    tbl_list_sku.Product_code, 
	settlements.sku as 'Settlement_sku', 
    tbl_list_sku.sku as 'list_sku', 
    tbl_list_sku.model_code,
    SUM(IF (transaction_type = 'order'AND amount_description = 'Principal' AND amount_type = 'ItemPrice', quantity_purchased, 0)) AS 'TotaL_Order_Quantity',
	SUM(IF( amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT', quantity_purchased, 0)) AS 'TotaL_Reimbursement_Quantity', 
	SUM((IF( transaction_type = 'order'AND amount_description = 'Principal' AND amount_type = 'ItemPrice', quantity_purchased, 0)) 
    + (IF( amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT', quantity_purchased, 0))) AS 'TotaL_Quantity'
	

FROM settlements
INNER JOIN tbl_list_sku
ON settlements.sku=tbl_list_sku.sku
WHERE settlement_id
GROUP BY Settlement_sku 
HAVING Settlement_sku IS NOT NULL AND LENGTH(Settlement_sku) > 0
Order by Settlement_sku ASC




