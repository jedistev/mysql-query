SELECT DISTINCT
    sku, transaction_type, COUNT(sku) AS sku_unit_refund
FROM
    settlements
WHERE
    (sku NOT LIKE '%loc%'
        AND sku NOT LIKE 'isc%'
        AND sku NOT LIKE 'trek%')
        AND transaction_type = 'refund'
        AND amount_description = 'Principal'
GROUP BY sku
ORDER BY sku_unit_refund DESC
