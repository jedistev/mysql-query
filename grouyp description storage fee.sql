SELECT 
    settlement_id,
    settlement_start_date,
    settlement_end_date,
    total_amount,
    transaction_type,
    amount_description,
    SUM(amount) AS `Each_group_Amount`
FROM
    settlements
WHERE
#amount desciprion area 
    amount_description = 'REVERSAL_REIMBURSEMENT'
        OR amount_description = 'RemovalComplete'
        OR amount_description = 'Storage Fee'
        OR amount_description = 'LightningDealFee'
        OR amount_description = 'Subscription Fee'
        OR amount_description = 'StorageRenewalBilling'
        OR amount_description = 'WAREHOUSE_DAMAGE'
        OR amount_description = ''

GROUP BY settlement_id asc,  amount_description, transaction_type
