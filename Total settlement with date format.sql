Select settlement_id, date_format(settlement_start_date, '%b %d, %Y') as settlement_start_date, date_format(settlement_end_date, '%b %d, %Y') as settlement_end_date,currency,total_amount
from settlements
Where total_amount
order by settlement_start_date DESC