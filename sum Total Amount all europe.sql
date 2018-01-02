SELECT 
    marketplace_name,
    SUM(total_amount) AS 'total all europe Cost'
FROM
    (SELECT 
        marketplace_name, total_amount
    FROM
        settlementsde 
	UNION ALL 
    
    SELECT 
        marketplace_name, total_amount
    FROM
        settlementsfr) x
GROUP BY total_amount
