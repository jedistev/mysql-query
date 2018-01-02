SELECT * 
FROM   (SELECT total_amount 
        FROM   settlements 
        UNION ALL 
        SELECT amount 
        FROM   settlements) 