SELECT  
    CONCAT(settlement_start_date,' - ', settlement_end_date) As Date,
    total_amount
FROM settlements
GROUP BY settlement_id