SELECT DISTINCT
    sku, 
    COUNT(sku) AS Sku_sold,
    Sum(amount) as sku_sold_each
FROM
    Settlements
WHERE
    (sku NOT LIKE '%loc%'
        AND sku NOT LIKE 'isc%'
        AND sku NOT LIKE 'trek%')
        AND amount_description = 'Principal'
GROUP BY sku
ORDER BY Sku_sold DESC;
        
