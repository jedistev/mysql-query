SELECT 
    DATE_FORMAT(snapshot_date, '%d/%m/%Y') AS snapshot_date,
    sku,
    `product-name`,
    `detailed-disposition`,
    `fulfillment-center-id`,
    quantity,
    country
FROM
    `tbl_sku_quantity`
WHERE
    country = 'IT'
        AND `detailed-disposition` = 'WHSE_DAMAGED'
GROUP BY sku
ORDER BY quantity DESC
