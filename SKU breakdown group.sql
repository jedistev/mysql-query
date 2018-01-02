SELECT 
    transaction_type, sku, SUM(amount) AS sku_total
FROM
    settlements
WHERE
    (sku NOT LIKE '%loc%'
        AND sku NOT LIKE 'isc%'
        AND sku NOT LIKE 'trek%')
        AND transaction_type = 'Refund'
        AND amount_description IN ('Principal' , 'Commission',
        'RefundCommission',
        'Goodwill',
        'Shipping',
        'ShippingChargeback',
        'VariableClosingFee')
GROUP BY transaction_type, sku 
ORDER BY sku_total ASC
    
    
    

