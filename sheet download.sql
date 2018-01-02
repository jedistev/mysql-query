SELECT 
    transaction_type, sku, SUM(amount) AS sku_total, amount_description, COUNT(amount_description) AS sku_unit_sold
FROM
    tbl_settlement_test
WHERE
    (sku NOT LIKE '%loc%'
        AND sku NOT LIKE 'isc%'
        AND sku NOT LIKE 'trek%')
        AND amount_description IN ('Principal' , 'Commission',
        'RefundCommission',
        'Goodwill',
        'FBAPerUnitFulfillmentFee',
        'Shipping',
        'ShippingChargeback',
        'VariableClosingFee')
        and sku ='H-ROOT-TC04B-BLACK'
GROUP BY transaction_type, sku 
ORDER BY sku_total ASC