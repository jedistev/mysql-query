select 
    settlement_id,
    transaction_type,
    SUM(IF(transaction_type = 'refund',amount,0)) AS 'Refund'
    from settlements 
    
    WHERE transaction_type = 'Refund' 
    Group by settlement_id