select 
    settlement_id,
    transaction_type,
    amount_description,
    amount,
    sku

    from settlements 
    
    WHERE transaction_type = 'Refund' and amount_description  = 'Principal'