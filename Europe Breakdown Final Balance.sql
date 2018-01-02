SELECT 
    marketplace_name,
    total_amount,
    SUM(amount) AS match_amount_sum,
    SUM(total_amount - amount) AS total_match
FROM
    settlements 
UNION SELECT 
    marketplace_name,
    total_amount,
    SUM(amount) AS match_amount_sum,
    SUM(total_amount - amount) AS total_match
FROM
    settlementsde 
UNION SELECT 
    marketplace_name,
    total_amount,
    SUM(amount) AS match_amount_sum,
    SUM(total_amount - amount) AS total_match
FROM
    settlementsfr 
UNION SELECT 
    marketplace_name,
    total_amount,
    SUM(amount) AS match_amount_sum,
    SUM(total_amount - amount) AS total_match
FROM
    settlementsit 
UNION SELECT 
    marketplace_name,
    total_amount,
    SUM(amount) AS match_amount_sum,
    SUM(total_amount - amount) AS total_match
FROM
    settlementses