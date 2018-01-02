SELECT 
    sku,
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
    SUM(IF(transaction_type = 'order'AND amount_description = 'Principal' AND amount_type = 'ItemPrice', quantity_purchased, 0)) AS 'Total_QTY_Order',
    SUM(IF(amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT', amount,0)) AS 'Total_Reimbursement',
    SUM(IF(amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT', quantity_purchased, 0)) AS 'Total_QTY_Refund',
	SUM((IF( transaction_type = 'order'AND amount_description = 'Principal' AND amount_type = 'ItemPrice', quantity_purchased, 0)) 
    + (IF( amount_type = 'FBA Inventory Reimbursement' AND amount_description = 'REVERSAL_REIMBURSEMENT', quantity_purchased, 0))) AS 'Total_QTY_ALL_TOGETHER'
FROM
    settlements_qty_test
WHERE
    (sku NOT LIKE '%loc%'
        AND sku NOT LIKE 'isc%'
        AND sku NOT LIKE 'trek%')
GROUP BY SKU
HAVING sku IS NOT NULL AND LENGTH(sku) > 0
ORDER BY SKU ASC

