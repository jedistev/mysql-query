SELECT 
    fnsku,
    sku,
    `product-name`,
    quantity,
    `detailed-disposition`,
    `fulfillment-center-id`,
    country
FROM
    `tbl_sku_quantity`
ORDER BY sku_ID ASC