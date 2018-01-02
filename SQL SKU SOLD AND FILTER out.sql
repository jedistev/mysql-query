SELECT 
    distinct sku, COUNT(sku) AS sku_sold, SUM(`amount`) AS sku_sold_each
FROM
    settlements
WHERE
    (sku NOT LIKE '%loc%'
        AND sku NOT LIKE 'isc%'
        AND sku NOT LIKE 'trek%')
        AND amount_description = 'Principal'
GROUP BY sku
ORDER BY `sku_sold_each` DESC