SELECT settlement_id, 
	settlement_start_date,
    settlement_end_date,
    total_amount,
    SUM(IF(transaction_type = 'order',amount,0)) AS 'Order',
    SUM(IF(transaction_type = 'refund',amount,0)) AS 'Refund',
    SUM(IF(transaction_type = 'ServiceFee',amount,0)) AS 'Servicefee',
    SUM(IF(amount_description = 'REVERSAL_REIMBURSEMENT',amount,0)) AS 'REVERSAL_REIMBURSEMENT',
	SUM(IF(amount_description = 'RemovalComplete',amount,0)) AS 'RemovalComplete',
	SUM(IF(amount_description = 'Storage Fee',amount,0)) AS 'Storage Fee',
	SUM(IF(amount_description = 'LightningDealFee',amount,0)) AS 'LightningDealFee',
	SUM(IF(amount_description = 'Subscription Fee',amount,0)) AS 'Subscription Fee',
	SUM(IF(amount_description = 'StorageRenewalBilling',amount,0)) AS 'StorageRenewalBilling',
	SUM(IF(amount_description = 'WAREHOUSE_DAMAGE',amount,0)) AS 'WAREHOUSE_DAMAGE',
    SUM(IF(amount_description = 'DisposalComplete',amount,0)) AS 'DisposalComplete',
    SUM(IF(amount_description = 'StorageRenewalBilling',amount,0)) AS 'StorageRenewalBilling',
    SUM(IF(amount_description = 'Missing From Inbound',amount,0)) AS 'Missing From Inbound',
    SUM(IF(amount_description = 'MULTICHANNEL_ORDER_LOST',amount,0)) AS 'MULTICHANNEL_ORDER_LOST'

FROM settlements
GROUP BY settlement_id

