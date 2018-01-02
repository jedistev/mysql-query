CREATE TABLE `settlements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `settlement_id` bigint(10) DEFAULT NULL,
  `settlement_start_date` varchar(23) DEFAULT NULL,
  `settlement_end_date` varchar(23) DEFAULT NULL,
  `deposit_date` varchar(23) DEFAULT NULL,
  `total_amount` decimal(13,2) DEFAULT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `transaction_type` varchar(17) DEFAULT NULL,
  `order_id` varchar(19) DEFAULT NULL,
  `merchant_order_id` varchar(21) DEFAULT NULL,
  `adjustment_id` varchar(33) DEFAULT NULL,
  `shipment_id` varchar(9) DEFAULT NULL,
  `marketplace_name` varchar(22) DEFAULT NULL,
  `amount_type` varchar(27) DEFAULT NULL,
  `amount_description` varchar(24) DEFAULT NULL,
  `amount` decimal(13,2) DEFAULT NULL,
  `fulfillment_id` varchar(3) DEFAULT NULL,
  `posted_date` varchar(25) DEFAULT NULL,
  `posted_date_time` varchar(23) DEFAULT NULL,
  `order_item_code` varchar(14) DEFAULT NULL,
  `merchant_order_item_id` varchar(23) DEFAULT NULL,
  `merchant_adjustment_item_id` varchar(11) DEFAULT NULL,
  `sku` varchar(27) DEFAULT NULL,
  `quantity_purchased` varchar(1) DEFAULT NULL,
  `promotion_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1700 DEFAULT CHARSET=utf8;