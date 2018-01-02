SELECT 
    marketplace_name,
    settlement_id,
    settlement_start_date,
    settlement_end_date,
    currency,
    SUM(total_amount) AS 'Europe_total_Amount'
FROM
    settlementses
WHERE
    total_amount 
UNION SELECT 
    marketplace_name,
    settlement_id,
    settlement_start_date,
    settlement_end_date,
    currency,
    SUM(total_amount) AS 'Europe_total_Amount'
FROM
    settlementsde
WHERE
    total_amount 
UNION SELECT 
    marketplace_name,
    settlement_id,
    settlement_start_date,
    settlement_end_date,
    currency,
    SUM(total_amount) AS 'Europe_total_Amount'
FROM
    settlementsfr
WHERE
    total_amount 
UNION SELECT 
    marketplace_name,
    settlement_id,
    settlement_start_date,
    settlement_end_date,
    currency,
    SUM(total_amount) AS 'Europe_total_Amount'
FROM
    settlementsit
WHERE
    total_amount 
UNION SELECT 
    marketplace_name,
    settlement_id,
    settlement_start_date,
    settlement_end_date,
    currency,
    SUM(total_amount) AS 'Europe_total_Amount'
FROM
    settlementsukeuro
WHERE
    total_amount