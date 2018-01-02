SELECT 
      sku, transaction_type, SUM(amount) AS sku_total
FROM
    settlements
WHERE
    (sku NOT LIKE '%loc%'
        AND sku NOT LIKE 'isc%'
        AND sku NOT LIKE 'trek%')
        AND transaction_type = 'order'
        AND amount_description IN ('Principal',
			'Shipping',
			'FBAPerUnitFulfillmentFee',
			'Commission',
			'ShippingChargeback',
			'FBA transportation fee',
			'FBAPerOrderFulfillmentFe',
			'ShippingHB')
GROUP BY transaction_type , sku
ORDER BY sku_total DESC
    
    
    

