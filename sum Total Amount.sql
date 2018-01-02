select marketplace_name, settlement_id, settlement_start_date, settlement_end_date, currency, sum(total_amount) from (

SELECT marketplace_name, settlement_id, settlement_start_date, settlement_end_date, currency,total_amount FROM settlementses WHERE total_amount
UNION all
SELECT marketplace_name, settlement_id, settlement_start_date, settlement_end_date, currency,total_amount FROM settlementsde WHERE total_amount
UNION all
SELECT marketplace_name, settlement_id, settlement_start_date, settlement_end_date, currency,total_amount FROM settlementsfr WHERE total_amount
UNION all
SELECT marketplace_name, settlement_id, settlement_start_date, settlement_end_date, currency,total_amount FROM settlementsit WHERE total_amount
) x group by total_amount