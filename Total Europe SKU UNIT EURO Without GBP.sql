SELECT  
    transaction_type, sku, SUM(amount) AS sku_total
FROM
    settlementsukeuro
WHERE
    (sku NOT LIKE '%loc%'
        AND sku NOT LIKE 'isc%'
        AND sku NOT LIKE 'trek%')
        AND transaction_type = 'order'
        AND amount_description IN ('Principal' , 'Commission',
        'RefundCommission',
        'Goodwill',
        'Shipping',
        'ShippingChargeback',
        'VariableClosingFee')
        
UNION SELECT  
    transaction_type, sku, SUM(amount) AS sku_total
FROM
    settlementsde
WHERE
    (sku NOT LIKE '%loc%'
        AND sku NOT LIKE 'isc%'
        AND sku NOT LIKE 'trek%')
        AND transaction_type = 'order'
        AND amount_description IN ('Principal' , 'Commission',
        'RefundCommission',
        'Goodwill',
        'Shipping',
        'ShippingChargeback',
        'VariableClosingFee')  

UNION SELECT  
    transaction_type, sku, SUM(amount) AS sku_total
FROM
    settlementses
WHERE
    (sku NOT LIKE '%loc%'
        AND sku NOT LIKE 'isc%'
        AND sku NOT LIKE 'trek%')
        AND transaction_type = 'order'
        AND amount_description IN ('Principal' , 'Commission',
        'RefundCommission',
        'Goodwill',
        'Shipping',
        'ShippingChargeback',
        'VariableClosingFee')

UNION SELECT  
    transaction_type, sku, SUM(amount) AS sku_total
FROM
    settlementsfr
WHERE
    (sku NOT LIKE '%loc%'
        AND sku NOT LIKE 'isc%'
        AND sku NOT LIKE 'trek%')
        AND transaction_type = 'order'
        AND amount_description IN ('Principal' , 'Commission',
        'RefundCommission',
        'Goodwill',
        'Shipping',
        'ShippingChargeback',
        'VariableClosingFee')

UNION SELECT  
    transaction_type, sku, SUM(amount) AS sku_total
FROM
	settlementsit
WHERE
    (sku NOT LIKE '%loc%'
        AND sku NOT LIKE 'isc%'
        AND sku NOT LIKE 'trek%')
        AND transaction_type = 'order'
        AND amount_description IN ('Principal' , 'Commission',
        'RefundCommission',
        'Goodwill',
        'Shipping',
        'ShippingChargeback',
        'VariableClosingFee')

GROUP BY transaction_type, sku 
ORDER BY sku_total DESC

