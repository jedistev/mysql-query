SELECT 
    
    amount_description,
    SUM(amount) AS `Each_group_Amount`
FROM
    settlements
WHERE
    transaction_type = 'order'
        OR transaction_type = 'refund'
        OR transaction_type = 'ServiceFee'
        OR transaction_type = ''
        OR amount_description = 'REVERSAL_REIMBURSEMENT'
        OR amount_description = 'RemovalComplete'
        OR amount_description = 'Storage Fee'
        OR amount_description = 'LightningDealFee'
        OR amount_description = 'Subscription Fee'
        OR amount_description = 'StorageRenewalBilling'
        OR amount_description = 'WAREHOUSE_DAMAGE'
        OR amount_description = 'DisposalComplete'
        OR amount_description = 'StorageRenewalBilling'
        OR amount_description = 'Missing From Inbound'
        OR amount_description = 'MULTICHANNEL_ORDER_LOST'
GROUP BY settlement_id ASC ,  amount_description ASC