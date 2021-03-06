SELECT settlement_id, 
    DATE_FORMAT(`settlement_start_date`, '%d/%m/%Y') as date, 
    DATE_FORMAT(settlement_start_date, '%d/%m/%Y') as settlement_start_date, 
    DATE_FORMAT(settlement_end_date, '%d/%m/%Y') as settlement_end_date,
    SUM(IF(transaction_type = 'order'
            AND transaction_type = 'order'
            AND amount_description IN (
            'Principal',
			'Shipping',
			'FBAPerUnitFulfillmentFee',
			'Commission',
			'ShippingChargeback',
			'FBA transportation fee',
			'FBAPerOrderFulfillmentFe',
			'ShippingHB')
            AND amount_type IN (
            'ItemPrice', 
            'ItemFees',
            'Promotion'), amount, 0)) AS 'Total_Order',
    SUM(IF(transaction_type = 'order' AND amount_description = 'Principal' AND amount_type = 'ItemPrice', quantity_purchased,0)) AS 'Total_QTY_Order',
   
   SUM(IF(amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT',amount,0)) AS 'Reimbursement',
   
   SUM(IF(amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT',quantity_purchased,0)) AS 'Total_QTY_Refund',
	
    SUM((IF( transaction_type = 'order'AND amount_description = 'Principal' AND amount_type = 'ItemPrice', quantity_purchased, 0)) 
    + (IF( amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT', quantity_purchased, 0))) AS 'Total_QTY_ALL_TOGETHER'
    
FROM settlements_qty_test
GROUP BY settlement_id
ORDER BY 'date'