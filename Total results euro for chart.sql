SELECT 
    marketplace_name,
    currency,
    SUM(total_amount) AS 'total_amount'
FROM
    settlements 
UNION SELECT 
	marketplace_name,
    currency,
    SUM(total_amount) AS 'total_amount'
FROM
    settlementsukeuro
UNION SELECT 
	marketplace_name,
    currency,
    SUM(total_amount) AS 'total_amount'
FROM
    settlementsde 
UNION SELECT 
        marketplace_name,
    currency,
    SUM(total_amount) AS 'total_amount'
FROM
    settlementsfr 
UNION SELECT 
        marketplace_name,
    currency,
    SUM(total_amount) AS 'total_amount'
FROM
    settlementsit 
UNION SELECT 
       marketplace_name,
    currency,
    SUM(total_amount) AS 'total_amount'
FROM
	settlementses