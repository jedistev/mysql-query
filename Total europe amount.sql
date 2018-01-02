SELECT SUM(total_amount) AS total_europe_price
    FROM (SELECT total_amount FROM settlementsde
          UNION ALL
          SELECT total_amount FROM settlementsfr
          UNION ALL
          SELECT total_amount FROM settlementsit
          UNION ALL
          SELECT total_amount FROM settlementses
          ) t