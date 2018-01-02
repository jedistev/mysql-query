SELECT 
    transaction_type, 
    sku, 
    SUM(quantity_purchased) AS Total_QTY
FROM
    settlements_qty_test
WHERE
    transaction_type = 'order'
        AND amount_description = 'Principal'
        AND amount_type = 'ItemPrice'
GROUP BY SKU
ORDER BY Total_QTY DESC


