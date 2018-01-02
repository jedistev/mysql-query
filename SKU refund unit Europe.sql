SELECT DISTINCT
    sku, COUNT(sku) AS sku_unit_sold
FROM
    settlementsukeuro
WHERE
    (sku NOT LIKE '%loc%'
        AND sku NOT LIKE 'isc%'
        AND sku NOT LIKE 'trek%')
        AND transaction_type = 'order'
        AND amount_description = 'Principal' 
UNION SELECT DISTINCT
    sku, COUNT(sku) AS sku_unit_sold
FROM
    settlementsde
WHERE
    (sku NOT LIKE '%loc%'
        AND sku NOT LIKE 'isc%'
        AND sku NOT LIKE 'trek%')
        AND transaction_type = 'order'
        AND amount_description = 'Principal' 
UNION SELECT DISTINCT
    sku, COUNT(sku) AS sku_unit_sold
FROM
    settlementses
WHERE
    (sku NOT LIKE '%loc%'
        AND sku NOT LIKE 'isc%'
        AND sku NOT LIKE 'trek%')
        AND transaction_type = 'order'
        AND amount_description = 'Principal' 
UNION SELECT DISTINCT
    sku, COUNT(sku) AS sku_unit_sold
FROM
    settlementsfr
WHERE
    (sku NOT LIKE '%loc%'
        AND sku NOT LIKE 'isc%'
        AND sku NOT LIKE 'trek%')
        AND transaction_type = 'order'
        AND amount_description = 'Principal'
UNION SELECT DISTINCT
    sku, COUNT(sku) AS sku_unit_sold
FROM
    settlementsit
WHERE
    (sku NOT LIKE '%loc%'
        AND sku NOT LIKE 'isc%'
        AND sku NOT LIKE 'trek%')
        AND transaction_type = 'order'
        AND amount_description = 'Principal'
GROUP BY sku
ORDER BY sku_unit_sold DESC