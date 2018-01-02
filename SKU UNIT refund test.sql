SELECT DISTINCT
   transaction_type, sku, COUNT(sku) AS sku_unit_sold
FROM
   settlementsit
WHERE
    (sku NOT LIKE '%loc%'
        AND sku NOT LIKE 'isc%'
        AND sku NOT LIKE 'trek%') 
         AND transaction_type = 'order'
        AND amount_description = 'Principal'
  
GROUP BY sku 
Order by sku_unit_sold DESC

