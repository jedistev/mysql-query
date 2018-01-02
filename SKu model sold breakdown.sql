SELECT 
    sku, COUNT(sku) AS Sku_sold
FROM
    settlements
WHERE
    amount_description = 'Principal'
GROUP BY sku
ORDER BY Sku_sold DESC