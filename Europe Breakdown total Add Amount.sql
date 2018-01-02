SELECT 
    marketplace_name, 
    SUM(amount) AS match_amount_sum
FROM
    settlements 
UNION SELECT 
    marketplace_name, 
    SUM(amount) AS match_amount_sum
FROM
    settlementsde 
UNION SELECT 
    marketplace_name, 
    SUM(amount) AS match_amount_sum
FROM
    settlementsfr 
UNION SELECT 
    marketplace_name, 
    SUM(amount) AS match_amount_sum
FROM
    settlementsit 
UNION SELECT 
    marketplace_name, 
    SUM(amount) AS match_amount_sum
FROM
    settlementses