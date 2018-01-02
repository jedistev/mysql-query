Select 
   settlement_id, 
   settlement_start_date as formatdate,
   date_format(settlement_start_date, "%d/%m/%Y") as settlement_start_date, 
   date_format(settlement_end_date, "%d/%m/%Y") as settlement_end_date,
   currency,
   total_amount
from settlements
Where total_amount
order by formatdate DESC