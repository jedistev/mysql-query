SELECT 
	settlement_id, 
    date_format(settlement_start_date, '%d/%m/%Y') as settlement_start_date, 
    date_format(settlement_end_date, '%d/%m/%Y') as settlement_end_date,

    
	/* order*/
    SUM(IF(sku= 'BT01- Cream Half'AND transaction_type = 'order'AND amount_description = 'Principal' AND amount_type = 'ItemPrice', quantity_purchased, 0)) AS 'BT01-Cream Half',
	SUM(IF(sku= 'BT01-Black Half'AND transaction_type = 'order'AND amount_description = 'Principal' AND amount_type = 'ItemPrice', quantity_purchased, 0)) AS 'BT01-Black Half',
    SUM(IF(sku= 'BT01-Navy Half'AND transaction_type = 'order'AND amount_description = 'Principal' AND amount_type = 'ItemPrice', quantity_purchased, 0)) AS 'BT01-Navy Half',
    SUM(IF(sku= 'BT02-Black Full'AND transaction_type = 'order'AND amount_description = 'Principal' AND amount_type = 'ItemPrice', quantity_purchased, 0)) AS 'BT02-Black Full',
    SUM(IF(sku= 'BT02-Cream Full'AND transaction_type = 'order'AND amount_description = 'Principal' AND amount_type = 'ItemPrice', quantity_purchased, 0)) AS 'BT02-Cream Full',
	SUM(IF(sku= 'BT02-NAVY-FULL'AND transaction_type = 'order'AND amount_description = 'Principal' AND amount_type = 'ItemPrice', quantity_purchased, 0)) AS 'BT02-NAVY-FULL',
    SUM(IF(sku= 'H-ROOT-AD04'AND transaction_type = 'order'AND amount_description = 'Principal' AND amount_type = 'ItemPrice', quantity_purchased, 0)) AS 'H-ROOT-AD04',
    SUM(IF(sku= 'H-Root-AH01N-Black'AND transaction_type = 'order'AND amount_description = 'Principal' AND amount_type = 'ItemPrice', quantity_purchased, 0)) AS 'H-Root-AH01N-Black',
    SUM(IF(sku= 'H-Root-AH01N-Cream'AND transaction_type = 'order'AND amount_description = 'Principal' AND amount_type = 'ItemPrice', quantity_purchased, 0)) AS 'H-Root-AH01N-Cream',
    SUM(IF(sku= 'H-Root-AH01R-Black'AND transaction_type = 'order'AND amount_description = 'Principal' AND amount_type = 'ItemPrice', quantity_purchased, 0)) AS 'H-Root-AH01R-Black',
    
    
    /* Reimbursement*/
    SUM(IF(sku= 'BT01- Cream Half' AND amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT', quantity_purchased, 0)) AS 'BT01-Cream Half_R',
    SUM(IF(sku= 'BT01-Black Half' AND amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT', quantity_purchased, 0)) AS 'BT01-Black Half_R',
    SUM(IF(sku= 'BT01-Navy Half' AND amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT', quantity_purchased, 0)) AS 'BT01-Navy Half_R',
    SUM(IF(sku= 'BT02-Black Full' AND amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT', quantity_purchased, 0)) AS 'BT02-Black Full_R',
    SUM(IF(sku= 'BT02-Cream Full' AND amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT', quantity_purchased, 0)) AS 'BT02-Cream Full_R',
    SUM(IF(sku= 'BT02-NAVY-FULL' AND amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT', quantity_purchased, 0)) AS 'BT02-NAVY-FULL_R',
    SUM(IF(sku= 'H-ROOT-AD04' AND amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT', quantity_purchased, 0)) AS 'H-ROOT-AD04_R',
    SUM(IF(sku= 'H-Root-AH01N-Black' AND amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT', quantity_purchased, 0)) AS 'H-Root-AH01N-Black_R',
    SUM(IF(sku= 'H-Root-AH01N-Cream' AND amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT', quantity_purchased, 0)) AS 'H-Root-AH01N-Cream_R',
	SUM(IF(sku= 'H-Root-AH01R-Black' AND amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT', quantity_purchased, 0)) AS 'H-Root-AH01R-Black_R',
    
    /* Total QTY*/
    SUM((IF(sku= 'BT01- Cream Half'AND transaction_type = 'order'AND amount_description = 'Principal' AND amount_type = 'ItemPrice', quantity_purchased, 0)) + (IF(sku= 'BT01- Cream Half' AND amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT', quantity_purchased, 0))) AS BT01_Cream_Half_QTY_TOTAL

FROM settlements_qty_test
GROUP BY settlement_id

ORDER BY settlement_start_date DESC