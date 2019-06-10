UPDATE `admin` SET `last_login` = '2018-09-12 12:46:15', `ip_address` = '::1'
WHERE `id` = '1';
UPDATE `dbt_cryptocoin` SET `id` = '2336', `cid` = '1', `image` = 'upload/advertisement/cc4cbceda63ec9bb5ba579af8f572e93.jpg', `symbol` = 'USD', `coin_name` = 'Dollar', `full_name` = 'USD Dollar', `algorithm` = '', `rank` = '1', `show_home` = '0', `coin_position` = '2000', `status` = '1'
WHERE `cid` = '1';
UPDATE `dbt_market` SET `id` = '1', `name` = 'BTC', `full_name` = 'BTC Market', `symbol` = 'BTC', `status` = '1'
WHERE `id` = '1';
UPDATE `setting` SET `setting_id` = '1', `title` = 'Crypto Currency Treading System', `description` = 'Bangladesh Office <br>98 Green Road, Farmgate, Dhaka- 1215', `email` = 'info@bdtask.com', `phone` = '+88-01817-584639', `logo` = 'upload/settings/98faeddc67dfc05c794f3c679d83df39.png', `logo_web` = 'upload/settings/132f65146ab3ed9921dff1a6c0c1886f.png', `favicon` = 'upload/settings/35f7d3bce41674cd7c787b978eebfb15.png', `language` = 'english', `time_zone` = 'Asia/Dhaka', `site_align` = 'LTR', `office_time` = 'Monday - Friday: <strong>08:00 - 22:00</strong>\r\n<br>Saturday, Sunday: <strong>Closed</strong>', `latitude` = '40.6700, -73.9400', `footer_text` = '2018 © Copyright bdtask Treading System'
WHERE `setting_id` = '1';
UPDATE `email_sms_gateway` SET `title` = 'Bbtask mail', `protocol` = 'smtp', `host` = 'ssl://smtp.gmail.com', `port` = '465', `user` = 'rdmvaijah@gmail.com', `password` = 'vai99862', `mailtype` = 'html', `charset` = 'utf-8'
WHERE `es_id` = '2';
UPDATE `admin` SET `last_logout` = '2018-09-12 13:12:51'
WHERE `id` = '1';
INSERT INTO `dbt_user` (`first_name`, `referral_id`, `language`, `user_id`, `email`, `password`, `password_reset_token`, `status`, `ip`, `created`) VALUES ('Tareq Rahman', NULL, 'english', 'LQ8ZTV', 'tareq7500@gmail.com', '81258941cd07949099e3d54628911fc0', 'd158e89f579bd6e4b0235bd4bacbb27a', 0, '::1', '2018-09-12 17:14:00');
UPDATE `dbt_user` SET `status` = '1'
WHERE `password_reset_token` = 'd158e89f579bd6e4b0235bd4bacbb27a';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-09-12 17:14:59', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-68.0.3440.106\",\"platform\":\"Windows 10\"}', 'LQ8ZTV', '::1');
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `status`, `deposit_date`, `ip`) VALUES ('LQ8ZTV', 'USD', '1000', 'stripe', '', 'Stripe deposit', 1, '2018-09-12 17:17:04', '::1');
INSERT INTO `dbt_balance` (`user_id`, `currency_id`, `currency_symbol`, `balance`, `last_update`) VALUES ('LQ8ZTV', '', 'USD', '1000', '2018-09-12 01:18:03');
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('LQ8ZTV', 1, 'USD', 'DEPOSIT', '1000', '', '::1', '2018-09-12 17:17:04');
INSERT INTO `notifications` (`user_id`, `subject`, `notification_type`, `details`, `date`, `status`) VALUES ('LQ8ZTV', 0, 'deposit', 'You Deposit The Amount Is 1000.', '2018-09-12 01:18:07', '0');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'LQ8ZTV', 'Deposit', 'Hi,Tareq Rahman  You Deposit The Amount Is 1000', '2018-09-12 01:18:09');
INSERT INTO `dbt_payout_method` (`user_id`, `method`, `wallet_id`, `currency_symbol`) VALUES ('LQ8ZTV', 'bitcoin', 'BTCBTCBTCBTCBTC', 'BTC');
INSERT INTO `dbt_payout_method` (`user_id`, `method`, `wallet_id`, `currency_symbol`) VALUES ('LQ8ZTV', 'phone', '01746406801', 'USD');
INSERT INTO `dbt_payout_method` (`user_id`, `method`, `wallet_id`, `currency_symbol`) VALUES ('LQ8ZTV', 'stripe', 'Stripe Stripe Stripe Stripe ', 'USD');
INSERT INTO `dbt_payout_method` (`user_id`, `method`, `wallet_id`, `currency_symbol`) VALUES ('LQ8ZTV', 'paypal', 'PaypalPaypalPaypalPaypal', 'USD');
INSERT INTO `dbt_payout_method` (`user_id`, `method`, `wallet_id`, `currency_symbol`) VALUES ('LQ8ZTV', 'bitcoin', 'LitecoinLitecoinLitecoinLitecoin', 'LTC');
UPDATE `admin` SET `last_login` = '2018-09-12 13:21:06', `ip_address` = '::1'
WHERE `id` = '1';
UPDATE `dbt_user` SET `user_id` = 'LQ8ZTV', `first_name` = 'Tareq', `last_name` = 'Rahman', `email` = 'tareq7500@gmail.com', `phone` = '1746406801', `bio` = 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.', `image` = './upload/user/3dc646c42af66f46b2ddc02136367c72.jpg'
WHERE `user_id` = 'LQ8ZTV';
UPDATE `dbt_user` SET `password` = '827ccb0eea8a706c4c34a16891f84e7b'
WHERE `user_id` = 'LQ8ZTV';
UPDATE `dbt_user` SET `googleauth` = 'JTJFSGNVMW366FRU'
WHERE `user_id` = 'LQ8ZTV';
INSERT INTO `dbt_user_verify_doc` (`user_id`, `verify_type`, `first_name`, `last_name`, `gender`, `id_number`, `document1`, `document2`, `date`) VALUES ('LQ8ZTV', 'passport', 'Tareq', 'Rahman', 'on', '23423423423452345324', 'upload/documents/a11799dfa92b1447f5187ce9fddaef4c.jpg', 'upload/documents/8505a7d559cbea3847d8f7d213c1c00f.jpg', '2018-09-12 17:32:19');
UPDATE `dbt_user` SET `verified` = '3'
WHERE `user_id` = 'LQ8ZTV';
UPDATE `dbt_user` SET `verified` = '1'
WHERE `user_id` = 'LQ8ZTV';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-09-12 17:40:59', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-68.0.3440.106\",\"platform\":\"Windows 10\"}', 'LQ8ZTV', '::1');
INSERT INTO `dbt_transaction_setup` (`trntype`, `acctype`, `currency_symbol`, `lower`, `upper`, `duration`, `status`) VALUES ('WITHDRAW', 'UNVERIFIED', 'USD', 0, '100', 7, 1);
INSERT INTO `dbt_transaction_setup` (`trntype`, `acctype`, `currency_symbol`, `lower`, `upper`, `duration`, `status`) VALUES ('WITHDRAW', 'VERIFIED', 'USD', 0, '1000', 7, 1);
INSERT INTO `dbt_verify` (`ip_address`, `user_id`, `session_id`, `verify_code`, `data`) VALUES ('::1', 'LQ8ZTV', 1, 'ES43Q6', '{\"user_id\":\"LQ8ZTV\",\"wallet_id\":\"PaypalPaypalPaypalPaypal\",\"currency_symbol\":\"USD\",\"amount\":\"10\",\"method\":\"paypal\",\"fees_amount\":0,\"comment\":\"\",\"request_date\":\"2018-09-12 17:45:18\",\"status\":2,\"ip\":\"::1\"}');
INSERT INTO `dbt_withdraw` (`user_id`, `wallet_id`, `currency_symbol`, `amount`, `method`, `fees_amount`, `comment`, `request_date`, `status`, `ip`) VALUES ('LQ8ZTV', 'PaypalPaypalPaypalPaypal', 'USD', '10', 'paypal', 0, '', '2018-09-12 17:45:18', 2, '::1');
UPDATE `dbt_verify` SET `status` = 0
WHERE `id` = '1'
AND `session_id` = 1;
INSERT INTO `dbt_fees` (`level`, `fees`, `currency_symbol`) VALUES ('withdraw', '5', 'USD');
INSERT INTO `dbt_transaction_setup` (`trntype`, `acctype`, `currency_symbol`, `lower`, `upper`, `duration`, `status`) VALUES ('TRANSFER', 'VERIFIED', 'USD', 0, '2000', 7, 1);
INSERT INTO `dbt_verify` (`ip_address`, `user_id`, `session_id`, `verify_code`, `data`) VALUES ('::1', 'LQ8ZTV', 1, 'AB1EJX', '{\"sender_user_id\":\"LQ8ZTV\",\"receiver_user_id\":\"LQ8ZTS\",\"amount\":\"10\",\"currency_symbol\":\"USD\",\"fees\":0,\"request_ip\":\"::1\",\"date\":\"2018-09-12 17:55:35\",\"comments\":\"cbcfhg\",\"status\":1}');
UPDATE `dbt_balance` SET `balance` = 990
WHERE `user_id` = 'LQ8ZTV'
AND `currency_symbol` = 'USD';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('LQ8ZTV', '1', 'USD', 'TRANSFER', '10', 0, '::1', '2018-09-12 17:55:35');
INSERT INTO `dbt_balance` (`user_id`, `currency_symbol`, `balance`, `last_update`) VALUES ('LQ8ZTS', 'USD', '10', '2018-09-12 17:55:49');
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('LQ8ZTS', 2, 'USD', 'RECEIVED', '10', 0, '::1', '2018-09-12 17:55:35');
INSERT INTO `dbt_transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `currency_symbol`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('LQ8ZTV', 'LQ8ZTS', '10', 'USD', 0, '::1', '2018-09-12 17:55:35', 'cbcfhg', 1);
UPDATE `dbt_verify` SET `status` = 0
WHERE `id` = '2'
AND `session_id` = 1;
INSERT INTO `notifications` (`user_id`, `subject`, `notification_type`, `details`, `date`, `status`) VALUES ('LQ8ZTV', 'Transfer', 'TRANSFER', 'You successfully transfer The amount $10 to the account LQ8ZTS. Your new balance is $990', '2018-09-12 17:55:52', '0');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'LQ8ZTV', 'Transfer', 'You successfully transfer the amount $10 to the account LQ8ZTS. Your new balance is $990', '2018-09-12 17:55:55');
UPDATE `dbt_withdraw` SET `success_date` = '2018-09-12 01:56:33', `status` = 1
WHERE `id` = '1'
AND `user_id` = 'LQ8ZTV';
UPDATE `dbt_balance` SET `balance` = 980
WHERE `user_id` = 'LQ8ZTV'
AND `currency_symbol` = 'USD';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('LQ8ZTV', '1', 'USD', 'WITHDRAW', '10', '0', '::1', '2018-09-12 17:45:18');
INSERT INTO `notifications` (`user_id`, `subject`, `notification_type`, `details`, `date`, `status`) VALUES ('LQ8ZTV', 'Withdraw', 'withdraw', 'You successfully withdraw the amount Is $10. from your account. Your new balance is $980', '2018-09-12 01:56:37', '0');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'LQ8ZTV', 'Withdraw', 'You successfully withdraw the amount is $10. from your account. Your new balance is $980', '2018-09-12 01:56:38');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '100', '2', '2', '200', '200', 'BTC', 'BTC_USD', 'LQ8ZTV', '2018-09-12 17:59:35', '0', 2);
UPDATE `dbt_balance` SET `balance` = 780
WHERE `user_id` = 'LQ8ZTV'
AND `currency_symbol` = 'USD';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '110', '1', '1', '110', '110', 'BTC', 'BTC_USD', 'LQ8ZTV', '2018-09-12 17:59:44', '0', 2);
UPDATE `dbt_balance` SET `balance` = 670
WHERE `user_id` = 'LQ8ZTV'
AND `currency_symbol` = 'USD';
UPDATE `dbt_biding` SET `status` = 0
WHERE `id` = '1';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('LQ8ZTV', NULL, 'BTC', 'TRADE_CANCEL', '2.00000000', 0, '::1', '2018-09-12 18:00:20');
UPDATE `dbt_biding` SET `status` = 0
WHERE `id` = '1';
UPDATE `dbt_biding` SET `status` = 0
WHERE `id` = '1';
UPDATE `dbt_biding` SET `status` = 0
WHERE `id` = '1';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('LQ8ZTV', '1', 'BTC', 'TRADE_CANCEL', '2.00000000', 0, '::1', '2018-09-12 18:35:24');
UPDATE `dbt_balance` SET `balance` = 672
WHERE `user_id` = 'LQ8ZTV'
AND `currency_symbol` = 'USD';
INSERT INTO `dbt_biding_log` (`bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('buy', '2.00000000', '100.00000000', 200, 'LQ8ZTV', 'BTC', 'BTC_USD', '2018-09-12 18:35:24', 0, 0, 0);
UPDATE `dbt_biding` SET `status` = 0
WHERE `id` = '1';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('LQ8ZTV', '1', 'BTC', 'TRADE_CANCEL', '2.00000000', 0, '::1', '2018-09-12 18:37:11');
UPDATE `dbt_balance` SET `balance` = 674
WHERE `user_id` = 'LQ8ZTV'
AND `currency_symbol` = 'USD';
INSERT INTO `dbt_biding_log` (`bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('buy', '2.00000000', '100.00000000', 200, 'LQ8ZTV', 'BTC', 'BTC_USD', '2018-09-12 18:37:11', 0, 0, 0);
UPDATE `dbt_biding` SET `status` = 0
WHERE `id` = '2';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('LQ8ZTV', '1', 'BTC', 'TRADE_CANCEL', '1.00000000', 0, '::1', '2018-09-12 18:37:20');
UPDATE `dbt_balance` SET `balance` = 675
WHERE `user_id` = 'LQ8ZTV'
AND `currency_symbol` = 'USD';
INSERT INTO `dbt_biding_log` (`bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('buy', '1.00000000', '110.00000000', 110, 'LQ8ZTV', 'BTC', 'BTC_USD', '2018-09-12 18:37:20', 0, 0, 0);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '100', '1', '1', '100', '100', 'BTC', 'BTC_USD', 'LQ8ZTV', '2018-09-12 18:39:08', '0', 2);
UPDATE `dbt_balance` SET `balance` = 575
WHERE `user_id` = 'LQ8ZTV'
AND `currency_symbol` = 'USD';
UPDATE `dbt_biding` SET `status` = 0
WHERE `id` = '3';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('LQ8ZTV', '1', 'USD', 'TRADE_CANCEL', '1.00000000', 0, '::1', '2018-09-12 18:39:25');
UPDATE `dbt_balance` SET `balance` = 576
WHERE `user_id` = 'LQ8ZTV'
AND `currency_symbol` = 'USD';
INSERT INTO `dbt_biding_log` (`bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('buy', '1.00000000', '100.00000000', 100, 'LQ8ZTV', 'BTC', 'BTC_USD', '2018-09-12 18:39:25', 0, 0, 0);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '100', '1', '1', '100', '100', 'BTC', 'BTC_USD', 'LQ8ZTV', '2018-09-12 18:40:06', '0', 2);
UPDATE `dbt_balance` SET `balance` = 476
WHERE `user_id` = 'LQ8ZTV'
AND `currency_symbol` = 'USD';
UPDATE `dbt_biding` SET `status` = 0
WHERE `id` = '4';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('LQ8ZTV', NULL, 'BTC', 'TRADE_CANCEL', '1.00000000', 0, '::1', '2018-09-12 18:40:18');
UPDATE `dbt_biding` SET `status` = 0
WHERE `id` = '4';
UPDATE `dbt_biding` SET `status` = 0
WHERE `id` = '4';
UPDATE `dbt_biding` SET `status` = 0
WHERE `id` = '4';
UPDATE `dbt_biding` SET `status` = 0
WHERE `id` = '4';
UPDATE `dbt_biding` SET `status` = 0
WHERE `id` = '4';
UPDATE `dbt_biding` SET `status` = 0
WHERE `id` = '4';
UPDATE `dbt_biding` SET `status` = 0
WHERE `id` = '4';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('LQ8ZTV', '1', 'USD', 'TRADE_CANCEL', '1.00000000', 0, '::1', '2018-09-12 18:46:51');
UPDATE `dbt_balance` SET `balance` = 477
WHERE `user_id` = 'LQ8ZTV'
AND `currency_symbol` = 'USD';
INSERT INTO `dbt_biding_log` (`bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('buy', '1.00000000', '100.00000000', 100, 'LQ8ZTV', 'BTC', 'BTC_USD', '2018-09-12 18:46:51', 0, 0, 0);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '100', '1', '1', '100', '100', 'BTC', 'BTC_USD', 'LQ8ZTV', '2018-09-12 18:49:36', '0', 2);
UPDATE `dbt_balance` SET `balance` = 377
WHERE `user_id` = 'LQ8ZTV'
AND `currency_symbol` = 'USD';
UPDATE `dbt_biding` SET `status` = 0
WHERE `id` = '5';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('LQ8ZTV', '1', 'USD', 'TRADE_CANCEL', 100, 0, '::1', '2018-09-12 18:49:48');
UPDATE `dbt_balance` SET `balance` = 477
WHERE `user_id` = 'LQ8ZTV'
AND `currency_symbol` = 'USD';
INSERT INTO `dbt_biding_log` (`bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('buy', '1.00000000', '100.00000000', 100, 'LQ8ZTV', 'BTC', 'BTC_USD', '2018-09-12 18:49:48', 0, 0, 0);
UPDATE `admin` SET `last_login` = '2018-09-15 07:58:01', `ip_address` = '162.158.166.63'
WHERE `id` = '1';
UPDATE `admin` SET `id` = '1', `firstname` = 'Johan', `lastname` = 'Doye', `email` = 'admin@demo.com', `password` = '827ccb0eea8a706c4c34a16891f84e7b', `about` = 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', `image` = 'upload/settings/a71cd9f5610a60d906cf9e0913f74e1f.jpg'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-09-15 08:56:38', `ip_address` = '162.158.166.183'
WHERE `id` = '1';
UPDATE `setting` SET `setting_id` = '1', `title` = 'BDTASK Crypto Currency Treading System', `description` = 'Bangladesh Office <br>98 Green Road, Farmgate, Dhaka- 1215', `email` = 'info@bdtask.com', `phone` = '+88-01817-584639', `logo` = 'upload/settings/98faeddc67dfc05c794f3c679d83df39.png', `logo_web` = 'upload/settings/132f65146ab3ed9921dff1a6c0c1886f.png', `favicon` = 'upload/settings/35f7d3bce41674cd7c787b978eebfb15.png', `language` = 'english', `time_zone` = 'Asia/Dhaka', `site_align` = 'LTR', `office_time` = 'Monday - Friday: <strong>08:00 - 22:00</strong>\r\n<br>Saturday, Sunday: <strong>Closed</strong>', `latitude` = '40.6700, -73.9400', `footer_text` = '2018 © Copyright bdtask Treading System'
WHERE `setting_id` = '1';
UPDATE `setting` SET `setting_id` = '1', `title` = 'Crypto Currency Treading System', `description` = 'Bangladesh Office <br>98 Green Road, Farmgate, Dhaka- 1215', `email` = 'info@bdtask.com', `phone` = '+88-01817-584639', `logo` = 'upload/settings/98faeddc67dfc05c794f3c679d83df39.png', `logo_web` = 'upload/settings/132f65146ab3ed9921dff1a6c0c1886f.png', `favicon` = 'upload/settings/35f7d3bce41674cd7c787b978eebfb15.png', `language` = 'english', `time_zone` = 'Asia/Dhaka', `site_align` = 'LTR', `office_time` = 'Monday - Friday: <strong>08:00 - 22:00</strong>\r\n<br>Saturday, Sunday: <strong>Closed</strong>', `latitude` = '40.6700, -73.9400', `footer_text` = '2018 © Copyright bdtask Treading System'
WHERE `setting_id` = '1';
INSERT INTO `dbt_fees` (`level`, `fees`, `currency_symbol`) VALUES ('deposit', '1', 'USD');
INSERT INTO `dbt_transaction_setup` (`trntype`, `acctype`, `currency_symbol`, `lower`, `upper`, `duration`, `status`) VALUES ('WITHDRAW', 'UNVERIFIED', 'USD', 0, '10', 7, 1);
INSERT INTO `dbt_market` (`id`, `name`, `full_name`, `symbol`, `status`) VALUES ('', 'BTC / USD', 'Bitcoin Exchange', 'BTC', '1');
UPDATE `dbt_coinpair` SET `id` = '1', `market_symbol` = 'BTC', `currency_symbol` = 'USD', `name` = 'BTC', `full_name` = 'Bitcoin Exchange', `symbol` = 'BTC_USD', `status` = '1'
WHERE `id` = '1';
UPDATE `dbt_coinpair` SET `id` = '1', `market_symbol` = 'BTC', `currency_symbol` = 'USD', `name` = 'BTC', `full_name` = 'Bitcoin Exchange', `symbol` = 'BTC_USD', `status` = '1'
WHERE `id` = '1';
UPDATE `dbt_market` SET `id` = '1', `name` = 'BTC', `full_name` = 'Bitcoin Exchange', `symbol` = 'BTC', `status` = '1'
WHERE `id` = '1';
UPDATE `dbt_coinpair` SET `id` = '1', `market_symbol` = 'BTC', `currency_symbol` = 'USD', `name` = 'BTC / USD', `full_name` = 'Bitcoin Exchange', `symbol` = 'BTC_USD', `status` = '1'
WHERE `id` = '1';
INSERT INTO `dbt_coinpair` (`id`, `market_symbol`, `currency_symbol`, `name`, `full_name`, `symbol`, `status`) VALUES ('', 'BTC', 'DASH', 'BTC/ DASH', 'Bitcoin Exchange', 'BTC_DASH', '1');
UPDATE `admin` SET `last_logout` = '2018-09-15 09:25:12'
WHERE `id` = '1';
INSERT INTO `dbt_user` (`first_name`, `referral_id`, `language`, `user_id`, `email`, `password`, `password_reset_token`, `status`, `ip`, `created`) VALUES ('tareq', NULL, 'english', 'HEJDEA', 'tareq7500@gmail.com', '81258941cd07949099e3d54628911fc0', '6e6323d934686c0d4b8bd722ebc1e60f', 0, '172.68.144.179', '2018-09-15 15:26:08');
UPDATE `dbt_user` SET `status` = '1'
WHERE `password_reset_token` = '6e6323d934686c0d4b8bd722ebc1e60f';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-09-15 15:27:28', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-59.0\",\"platform\":\"Windows 10\"}', 'HEJDEA', '172.68.144.179');
UPDATE `admin` SET `last_logout` = '2018-09-15 09:28:43'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-09-15 09:28:54', `ip_address` = '162.158.167.238'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-09-15 11:38:46', `ip_address` = '172.68.146.36'
WHERE `id` = '1';
INSERT INTO `web_subscriber` (`email`) VALUES (NULL);
UPDATE `admin` SET `last_logout` = '2018-09-18 02:38:33'
WHERE `id` IS NULL;
INSERT INTO `web_subscriber` (`email`) VALUES (NULL);
INSERT INTO `web_subscriber` (`email`) VALUES (NULL);
INSERT INTO `web_subscriber` (`email`) VALUES (NULL);
UPDATE `admin` SET `last_login` = '2018-10-02 09:37:11', `ip_address` = '175.29.195.114'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-02 12:06:42', `ip_address` = '175.29.195.114'
WHERE `id` = '1';
UPDATE `setting` SET `setting_id` = '1', `title` = 'Crypto Currency Treading System', `description` = 'Bangladesh Office <br>98 Green Road, Farmgate, Dhaka- 1215', `email` = 'info@bdtask.com', `phone` = '+88-01817-584639', `logo` = 'upload/settings/cc51e1a3d50b0df0797400a3ae762eee.png', `logo_web` = 'upload/settings/38ebcbc59d8dacd693c4666de7d31685.png', `favicon` = 'upload/settings/6a32acfe674bbfb88ad1c8f3f1de332d.png', `language` = 'english', `time_zone` = 'Asia/Dhaka', `site_align` = 'LTR', `office_time` = 'Monday - Friday: <strong>08:00 - 22:00</strong>\r\n<br>Saturday, Sunday: <strong>Closed</strong>', `latitude` = '40.6700, -73.9400', `footer_text` = '2018 © Copyright bdtask Treading System'
WHERE `setting_id` = '1';
UPDATE `admin` SET `id` = '1', `firstname` = 'Johan', `lastname` = 'Doye', `email` = 'admin@demo.com', `password` = '827ccb0eea8a706c4c34a16891f84e7b', `about` = 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', `image` = 'upload/settings/0bd858f74c7fddb1f30e0bc906280033.png'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-02 12:28:53', `ip_address` = '175.29.195.114'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-03 09:23:41', `ip_address` = '162.158.166.201'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-03 10:32:47'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-03 11:05:44', `ip_address` = '172.68.144.197'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-03 14:44:35', `ip_address` = '162.158.167.238'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 10:30:28', `ip_address` = '162.158.165.110'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 10:31:33', `ip_address` = '172.68.146.204'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-08 11:11:16'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-08 14:08:51'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_login` = '2018-10-08 17:35:51', `ip_address` = '172.68.239.111'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 17:39:23', `ip_address` = '172.69.134.163'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 17:57:09', `ip_address` = '172.68.239.81'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 18:01:31', `ip_address` = '162.158.210.38'
WHERE `id` = '1';
UPDATE `dbt_cryptocoin` SET `id` = '2336', `cid` = '1', `image` = 'upload/advertisement/cc4cbceda63ec9bb5ba579af8f572e93.jpg', `symbol` = 'USD', `coin_name` = 'Dollar', `full_name` = 'USD Dollar', `algorithm` = '', `rank` = '1', `show_home` = '0', `coin_position` = '2000', `status` = '1'
WHERE `cid` = '1';
UPDATE `web_language` SET `id` = '1', `name` = 'Bulgaria', `flag` = 'bg'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 18:13:53', `ip_address` = '172.68.54.44'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 18:15:04', `ip_address` = '172.69.54.103'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 18:34:33', `ip_address` = '141.101.104.93'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 18:35:34', `ip_address` = '172.68.144.251'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 18:58:44', `ip_address` = '162.158.167.28'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 19:12:35', `ip_address` = '162.158.98.8'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 19:16:33', `ip_address` = '172.68.146.168'
WHERE `id` = '1';
INSERT INTO `dbt_fees` (`level`, `fees`, `currency_symbol`) VALUES ('buy', '3', 'BTC');
UPDATE `admin` SET `last_logout` = '2018-10-08 19:21:43'
WHERE `id` = '1';
INSERT INTO `dbt_user` (`first_name`, `referral_id`, `language`, `user_id`, `email`, `password`, `password_reset_token`, `status`, `ip`, `created`) VALUES ('indra', NULL, 'english', 'MSV0BX', 'mmmfull589@gmail.com', '25d55ad283aa400af464c76d713c07ad', '466e97302df6125001c2550d14f0eb91', 0, '172.68.144.23', '2018-10-09 01:24:42');
UPDATE `dbt_user` SET `status` = '1'
WHERE `password_reset_token` = '466e97302df6125001c2550d14f0eb91';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-09 01:26:13', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-62.0\",\"platform\":\"Windows 10\"}', 'MSV0BX', '172.69.134.217');
UPDATE `admin` SET `last_login` = '2018-10-08 19:30:54', `ip_address` = '162.158.59.74'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-08 19:31:33'
WHERE `id` = '2';
UPDATE `admin` SET `last_logout` = '2018-10-08 19:32:54'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 19:32:57', `ip_address` = '172.68.144.65'
WHERE `id` = '1';
INSERT INTO `dbt_coinpair` (`id`, `market_symbol`, `currency_symbol`, `name`, `full_name`, `symbol`, `status`) VALUES ('', 'BTC', 'DOGE', 'DOGE', 'DOGE', 'BTC_DOGE', '1');
INSERT INTO `dbt_coinpair` (`id`, `market_symbol`, `currency_symbol`, `name`, `full_name`, `symbol`, `status`) VALUES ('', 'BTC', 'LTC', 'LTC', 'Litecoin', 'BTC_LTC', '1');
UPDATE `admin` SET `last_logout` = '2018-10-08 19:36:33'
WHERE `id` = '1';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-09 01:37:24', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-62.0\",\"platform\":\"Windows 10\"}', 'MSV0BX', '172.68.146.204');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '112.21', '1', '1', '', '', 'BTC', 'BTC_LTC', 'MSV0BX', '2018-10-09 01:38:22', '', 2);
UPDATE `dbt_balance` SET `balance` = 0
WHERE `user_id` = 'MSV0BX'
AND `currency_symbol` = 'LTC';
UPDATE `admin` SET `last_login` = '2018-10-08 19:47:44', `ip_address` = '141.101.107.22'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 19:52:02', `ip_address` = '141.101.104.177'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 19:55:52', `ip_address` = '172.68.215.110'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 20:07:50', `ip_address` = '172.68.144.65'
WHERE `id` = '1';
UPDATE `web_slider` SET `id` = '3', `slider_h1_en` = 'Take the world\'s  best <br><span class=\"navy-blue\">Cryptocurrency</span>  Site.', `slider_h1_fr` = '', `slider_h2_en` = 'Miker Ipsum is simply dummy text of the printing and typesetting industry.<br> Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', `slider_h2_fr` = '', `slider_h3_en` = 'Start Now', `slider_h3_fr` = '', `slider_img` = 'upload/slider/08b0d2fbc37ac78a04f04195fd471e3b.jpg', `custom_url` = 'https://www.bdtask.com/', `status` = '1'
WHERE `id` = '3';
UPDATE `admin` SET `last_logout` = '2018-10-08 20:10:24'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-08 20:10:28'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_login` = '2018-10-08 20:30:54', `ip_address` = '141.101.102.134'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 20:33:18', `ip_address` = '162.158.89.77'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 20:40:49', `ip_address` = '172.68.144.251'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 20:59:58', `ip_address` = '162.158.93.241'
WHERE `id` = '1';
INSERT INTO `web_subscriber` (`email`) VALUES (NULL);
UPDATE `admin` SET `last_login` = '2018-10-08 21:36:54', `ip_address` = '197.234.242.170'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 21:37:08', `ip_address` = '162.158.166.249'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 21:40:06', `ip_address` = '141.101.88.224'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 21:45:03', `ip_address` = '162.158.126.116'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 21:56:09', `ip_address` = '172.68.174.110'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 22:17:34', `ip_address` = '172.68.239.45'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 22:18:01', `ip_address` = '172.69.55.140'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 22:20:34', `ip_address` = '172.68.215.89'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 22:31:53', `ip_address` = '172.68.239.111'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 23:14:49', `ip_address` = '172.68.238.110'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-08 23:18:09'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 23:30:57', `ip_address` = '172.68.47.22'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 23:42:39', `ip_address` = '108.162.246.21'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 23:52:44', `ip_address` = '162.158.78.194'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-08 23:57:57', `ip_address` = '172.68.26.141'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-08 23:59:56'
WHERE `id` = '1';
INSERT INTO `dbt_user` (`first_name`, `referral_id`, `language`, `user_id`, `email`, `password`, `password_reset_token`, `status`, `ip`, `created`) VALUES ('sfasfa', NULL, 'english', 'HKNQED', 'edukof621@gmail.com', '25d55ad283aa400af464c76d713c07ad', '33839612969ffc2c9705e4cfd3926919', 0, '172.68.26.93', '2018-10-09 06:01:51');
INSERT INTO `dbt_user` (`first_name`, `referral_id`, `language`, `user_id`, `email`, `password`, `password_reset_token`, `status`, `ip`, `created`) VALUES ('fsfa', NULL, 'english', 'CNFHSW', 'marcosculler23@gmail.com', '25d55ad283aa400af464c76d713c07ad', '797be8e56de8dada426c437b246a4293', 0, '172.68.26.93', '2018-10-09 06:03:00');
UPDATE `dbt_user` SET `status` = '1'
WHERE `password_reset_token` = '797be8e56de8dada426c437b246a4293';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-09 06:03:27', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'CNFHSW', '172.68.25.8');
UPDATE `admin` SET `last_login` = '2018-10-09 00:23:42', `ip_address` = '172.68.94.20'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-09 00:25:58'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 00:34:19', `ip_address` = '162.158.154.137'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 00:37:14', `ip_address` = '172.68.51.170'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 00:53:49', `ip_address` = '172.68.215.75'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 00:54:27', `ip_address` = '162.158.158.25'
WHERE `id` = '1';
INSERT INTO `dbt_user` (`id`, `user_id`, `referral_id`, `first_name`, `last_name`, `email`, `password`, `phone`, `ip`, `status`) VALUES ('', 'IQNBVH', '', 'hady', 'sharara', 'hadysharara@mail.com', 'd0aabe9a362cb2712ee90e04810902f3', '32442242', '162.158.158.19', '1');
UPDATE `admin` SET `last_logout` = '2018-10-09 00:56:45'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-09 01:15:37'
WHERE `id` IS NULL;
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-09 07:26:16', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'MSV0BX', '172.68.144.23');
UPDATE `admin` SET `last_login` = '2018-10-09 01:48:52', `ip_address` = '162.158.18.248'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 01:54:23', `ip_address` = '172.68.146.234'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 02:02:43', `ip_address` = '162.158.165.26'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 02:11:11', `ip_address` = '162.158.142.44'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 02:36:19', `ip_address` = '162.158.79.123'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 03:01:07', `ip_address` = '172.68.46.207'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 03:32:33', `ip_address` = '172.68.146.204'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-09 03:34:56'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_login` = '2018-10-09 03:35:40', `ip_address` = '172.69.62.80'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-09 03:40:13'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_logout` = '2018-10-09 03:43:10'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_logout` = '2018-10-09 03:50:02'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_logout` = '2018-10-09 03:50:21'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_logout` = '2018-10-09 03:52:18'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_login` = '2018-10-09 04:03:55', `ip_address` = '172.68.47.58'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 04:09:12', `ip_address` = '172.69.134.151'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 04:16:57', `ip_address` = '172.68.144.251'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 04:22:46', `ip_address` = '141.101.104.75'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 04:28:21', `ip_address` = '172.68.144.23'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 04:45:48', `ip_address` = '162.158.89.239'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 04:54:05', `ip_address` = '172.69.138.8'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 04:56:56', `ip_address` = '188.114.103.93'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 04:57:33', `ip_address` = '172.69.134.139'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-09 04:58:09'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-09 04:58:56'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 05:03:38', `ip_address` = '141.101.104.177'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 05:10:54', `ip_address` = '172.68.244.22'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 05:46:12', `ip_address` = '162.158.179.104'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 05:55:31', `ip_address` = '172.69.134.163'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 05:59:36', `ip_address` = '162.158.111.167'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 06:06:15', `ip_address` = '172.69.134.229'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-09 06:07:00'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 06:11:40', `ip_address` = '197.234.242.152'
WHERE `id` = '1';
UPDATE `dbt_cryptocoin` SET `id` = '510', `cid` = '20333', `image` = './upload/coinlist/steem.png', `symbol` = 'STEEM', `coin_name` = 'Steem', `full_name` = 'Steem (STEEM)', `algorithm` = '', `rank` = '526', `show_home` = '0', `coin_position` = '2000', `status` = '1'
WHERE `cid` = '20333';
UPDATE `admin` SET `last_logout` = '2018-10-09 06:15:09'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 06:16:01', `ip_address` = '141.101.105.202'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 06:16:02', `ip_address` = '172.68.47.22'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-09 06:16:32'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-09 06:16:42'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_logout` = '2018-10-09 06:16:44'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_login` = '2018-10-09 06:16:47', `ip_address` = '103.22.200.160'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-09 06:16:47'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_logout` = '2018-10-09 06:16:49'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_login` = '2018-10-09 06:17:43', `ip_address` = '197.234.242.152'
WHERE `id` = '1';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-09 12:32:22', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-62.0\",\"platform\":\"Windows 10\"}', 'MSV0BX', '162.158.165.110');
UPDATE `admin` SET `last_login` = '2018-10-09 08:55:35', `ip_address` = '::1'
WHERE `id` = '1';
UPDATE `payment_gateway` SET `id` = '1', `agent` = 'GoUrl Payment Gateway', `public_key` = 'a:13:{s:7:\"bitcoin\";s:0:\"\";s:11:\"bitcoincash\";s:0:\"\";s:8:\"litecoin\";s:0:\"\";s:4:\"dash\";s:0:\"\";s:8:\"dogecoin\";s:0:\"\";s:9:\"speedcoin\";s:0:\"\";s:8:\"reddcoin\";s:0:\"\";s:7:\"potcoin\";s:0:\"\";s:11:\"feathercoin\";s:0:\"\";s:8:\"vertcoin\";s:0:\"\";s:8:\"peercoin\";s:0:\"\";s:12:\"monetaryunit\";s:0:\"\";s:17:\"universalcurrency\";s:0:\"\";}', `private_key` = 'a:13:{s:7:\"bitcoin\";s:0:\"\";s:11:\"bitcoincash\";s:0:\"\";s:8:\"litecoin\";s:0:\"\";s:4:\"dash\";s:0:\"\";s:8:\"dogecoin\";s:0:\"\";s:9:\"speedcoin\";s:0:\"\";s:8:\"reddcoin\";s:0:\"\";s:7:\"potcoin\";s:0:\"\";s:11:\"feathercoin\";s:0:\"\";s:8:\"vertcoin\";s:0:\"\";s:8:\"peercoin\";s:0:\"\";s:12:\"monetaryunit\";s:0:\"\";s:17:\"universalcurrency\";s:0:\"\";}', `secret_key` = NULL, `status` = '1'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-09 09:15:25'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 09:15:37', `ip_address` = '::1'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-09 09:16:09'
WHERE `id` = '1';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-09 08:16:20', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'AUESMT', '::1');
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-09 13:32:15', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'TAREQ', '::1');
UPDATE `dbt_user` SET `language` = 'english'
WHERE `user_id` = 'TAREQ';
UPDATE `admin` SET `last_login` = '2018-10-09 09:35:28', `ip_address` = '::1'
WHERE `id` = '1';
INSERT INTO `dbt_market` (`id`, `name`, `full_name`, `symbol`, `status`) VALUES ('', 'USDT', 'USDT Market', 'USD', '1');
INSERT INTO `dbt_market` (`id`, `name`, `full_name`, `symbol`, `status`) VALUES ('', 'LTC', 'LTC Market', 'LTC', '1');
UPDATE `dbt_coinpair` SET `id` = '1', `market_symbol` = 'BTC', `currency_symbol` = 'LTC', `name` = 'BTC/ LTC', `full_name` = 'Bitcoin Exchange', `symbol` = 'BTC_LTC', `status` = '1'
WHERE `id` = '1';
UPDATE `dbt_coinpair` SET `id` = '1', `market_symbol` = 'BTC', `currency_symbol` = 'DOGE', `name` = 'BTC/ LTC', `full_name` = 'Bitcoin Exchange', `symbol` = 'BTC_DOGE', `status` = '1'
WHERE `id` = '1';
UPDATE `dbt_coinpair` SET `id` = '1', `market_symbol` = 'BTC', `currency_symbol` = 'LTC', `name` = 'BTC/ LTC', `full_name` = 'Bitcoin Exchange', `symbol` = 'BTC_LTC', `status` = '1'
WHERE `id` = '1';
UPDATE `dbt_coinpair` SET `id` = '1', `market_symbol` = 'BTC', `currency_symbol` = 'LTC', `name` = 'BTC/ LTC', `full_name` = 'Bitcoin Exchange', `symbol` = 'BTC_LTC', `status` = '1'
WHERE `id` = '1';
UPDATE `dbt_coinpair` SET `id` = '1', `market_symbol` = 'BTC', `currency_symbol` = 'LTC', `name` = 'BTC/ LTC', `full_name` = 'Bitcoin Exchange', `symbol` = 'LTC_BTC', `status` = '1'
WHERE `id` = '1';
UPDATE `dbt_coinpair` SET `id` = '1', `market_symbol` = 'BTC', `currency_symbol` = 'LTC', `name` = 'BTC/ LTC', `full_name` = 'Litecoin Exchange', `symbol` = 'LTC_BTC', `status` = '1'
WHERE `id` = '1';
INSERT INTO `dbt_coinpair` (`id`, `market_symbol`, `currency_symbol`, `name`, `full_name`, `symbol`, `status`) VALUES ('', 'BTC', 'DASH', 'BTC/ DASH', 'DASH Exchange', 'DASH_BTC', '1');
INSERT INTO `dbt_coinpair` (`id`, `market_symbol`, `currency_symbol`, `name`, `full_name`, `symbol`, `status`) VALUES ('', 'BTC', 'DOGE', 'BTC/ DOGE', 'Dogecoin (DOGE) Exchange', 'DOGE_BTC', '1');
INSERT INTO `dbt_coinpair` (`id`, `market_symbol`, `currency_symbol`, `name`, `full_name`, `symbol`, `status`) VALUES ('', 'USD', 'BTC', 'USDT/ BTC', 'Bitcoin (BTC) Exchange', 'BTC_USD', '1');
INSERT INTO `dbt_coinpair` (`id`, `market_symbol`, `currency_symbol`, `name`, `full_name`, `symbol`, `status`) VALUES ('', 'USD', 'LTC', 'USDT/ LTC', 'Litecoin (LTC) Exchange', 'LTC_USD', '1');
INSERT INTO `dbt_coinpair` (`id`, `market_symbol`, `currency_symbol`, `name`, `full_name`, `symbol`, `status`) VALUES ('', 'USD', 'DASH', 'USDT/ DASH', 'DigitalCash (DASH) Exchange', 'DASH_USD', '1');
INSERT INTO `dbt_coinpair` (`id`, `market_symbol`, `currency_symbol`, `name`, `full_name`, `symbol`, `status`) VALUES ('', 'USD', 'DOGE', 'USDT/ DOGE', 'Dogecoin (DOGE) Exchange', 'DOGE_USD', '1');
INSERT INTO `dbt_coinpair` (`id`, `market_symbol`, `currency_symbol`, `name`, `full_name`, `symbol`, `status`) VALUES ('', 'LTC', 'BTC', 'LTC/ BTC', 'Bitcoin (BTC) Exchange', 'BTC_LTC', '1');
UPDATE `dbt_market` SET `id` = '2', `name` = 'USD', `full_name` = 'USDT Market', `symbol` = 'USD', `status` = '1'
WHERE `id` = '2';
UPDATE `dbt_cryptocoin` SET `id` = '178', `cid` = '4587', `image` = './upload/coinlist/pot.png', `symbol` = 'POT', `coin_name` = 'PotCoin', `full_name` = 'PotCoin (POT)', `algorithm` = '', `rank` = '183', `show_home` = '0', `coin_position` = '8', `status` = '1'
WHERE `cid` = '4587';
UPDATE `payment_gateway` SET `id` = '1', `agent` = 'GoUrl Payment Gateway', `public_key` = 'a:13:{s:7:\"bitcoin\";s:0:\"\";s:11:\"bitcoincash\";s:0:\"\";s:8:\"litecoin\";s:0:\"\";s:4:\"dash\";s:0:\"\";s:8:\"dogecoin\";s:0:\"\";s:9:\"speedcoin\";s:0:\"\";s:8:\"reddcoin\";s:0:\"\";s:7:\"potcoin\";s:0:\"\";s:11:\"feathercoin\";s:0:\"\";s:8:\"vertcoin\";s:0:\"\";s:8:\"peercoin\";s:0:\"\";s:12:\"monetaryunit\";s:0:\"\";s:17:\"universalcurrency\";s:0:\"\";}', `private_key` = 'a:13:{s:7:\"bitcoin\";s:0:\"\";s:11:\"bitcoincash\";s:0:\"\";s:8:\"litecoin\";s:0:\"\";s:4:\"dash\";s:0:\"\";s:8:\"dogecoin\";s:0:\"\";s:9:\"speedcoin\";s:0:\"\";s:8:\"reddcoin\";s:0:\"\";s:7:\"potcoin\";s:0:\"\";s:11:\"feathercoin\";s:0:\"\";s:8:\"vertcoin\";s:0:\"\";s:8:\"peercoin\";s:0:\"\";s:12:\"monetaryunit\";s:0:\"\";s:17:\"universalcurrency\";s:0:\"\";}', `secret_key` = NULL, `status` = '1'
WHERE `id` = '1';
UPDATE `email_sms_gateway` SET `gatewayname` = 'smsrank', `title` = 'Bdtask SMS', `host` = 'http://api.smsrank.com/sms/1/text/singles', `user` = 'criptotrade', `userid` = NULL, `password` = 'VE9kYXkxMiM=', `api` = NULL
WHERE `es_id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-09 10:56:58'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-09 11:00:02', `ip_address` = '::1'
WHERE `id` = '1';
UPDATE `setting` SET `setting_id` = '1', `title` = 'Crypto Currency Treading System', `description` = 'Bangladesh Office <br>98 Green Road, Farmgate, Dhaka- 1215', `email` = 'info@bdtask.com', `phone` = '+88-01817-584639', `logo` = 'upload/settings/4c7a484314b199106e1edf01876e179e.png', `logo_web` = 'upload/settings/cd8f9f18c7a56317f62d3f9962e035d9.png', `favicon` = 'upload/settings/6a32acfe674bbfb88ad1c8f3f1de332d.png', `language` = 'english', `time_zone` = 'Asia/Dhaka', `site_align` = 'LTR', `office_time` = 'Monday - Friday: <strong>08:00 - 22:00</strong>\r\n<br>Saturday, Sunday: <strong>Closed</strong>', `latitude` = '40.6700, -73.9400', `footer_text` = '2018 © Copyright bdtask Treading System'
WHERE `setting_id` = '1';
UPDATE `setting` SET `setting_id` = '1', `title` = 'Crypto Currency Treading System', `description` = 'Bangladesh Office <br>98 Green Road, Farmgate, Dhaka- 1215', `email` = 'info@bdtask.com', `phone` = '+88-01817-584639', `logo` = 'upload/settings/c579decfe732e25b7d347daa3a82b11c.png', `logo_web` = 'upload/settings/5b3c74cacc762f373210b855dc9b885a.png', `favicon` = 'upload/settings/6a32acfe674bbfb88ad1c8f3f1de332d.png', `language` = 'english', `time_zone` = 'Asia/Dhaka', `site_align` = 'LTR', `office_time` = 'Monday - Friday: <strong>08:00 - 22:00</strong>\r\n<br>Saturday, Sunday: <strong>Closed</strong>', `latitude` = '40.6700, -73.9400', `footer_text` = '2018 © Copyright bdtask Treading System'
WHERE `setting_id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-09 11:41:35'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_login` = '2018-10-09 13:05:16', `ip_address` = '::1'
WHERE `id` = '1';
UPDATE `payment_gateway` SET `id` = '1', `agent` = 'GoUrl Payment Gateway', `public_key` = 'a:13:{s:7:\"bitcoin\";s:50:\"25654AAo79c3Bitcoin77BTCPUBqwIefT1j9fqqMwUtMI0huVL\";s:11:\"bitcoincash\";s:0:\"\";s:8:\"litecoin\";s:0:\"\";s:4:\"dash\";s:0:\"\";s:8:\"dogecoin\";s:0:\"\";s:9:\"speedcoin\";s:0:\"\";s:8:\"reddcoin\";s:0:\"\";s:7:\"potcoin\";s:0:\"\";s:11:\"feathercoin\";s:0:\"\";s:8:\"vertcoin\";s:0:\"\";s:8:\"peercoin\";s:0:\"\";s:12:\"monetaryunit\";s:0:\"\";s:17:\"universalcurrency\";s:0:\"\";}', `private_key` = 'a:13:{s:7:\"bitcoin\";s:50:\"25654AAo79c3Bitcoin77BTCPRV0JG7w3jg0Tc5Pfi34U8o5JE\";s:11:\"bitcoincash\";s:0:\"\";s:8:\"litecoin\";s:0:\"\";s:4:\"dash\";s:0:\"\";s:8:\"dogecoin\";s:0:\"\";s:9:\"speedcoin\";s:0:\"\";s:8:\"reddcoin\";s:0:\"\";s:7:\"potcoin\";s:0:\"\";s:11:\"feathercoin\";s:0:\"\";s:8:\"vertcoin\";s:0:\"\";s:8:\"peercoin\";s:0:\"\";s:12:\"monetaryunit\";s:0:\"\";s:17:\"universalcurrency\";s:0:\"\";}', `secret_key` = NULL, `status` = '1'
WHERE `id` = '1';
UPDATE `payment_gateway` SET `id` = '1', `agent` = 'GoUrl Payment Gateway', `public_key` = 'a:13:{s:7:\"bitcoin\";s:50:\"25654AAo79c3Bitcoin77BTCPUBqwIefT1j9fqqMwUtMI0huVL\";s:11:\"bitcoincash\";s:0:\"\";s:8:\"litecoin\";s:0:\"\";s:4:\"dash\";s:0:\"\";s:8:\"dogecoin\";s:0:\"\";s:9:\"speedcoin\";s:50:\"20116AA36hi8Speedcoin77SPDPUBjTMX31yIra1IBRssY7yFy\";s:8:\"reddcoin\";s:0:\"\";s:7:\"potcoin\";s:0:\"\";s:11:\"feathercoin\";s:0:\"\";s:8:\"vertcoin\";s:0:\"\";s:8:\"peercoin\";s:0:\"\";s:12:\"monetaryunit\";s:0:\"\";s:17:\"universalcurrency\";s:0:\"\";}', `private_key` = 'a:13:{s:7:\"bitcoin\";s:50:\"25654AAo79c3Bitcoin77BTCPRV0JG7w3jg0Tc5Pfi34U8o5JE\";s:11:\"bitcoincash\";s:0:\"\";s:8:\"litecoin\";s:0:\"\";s:4:\"dash\";s:0:\"\";s:8:\"dogecoin\";s:0:\"\";s:9:\"speedcoin\";s:50:\"20116AA36hi8Speedcoin77SPDPRVNOwjzYNqVn4Sn5XOwMI2c\";s:8:\"reddcoin\";s:0:\"\";s:7:\"potcoin\";s:0:\"\";s:11:\"feathercoin\";s:0:\"\";s:8:\"vertcoin\";s:0:\"\";s:8:\"peercoin\";s:0:\"\";s:12:\"monetaryunit\";s:0:\"\";s:17:\"universalcurrency\";s:0:\"\";}', `secret_key` = NULL, `status` = '1'
WHERE `id` = '1';
INSERT INTO `dbt_user` (`id`, `user_id`, `referral_id`, `first_name`, `last_name`, `email`, `password`, `phone`, `ip`, `status`) VALUES ('', 'LO87VB', '', 'Trader one', '', 'traderone@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '8801700000001', '::1', '1');
INSERT INTO `dbt_user` (`id`, `user_id`, `referral_id`, `first_name`, `last_name`, `email`, `password`, `phone`, `ip`, `status`) VALUES ('', '6U682A', '', 'Trader two', '', 'tradertwo@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '8801700000002', '::1', '1');
INSERT INTO `dbt_user` (`id`, `user_id`, `referral_id`, `first_name`, `last_name`, `email`, `password`, `phone`, `ip`, `status`) VALUES ('', 'KM8O6M', '', 'Trader three', '', 'traderthree@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '8801700000003', '::1', '1');
INSERT INTO `dbt_user` (`id`, `user_id`, `referral_id`, `first_name`, `last_name`, `email`, `password`, `phone`, `ip`, `status`) VALUES ('', 'VBE5FM', '', 'Trader four', '', 'traderfour@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '8801700000004', '::1', '1');
INSERT INTO `dbt_user` (`id`, `user_id`, `referral_id`, `first_name`, `last_name`, `email`, `password`, `phone`, `ip`, `status`) VALUES ('', 'G26FW2', '', 'Trader five', '', 'traderfive@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '8801700000005', '::1', '1');
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES ('TAREQ', 'USD', '10000', 'admin', 0, 'Credited admin', '2018-10-09 13:19:24', '2018-10-09 13:19:24', 1, '::1', 'admin');
INSERT INTO `dbt_balance` (`user_id`, `currency_symbol`, `balance`, `last_update`) VALUES ('TAREQ', 'USD', '10000', '2018-10-09 13:19:24');
INSERT INTO `dbt_balance_log` (`balance_id`, `user_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES (1, 'TAREQ', 'USD', 'CREDITED', '10000', 0, '::1', '2018-10-09 13:19:24');
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES ('TAREQ', 'BTC', '2', 'admin', 0, 'Credit admin', '2018-10-09 13:20:29', '2018-10-09 13:20:29', 1, '::1', 'admin');
INSERT INTO `dbt_balance` (`user_id`, `currency_symbol`, `balance`, `last_update`) VALUES ('TAREQ', 'BTC', '2', '2018-10-09 13:20:29');
INSERT INTO `dbt_balance_log` (`balance_id`, `user_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES (2, 'TAREQ', 'BTC', 'CREDITED', '2', 0, '::1', '2018-10-09 13:20:29');
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES ('TAREQ', 'LTC', '1000', 'admin', 0, 'Credit admin', '2018-10-09 13:21:10', '2018-10-09 13:21:10', 1, '::1', 'admin');
INSERT INTO `dbt_balance` (`user_id`, `currency_symbol`, `balance`, `last_update`) VALUES ('TAREQ', 'LTC', '1000', '2018-10-09 13:21:10');
INSERT INTO `dbt_balance_log` (`balance_id`, `user_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES (3, 'TAREQ', 'LTC', 'CREDITED', '1000', 0, '::1', '2018-10-09 13:21:10');
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES ('TAREQ', 'DASH', '500', 'admin', 0, 'Credit admin', '2018-10-09 13:21:53', '2018-10-09 13:21:53', 1, '::1', 'admin');
INSERT INTO `dbt_balance` (`user_id`, `currency_symbol`, `balance`, `last_update`) VALUES ('TAREQ', 'DASH', '500', '2018-10-09 13:21:53');
INSERT INTO `dbt_balance_log` (`balance_id`, `user_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES (4, 'TAREQ', 'DASH', 'CREDITED', '500', 0, '::1', '2018-10-09 13:21:53');
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES ('TAREQ', 'DOGE', '100000', 'admin', 0, 'Credit admin', '2018-10-09 13:28:50', '2018-10-09 13:28:50', 1, '::1', 'admin');
INSERT INTO `dbt_balance` (`user_id`, `currency_symbol`, `balance`, `last_update`) VALUES ('TAREQ', 'DOGE', '100000', '2018-10-09 13:28:50');
INSERT INTO `dbt_balance_log` (`balance_id`, `user_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES (5, 'TAREQ', 'DOGE', 'CREDITED', '100000', 0, '::1', '2018-10-09 13:28:50');
INSERT INTO `dbt_fees` (`level`, `fees`, `currency_symbol`) VALUES ('buy', '0.25', 'USD');
INSERT INTO `dbt_fees` (`level`, `fees`, `currency_symbol`) VALUES ('buy', '0.5', 'BTC');
INSERT INTO `dbt_fees` (`level`, `fees`, `currency_symbol`) VALUES ('buy', '0.25', 'LTC');
INSERT INTO `dbt_fees` (`level`, `fees`, `currency_symbol`) VALUES ('buy', '0.25', 'DASH');
INSERT INTO `dbt_fees` (`level`, `fees`, `currency_symbol`) VALUES ('buy', '0.25', 'DOGE');
INSERT INTO `dbt_fees` (`level`, `fees`, `currency_symbol`) VALUES ('buy', '0.25', 'PPC');
INSERT INTO `dbt_fees` (`level`, `fees`, `currency_symbol`) VALUES ('buy', '0.25', 'FTC');
INSERT INTO `dbt_fees` (`level`, `fees`, `currency_symbol`) VALUES ('buy', '0.25', 'POT');
INSERT INTO `dbt_fees` (`level`, `fees`, `currency_symbol`) VALUES ('buy', '0.25', 'RDD');
INSERT INTO `dbt_fees` (`level`, `fees`, `currency_symbol`) VALUES ('buy', '0.25', 'VTC');
INSERT INTO `dbt_fees` (`level`, `fees`, `currency_symbol`) VALUES ('buy', '0.25', 'UNIT');
INSERT INTO `dbt_fees` (`level`, `fees`, `currency_symbol`) VALUES ('buy', '0.25', 'MUE');
INSERT INTO `dbt_fees` (`level`, `fees`, `currency_symbol`) VALUES ('buy', '0.25', 'BCH');
INSERT INTO `dbt_fees` (`level`, `fees`, `currency_symbol`) VALUES ('buy', '0.25', 'SPD');
INSERT INTO `dbt_transaction_setup` (`trntype`, `acctype`, `currency_symbol`, `lower`, `upper`, `duration`, `status`) VALUES ('WITHDRAW', 'UNVERIFIED', 'USD', 0, '100', 7, 1);
INSERT INTO `dbt_transaction_setup` (`trntype`, `acctype`, `currency_symbol`, `lower`, `upper`, `duration`, `status`) VALUES ('WITHDRAW', 'UNVERIFIED', 'BTC', 0, '1', 7, 1);
INSERT INTO `dbt_transaction_setup` (`trntype`, `acctype`, `currency_symbol`, `lower`, `upper`, `duration`, `status`) VALUES ('WITHDRAW', 'UNVERIFIED', 'LTC', 0, '2', 7, 1);
INSERT INTO `dbt_transaction_setup` (`trntype`, `acctype`, `currency_symbol`, `lower`, `upper`, `duration`, `status`) VALUES ('WITHDRAW', 'UNVERIFIED', 'DASH', 0, '1', 7, 1);
INSERT INTO `dbt_transaction_setup` (`trntype`, `acctype`, `currency_symbol`, `lower`, `upper`, `duration`, `status`) VALUES ('WITHDRAW', 'UNVERIFIED', 'DOGE', 0, '17804', 7, 1);
INSERT INTO `dbt_transaction_setup` (`trntype`, `acctype`, `currency_symbol`, `lower`, `upper`, `duration`, `status`) VALUES ('WITHDRAW', 'UNVERIFIED', 'PPC', 0, '100', 7, 1);
INSERT INTO `dbt_transaction_setup` (`trntype`, `acctype`, `currency_symbol`, `lower`, `upper`, `duration`, `status`) VALUES ('WITHDRAW', 'UNVERIFIED', 'FTC', 0, '100', 7, 1);
INSERT INTO `dbt_transaction_setup` (`trntype`, `acctype`, `currency_symbol`, `lower`, `upper`, `duration`, `status`) VALUES ('WITHDRAW', 'UNVERIFIED', 'POT', 0, '100', 7, 1);
INSERT INTO `dbt_transaction_setup` (`trntype`, `acctype`, `currency_symbol`, `lower`, `upper`, `duration`, `status`) VALUES ('WITHDRAW', 'VERIFIED', 'RDD', 0, '1000', 7, 1);
INSERT INTO `dbt_transaction_setup` (`trntype`, `acctype`, `currency_symbol`, `lower`, `upper`, `duration`, `status`) VALUES ('WITHDRAW', 'UNVERIFIED', 'VTC', 0, '1000', 7, 1);
INSERT INTO `dbt_transaction_setup` (`trntype`, `acctype`, `currency_symbol`, `lower`, `upper`, `duration`, `status`) VALUES ('WITHDRAW', 'UNVERIFIED', 'UNIT', 0, '1000', 7, 1);
INSERT INTO `dbt_transaction_setup` (`trntype`, `acctype`, `currency_symbol`, `lower`, `upper`, `duration`, `status`) VALUES ('WITHDRAW', 'UNVERIFIED', 'MUE', 0, '1000', 7, 1);
INSERT INTO `dbt_transaction_setup` (`trntype`, `acctype`, `currency_symbol`, `lower`, `upper`, `duration`, `status`) VALUES ('WITHDRAW', 'UNVERIFIED', 'BCH', 0, '100', 7, 1);
INSERT INTO `dbt_transaction_setup` (`trntype`, `acctype`, `currency_symbol`, `lower`, `upper`, `duration`, `status`) VALUES ('WITHDRAW', 'UNVERIFIED', 'SPD', 0, '1000', 7, 1);
UPDATE `admin` SET `last_logout` = '2018-10-09 15:03:12'
WHERE `id` = '1';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-09 19:03:36', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'TAREQ', '::1');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.008800', '5', '5', 0.044, 0.044, 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-09 19:05:43', '0.01250000', 2);
UPDATE `dbt_balance` SET `balance` = 994.9875
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.008801', '20', '20', 0.17602, 0.17602, 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-09 19:12:48', '0.05000000', 2);
UPDATE `dbt_balance` SET `balance` = 974.9375
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.00890001', '50', '50', 0.4450005, 0.4450005, 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-09 19:14:15', '0.12500000', 2);
UPDATE `dbt_balance` SET `balance` = 924.8125
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-09 19:15:34', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'LO87VB', '::1');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.00885005', '1', '1', 0.00885005, 0.00885005, 'LTC', 'LTC_BTC', 'LO87VB', '2018-10-09 19:15:53', '0.00250000', 2);
UPDATE `dbt_balance` SET `balance` = 998.9975
WHERE `user_id` = 'LO87VB'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.008847', '150', '150', 1.32705, 1.32705, 'LTC', 'LTC_BTC', 'LO87VB', '2018-10-09 19:17:06', '0.37500000', 2);
UPDATE `dbt_balance` SET `balance` = 848.6225
WHERE `user_id` = 'LO87VB'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.00886', '50', '50', 0.443, 0.443, 'LTC', 'LTC_BTC', 'LO87VB', '2018-10-09 19:17:17', '0.12500000', 2);
UPDATE `dbt_balance` SET `balance` = 798.4975
WHERE `user_id` = 'LO87VB'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_user` SET `language` = 'english'
WHERE `user_id` = 'LO87VB';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.008851', '70', '70', 0.61957, 0.61957, 'LTC', 'LTC_BTC', 'LO87VB', '2018-10-09 19:26:20', '0.17500000', 2);
UPDATE `dbt_balance` SET `balance` = 728.3225
WHERE `user_id` = 'LO87VB'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-09 19:26:59', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', '6U682A', '::1');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.008849', '1', '1', 0.008849, 0.008849, 'LTC', 'LTC_BTC', '6U682A', '2018-10-09 19:27:10', '', 2);
UPDATE `dbt_balance` SET `balance` = 999
WHERE `user_id` = '6U682A'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.008849', '120', '120', 1.06188, 1.06188, 'LTC', 'LTC_BTC', '6U682A', '2018-10-09 19:27:36', '0.30000000', 2);
UPDATE `dbt_balance` SET `balance` = 878.7
WHERE `user_id` = '6U682A'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.0090', '1', '1', 0.009, 0.009, 'LTC', 'LTC_BTC', '6U682A', '2018-10-09 19:28:00', '0.00250000', 2);
UPDATE `dbt_balance` SET `balance` = 877.6975
WHERE `user_id` = '6U682A'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.0095', '100', '100', 0.95, 0.95, 'LTC', 'LTC_BTC', '6U682A', '2018-10-09 19:28:18', '0.25000000', 2);
UPDATE `dbt_balance` SET `balance` = 777.4475
WHERE `user_id` = '6U682A'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-09 19:33:05', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'KM8O6M', '::1');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.008852', '19', '19', 0.168188, 0.168188, 'LTC', 'LTC_BTC', 'KM8O6M', '2018-10-09 19:33:22', '0.04750000', 2);
UPDATE `dbt_balance` SET `balance` = 980.9525
WHERE `user_id` = 'KM8O6M'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.01500', '80', '80', 1.2, 1.2, 'LTC', 'LTC_BTC', 'KM8O6M', '2018-10-09 19:33:50', '0.20000000', 2);
UPDATE `dbt_balance` SET `balance` = 900.7525
WHERE `user_id` = 'KM8O6M'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '.0095', '250', '250', 2.375, 2.375, 'LTC', 'LTC_BTC', 'KM8O6M', '2018-10-09 19:34:13', '0.62500000', 2);
UPDATE `dbt_balance` SET `balance` = 650.1275
WHERE `user_id` = 'KM8O6M'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-09 19:34:37', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'VBE5FM', '::1');
UPDATE `dbt_user` SET `language` = 'english'
WHERE `user_id` = 'VBE5FM';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.0088500', '180', '180', 1.593, 1.593, 'LTC', 'LTC_BTC', 'VBE5FM', '2018-10-09 19:35:02', '0.45000000', 2);
UPDATE `dbt_balance` SET `balance` = 819.55
WHERE `user_id` = 'VBE5FM'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '.008750', '160', '160', 1.4, 1.4, 'LTC', 'LTC_BTC', 'VBE5FM', '2018-10-09 19:35:13', '0.40000000', 2);
UPDATE `dbt_balance` SET `balance` = 659.15
WHERE `user_id` = 'VBE5FM'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.008953', '1', '1', 0.008953, 0.008953, 'LTC', 'LTC_BTC', 'VBE5FM', '2018-10-09 19:36:32', '0.00250000', 2);
UPDATE `dbt_balance` SET `balance` = 658.1475
WHERE `user_id` = 'VBE5FM'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-09 19:41:33', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'G26FW2', '::1');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.008864', '1', '1', 0.008864, 0.008864, 'LTC', 'LTC_BTC', 'G26FW2', '2018-10-09 19:41:45', '0.00250000', 2);
UPDATE `dbt_balance` SET `balance` = 998.9975
WHERE `user_id` = 'G26FW2'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.008855', '1', '1', 0.008855, 0.008855, 'LTC', 'LTC_BTC', 'G26FW2', '2018-10-09 19:43:17', '0.00250000', 2);
UPDATE `dbt_balance` SET `balance` = 997.995
WHERE `user_id` = 'G26FW2'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.0088556', '1', '1', 0.0088556, 0.0088556, 'LTC', 'LTC_BTC', 'G26FW2', '2018-10-09 19:43:24', '0.00250000', 2);
UPDATE `dbt_balance` SET `balance` = 996.9925
WHERE `user_id` = 'G26FW2'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.0088556', '100', '100', 0.88556, 0.88556, 'LTC', 'LTC_BTC', 'G26FW2', '2018-10-09 19:43:34', '0.25000000', 2);
UPDATE `dbt_balance` SET `balance` = 896.7425
WHERE `user_id` = 'G26FW2'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.008858', '90', '90', 0.79722, 0.79722, 'LTC', 'LTC_BTC', 'G26FW2', '2018-10-09 19:43:43', '0.22500000', 2);
UPDATE `dbt_balance` SET `balance` = 806.5175
WHERE `user_id` = 'G26FW2'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-09 20:11:08', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'TAREQ', '::1');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('sell', '0.008861', '1', '1', 0.008861, 0.008861, 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-09 20:11:21', '', 2);
UPDATE `dbt_balance` SET `balance` = 923.8125
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-10 12:12:30', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'TAREQ', '::1');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008799', '10', '10', '0.08799', '0.08799', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 12:12:50', '0.00043995', 2);
UPDATE `dbt_balance` SET `balance` = 1.91157005
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00879900', 10, '0.00879900', '0.00879900', '0.00879900', NULL, '2018-10-10 12:12:50');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', NULL, NULL, NULL, NULL, NULL, '', NULL, 'TAREQ', '2018-10-10 12:12:56', NULL, 2);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008799', '10', '10', '0.08799', '0.08799', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 12:14:49', '0.00043995', 2);
UPDATE `dbt_balance` SET `balance` = 1.8231401
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00879900', 10, '0.00879900', '0.00879900', '0.00879900', NULL, '2018-10-10 12:14:49');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008807', '10', '10', '0.08807000000000001', '0.08807000000000001', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 12:27:28', '0.00044035000000000005', 2);
UPDATE `dbt_balance` SET `balance` = 1.91148965
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00880700', 5, '0.00880700', NULL, '0.00880700', NULL, '2018-10-10 12:27:28');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', NULL, NULL, NULL, NULL, NULL, '', NULL, 'TAREQ', '2018-10-10 12:27:40', NULL, 2);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008801', '1', '1', '', '', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 12:30:08', '', 2);
UPDATE `dbt_balance` SET `balance` = 2
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00880100', 1, '0.00880100', NULL, '0.00880100', NULL, '2018-10-10 12:30:08');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.00881', '1', '1', '', '', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 12:32:46', '', 2);
UPDATE `dbt_balance` SET `balance` = 2
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00881000', 1, '0.00881000', NULL, '0.00881000', NULL, '2018-10-10 12:32:46');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008809', '1', '1', '', '', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 12:33:23', '', 2);
UPDATE `dbt_balance` SET `balance` = 2
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00880900', 1, '0.00880900', NULL, '0.00880900', NULL, '2018-10-10 12:33:23');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '.0087500', '1', '1', '0.00875', '0.00875', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 12:35:06', '0.000043750000000000006', 2);
UPDATE `dbt_balance` SET `balance` = 1.99120625
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00875000', 1, '0.00875000', NULL, '0.00875000', NULL, '2018-10-10 12:35:06');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008808', '1', '1', '', '', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 12:35:39', '', 2);
UPDATE `dbt_balance` SET `balance` = 1.99120625
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00880800', 1, '0.00880800', NULL, '0.00880800', NULL, '2018-10-10 12:35:39');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008809', '1', '1', '', '', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 12:36:11', '', 2);
UPDATE `dbt_balance` SET `balance` = 1.99120625
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00880900', 1, '0.00880900', NULL, '0.00880900', NULL, '2018-10-10 12:36:11');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008809', '1', '1', '', '', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 12:36:58', '', 2);
UPDATE `dbt_balance` SET `balance` = 1.99120625
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00880900', 1, '0.00880900', NULL, '0.00880900', NULL, '2018-10-10 12:36:58');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008809', '1', '1', '', '', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 12:38:18', '', 2);
UPDATE `dbt_balance` SET `balance` = 1.99120625
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00880900', 1, '0.00880900', NULL, '0.00880900', NULL, '2018-10-10 12:38:18');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008805', '1', '1', '', '', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 12:40:59', '', 2);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.00881', '1', '1', '', '', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 12:42:31', '', 2);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008809', '1', '1', '', '', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 12:47:00', '', 2);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008804', '1', '1', '0.008804', '0.008804', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 12:50:22', '0.000044019999999999995', 2);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008805', '20', '20', '0.1761', '0.1761', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 12:54:59', '0.0008805000000000001', 2);
UPDATE `dbt_balance` SET `balance` = 1.8230195
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00880500', 5, '0.00880500', '0.00880500', '0.00880500', NULL, '2018-10-10 12:54:59');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.00880', '15', '15', '0.132', '0.132', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 12:56:08', '0.00066', 2);
UPDATE `dbt_balance` SET `balance` = 1.6903595
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00880000', 5, '0.00880000', '0.00880000', '0.00880000', NULL, '2018-10-10 12:56:08');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', NULL, NULL, NULL, NULL, NULL, '', NULL, 'TAREQ', '2018-10-10 12:56:14', NULL, 2);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008801', '151', '151', '1.328951', '1.328951', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 12:56:37', '0.0066447550000000005', 2);
UPDATE `dbt_balance` SET `balance` = 0.35476374
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00880100', 5, '0.00880100', '0.00880100', '0.00880100', NULL, '2018-10-10 12:56:37');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '.001545', '1', '1', '0.001545', '0.001545', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 12:58:32', '0.000007725', 2);
UPDATE `dbt_balance` SET `balance` = 0.35321102
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008790', '15', '15', '0.13185', '0.13185', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 12:59:30', '0.00065925', 2);
UPDATE `dbt_balance` SET `balance` = 0.22070177
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008809', '10', '10', '0.08809', '0.08809', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 13:04:56', '0.00044045', 2);
UPDATE `dbt_balance` SET `balance` = 1.91146955
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00880900', 5, '0.00880900', '0.00880900', '0.00880900', 0, '2018-10-10 13:04:56');
UPDATE `dbt_balance` SET `balance` = 929.8125
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 1.95551455
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 5, `amount_available` = 0.044045, `status` = 2
WHERE `id` = 23;
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = '1';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('1', 'sell', '5.00000000', '0.00880000', 0.044045, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-10 13:04:56', '0.01250000', 0.044, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('23', 'buy', '5.00000000', '0.00880900', 0.044045, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-10 13:04:56', '0.00044045', 0, 1);
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00880900', 10, '0.00880900', '0.00880000', '0.00880900', '5.00000000', '2018-10-10 13:04:56');
UPDATE `dbt_balance` SET `balance` = 934.8125
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 1.99955955
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = 23;
UPDATE `dbt_biding` SET `bid_qty_available` = 15, `amount_available` = 0.132015, `status` = 2
WHERE `id` = '2';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('2', 'sell', '5.00000000', '0.00880100', 0.044045, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-10 13:04:56', '0.05000000', 0.17602, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('23', 'buy', '5.00000000', '0.00880900', 0.044045, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-10 13:04:56', '0.00044045', 0, 1);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008702', '10', '10', '0.08702', '0.08702', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 13:07:09', '0.0004351', 2);
UPDATE `dbt_balance` SET `balance` = 1.9125449
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_chat` (`user_id`, `message`, `datetime`) VALUES ('TAREQ', 'hi....', '2018-10-10 13:08:35');
INSERT INTO `dbt_chat` (`user_id`, `message`, `datetime`) VALUES ('TAREQ', 'LTC is growing up bro :)', '2018-10-10 13:11:49');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.00870200', '10', '10', '0.08702', '0.08702', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 13:44:52', '0.0004351', 2);
UPDATE `dbt_balance` SET `balance` = 1.8250898
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-10 13:45:14', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'LO87VB', '::1');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.007001', '1', '1', '0.007001', '0.007001', 'LTC', 'LTC_BTC', 'LO87VB', '2018-10-10 13:45:41', '0.000035005', 2);
UPDATE `dbt_balance` SET `balance` = 1.992964
WHERE `user_id` = 'LO87VB'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.0086900', '151', '151', '1.31219', '1.31219', 'LTC', 'LTC_BTC', 'LO87VB', '2018-10-10 13:46:54', '0.00656095', 2);
UPDATE `dbt_balance` SET `balance` = 0.67421305
WHERE `user_id` = 'LO87VB'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008801', '25', '25', '0.220025', '0.220025', 'LTC', 'LTC_BTC', 'LO87VB', '2018-10-10 13:47:14', '0.001100125', 2);
UPDATE `dbt_balance` SET `balance` = 0.45308793
WHERE `user_id` = 'LO87VB'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00880100', 5, '0.00880100', '0.00880100', '0.00880100', 0, '2018-10-10 13:47:14');
UPDATE `dbt_balance` SET `balance` = 733.3225
WHERE `user_id` = 'LO87VB'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 1.8690948
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 20, `amount_available` = 0.17602, `status` = 2
WHERE `id` = 27;
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = '1';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('1', 'sell', '5.00000000', '0.00880000', 0.044005, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-10 13:47:14', '0.01250000', 0.044, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('27', 'buy', '5.00000000', '0.00880100', 0.044005, 'LO87VB', 'LTC', 'LTC_BTC', '2018-10-10 13:47:14', '0.00110012', 0, 1);
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00880100', 25, '0.00880100', '0.00880000', '0.00880100', '5.00000000', '2018-10-10 13:47:14');
UPDATE `dbt_balance` SET `balance` = 753.3225
WHERE `user_id` = 'LO87VB'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 2.0451148
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = 27;
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = '2';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('2', 'sell', '20.00000000', '0.00880100', 0.17602, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-10 13:47:14', '0.05000000', 0.17602, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('27', 'buy', '20.00000000', '0.00880100', 0.17602, 'LO87VB', 'LTC', 'LTC_BTC', '2018-10-10 13:47:14', '0.00110012', 0, 1);
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-10 13:47:36', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', '6U682A', '::1');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.00860001', '50', '50', '0.4300005', '0.4300005', 'LTC', 'LTC_BTC', '6U682A', '2018-10-10 13:48:18', '0.0021500025', 2);
UPDATE `dbt_balance` SET `balance` = 1.5678495
WHERE `user_id` = '6U682A'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.007802', '75', '75', '0.58515', '0.58515', 'LTC', 'LTC_BTC', '6U682A', '2018-10-10 13:48:33', '0.00292575', 2);
UPDATE `dbt_balance` SET `balance` = 0.97977375
WHERE `user_id` = '6U682A'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008798', '5', '5', '0.04399', '0.04399', 'LTC', 'LTC_BTC', '6U682A', '2018-10-10 13:49:04', '0.00021995', 2);
UPDATE `dbt_balance` SET `balance` = 0.9355638
WHERE `user_id` = '6U682A'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00879800', 30, '0.00880100', '0.00879800', '0.00879800', '25.00000000', '2018-10-10 13:49:04');
UPDATE `dbt_balance` SET `balance` = 782.4475
WHERE `user_id` = '6U682A'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 2.04399
WHERE `user_id` = 'VBE5FM'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = 30;
UPDATE `dbt_biding` SET `bid_qty_available` = 155, `amount_available` = 1.35625, `status` = 2
WHERE `id` = '16';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('16', 'sell', '5.00000000', '0.00875000', 0.04399, 'VBE5FM', 'LTC', 'LTC_BTC', '2018-10-10 13:49:04', '0.40000000', 1.4, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('30', 'buy', '5.00000000', '0.00879800', 0.04399, '6U682A', 'LTC', 'LTC_BTC', '2018-10-10 13:49:04', '0.00021995', 0, 1);
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-10 13:50:26', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'KM8O6M', '::1');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008597', '13', '13', '0.111761', '0.111761', 'LTC', 'LTC_BTC', 'KM8O6M', '2018-10-10 13:50:52', '0.000558805', 2);
UPDATE `dbt_balance` SET `balance` = 1.8876802
WHERE `user_id` = 'KM8O6M'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008506', '120', '120', '1.0207199999999998', '1.0207199999999998', 'LTC', 'LTC_BTC', 'KM8O6M', '2018-10-10 13:51:13', '0.005103599999999999', 2);
UPDATE `dbt_balance` SET `balance` = 0.8618566
WHERE `user_id` = 'KM8O6M'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008650', '70', '70', '0.6054999999999999', '0.6054999999999999', 'LTC', 'LTC_BTC', 'KM8O6M', '2018-10-10 13:54:34', '0.0030275', 2);
UPDATE `dbt_balance` SET `balance` = 0.2533291
WHERE `user_id` = 'KM8O6M'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-10 13:55:12', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'VBE5FM', '::1');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.0088', '30', '30', '0.264', '0.264', 'LTC', 'LTC_BTC', 'VBE5FM', '2018-10-10 14:40:04', '0.00132', 2);
UPDATE `dbt_balance` SET `balance` = 1.77867
WHERE `user_id` = 'VBE5FM'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00880000', 60, '0.00880100', '0.00875000', '0.00880000', '30.00000000', '2018-10-10 14:40:04');
UPDATE `dbt_balance` SET `balance` = 688.1475
WHERE `user_id` = 'VBE5FM'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 2.04267
WHERE `user_id` = 'VBE5FM'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = 34;
UPDATE `dbt_biding` SET `bid_qty_available` = 125, `amount_available` = 1.09375, `status` = 2
WHERE `id` = '16';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('16', 'sell', '30.00000000', '0.00875000', 0.264, 'VBE5FM', 'LTC', 'LTC_BTC', '2018-10-10 14:40:04', '0.40000000', 1.35625, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('34', 'buy', '30.00000000', '0.00880000', 0.264, 'VBE5FM', 'LTC', 'LTC_BTC', '2018-10-10 14:40:04', '0.00132000', 0, 1);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.0085699', '120', '120', '1.028388', '1.028388', 'LTC', 'LTC_BTC', 'VBE5FM', '2018-10-10 14:40:24', '0.00514194', 2);
UPDATE `dbt_balance` SET `balance` = 1.00914006
WHERE `user_id` = 'VBE5FM'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.0084990', '1', '1', '0.008499', '0.008499', 'LTC', 'LTC_BTC', 'VBE5FM', '2018-10-10 14:40:43', '0.000042495', 2);
UPDATE `dbt_balance` SET `balance` = 1.00059856
WHERE `user_id` = 'VBE5FM'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.00788020', '25', '25', '0.197005', '0.197005', 'LTC', 'LTC_BTC', 'VBE5FM', '2018-10-10 14:41:02', '0.000985025', 2);
UPDATE `dbt_balance` SET `balance` = 0.80260854
WHERE `user_id` = 'VBE5FM'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-10 14:41:39', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'G26FW2', '::1');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.00866699', '1', '1', '0.00866699', '0.00866699', 'LTC', 'LTC_BTC', 'G26FW2', '2018-10-10 14:41:49', '0.00004333495', 2);
UPDATE `dbt_balance` SET `balance` = 1.99128968
WHERE `user_id` = 'G26FW2'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008666', '125', '125', '1.08325', '1.08325', 'LTC', 'LTC_BTC', 'G26FW2', '2018-10-10 14:41:58', '0.00541625', 2);
UPDATE `dbt_balance` SET `balance` = 0.90262343
WHERE `user_id` = 'G26FW2'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008756', '5', '5', '0.04378', '0.04378', 'LTC', 'LTC_BTC', 'G26FW2', '2018-10-10 14:42:10', '0.0002189', 2);
UPDATE `dbt_balance` SET `balance` = 0.85862453
WHERE `user_id` = 'G26FW2'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00875600', 65, '0.00880100', '0.00875000', '0.00875600', '60.00000000', '2018-10-10 14:42:10');
UPDATE `dbt_balance` SET `balance` = 811.5175
WHERE `user_id` = 'G26FW2'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 0.84638854
WHERE `user_id` = 'VBE5FM'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = 40;
UPDATE `dbt_biding` SET `bid_qty_available` = 120, `amount_available` = 1.05, `status` = 2
WHERE `id` = '16';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('16', 'sell', '5.00000000', '0.00875000', 0.04378, 'VBE5FM', 'LTC', 'LTC_BTC', '2018-10-10 14:42:10', '0.40000000', 1.09375, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('40', 'buy', '5.00000000', '0.00875600', 0.04378, 'G26FW2', 'LTC', 'LTC_BTC', '2018-10-10 14:42:10', '0.00021890', 0, 1);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.00856699', '5', '5', '0.04283495', '0.04283495', 'LTC', 'LTC_BTC', 'G26FW2', '2018-10-10 14:42:27', '0.00021417474999999998', 2);
UPDATE `dbt_balance` SET `balance` = 0.81557541
WHERE `user_id` = 'G26FW2'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.0084599', '26', '26', '0.21995739999999997', '0.21995739999999997', 'LTC', 'LTC_BTC', 'G26FW2', '2018-10-10 14:42:39', '0.0010997869999999999', 2);
UPDATE `dbt_balance` SET `balance` = 0.59451822
WHERE `user_id` = 'G26FW2'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-10 14:42:59', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'KM8O6M', '::1');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.0085596', '10', '10', '0.085596', '0.085596', 'LTC', 'LTC_BTC', 'KM8O6M', '2018-10-10 14:43:16', '0.00042798000000000006', 2);
UPDATE `dbt_balance` SET `balance` = 0.16730512
WHERE `user_id` = 'KM8O6M'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-10 14:43:33', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', '6U682A', '::1');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.00845980', '15', '15', '0.126897', '0.126897', 'LTC', 'LTC_BTC', '6U682A', '2018-10-10 14:43:44', '0.0006344850000000001', 2);
UPDATE `dbt_balance` SET `balance` = 0.80803231
WHERE `user_id` = '6U682A'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.0084578', '19', '19', '0.16069819999999999', '0.16069819999999999', 'LTC', 'LTC_BTC', '6U682A', '2018-10-10 14:43:55', '0.0008034909999999999', 2);
UPDATE `dbt_balance` SET `balance` = 0.64653062
WHERE `user_id` = '6U682A'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008995', '10', '10', '0.08995', '0.08995', 'LTC', 'LTC_BTC', '6U682A', '2018-10-10 14:44:10', '0.00044975', 2);
UPDATE `dbt_balance` SET `balance` = 0.55613087
WHERE `user_id` = '6U682A'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00899500', 75, '0.00899500', '0.00875000', '0.00899500', '65.00000000', '2018-10-10 14:44:10');
UPDATE `dbt_balance` SET `balance` = 792.4475
WHERE `user_id` = '6U682A'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 2.1350648
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = 46;
UPDATE `dbt_biding` SET `bid_qty_available` = 40, `amount_available` = 0.3560004, `status` = 2
WHERE `id` = '3';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('3', 'sell', '10.00000000', '0.00890001', 0.08995, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-10 14:44:10', '0.12500000', 0.4450005, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('46', 'buy', '10.00000000', '0.00899500', 0.08995, '6U682A', 'LTC', 'LTC_BTC', '2018-10-10 14:44:10', '0.00044975', 0, 1);
UPDATE `admin` SET `last_logout` = '2018-10-10 10:50:54'
WHERE `id` = '3';
UPDATE `admin` SET `last_login` = '2018-10-10 10:51:03', `ip_address` = '::1'
WHERE `id` = '1';
INSERT INTO `web_article` (`article_id`, `headline_en`, `headline_fr`, `article1_en`, `article1_fr`, `cat_id`, `publish_date`, `publish_by`) VALUES ('', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam finibus vestibulum lacus non sodales. Aenean pretium augue tellus, dapibus molestie sapien vestibulum venenatis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam finibus vestibulum lacus non sodales. Aenean pretium augue tellus, dapibus molestie sapien vestibulum venenatis.', '29', '2018-10-10 10:53:32am', 'admin@demo.com');
UPDATE `web_article` SET `article_id` = '3', `headline_en` = NULL, `headline_fr` = NULL, `article1_en` = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam finibus vestibulum lacus non sodales. Aenean pretium augue tellus.', `article1_fr` = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam finibus vestibulum lacus non sodales. Aenean pretium augue tellus.', `cat_id` = '29', `publish_date` = '2018-10-10 10:53:53am', `publish_by` = 'admin@demo.com'
WHERE `article_id` = '3';
INSERT INTO `web_article` (`article_id`, `headline_en`, `headline_fr`, `article1_en`, `article1_fr`, `cat_id`, `publish_date`, `publish_by`) VALUES ('', NULL, NULL, 'Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. ', 'Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. ', '29', '2018-10-10 10:56:25am', 'admin@demo.com');
INSERT INTO `web_article` (`article_id`, `headline_en`, `headline_fr`, `article1_en`, `article1_fr`, `cat_id`, `publish_date`, `publish_by`) VALUES ('', NULL, NULL, 'Te cum mutat malorum. Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. ', 'Te cum mutat malorum. Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. ', '29', '2018-10-10 10:56:55am', 'admin@demo.com');
INSERT INTO `web_article` (`article_id`, `headline_en`, `headline_fr`, `article1_en`, `article1_fr`, `cat_id`, `publish_date`, `publish_by`) VALUES ('', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Iam id ipsum absurdum, maximum malum neglegi. Satisne ergo pudori consulat, si quis sine teste libidini pareat?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Iam id ipsum absurdum, maximum malum neglegi. Satisne ergo pudori consulat, si quis sine teste libidini pareat?', '29', '2018-10-10 10:58:48am', 'admin@demo.com');
UPDATE `admin` SET `last_logout` = '2018-10-10 11:12:13'
WHERE `id` = '1';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-10 15:12:22', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'TAREQ', '::1');
INSERT INTO `dbt_chat` (`user_id`, `message`, `datetime`) VALUES ('TAREQ', 'How about xrp this day?? Good investment??', '2018-10-10 15:12:29');
INSERT INTO `dbt_chat` (`user_id`, `message`, `datetime`) VALUES ('TAREQ', 'BTC is going to up', '2018-10-10 15:12:47');
INSERT INTO `dbt_chat` (`user_id`, `message`, `datetime`) VALUES ('TAREQ', 'hey anyone trade DASH ?', '2018-10-10 15:13:24');
INSERT INTO `dbt_chat` (`user_id`, `message`, `datetime`) VALUES ('TAREQ', 'test', '2018-10-10 17:06:19');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.0088', '1', '1', '0.0088', '0.0088', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 17:35:44', '0.000044000000000000006', 2);
UPDATE `dbt_balance` SET `balance` = 2.1262208
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00880000', 76, '0.00880000', '0.00880000', 0, '75.00000000', '2018-10-10 17:35:44');
UPDATE `dbt_balance` SET `balance` = 925.8125
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 0.85518854
WHERE `user_id` = 'VBE5FM'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = 47;
UPDATE `dbt_biding` SET `bid_qty_available` = 119, `amount_available` = 1.04125, `status` = 2
WHERE `id` = '16';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('16', 'sell', '1.00000000', '0.00875000', 0.0088, 'VBE5FM', 'LTC', 'LTC_BTC', '2018-10-10 17:35:44', '0.40000000', 1.05, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('47', 'buy', '1.00000000', '0.00880000', 0.0088, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-10 17:35:44', '0.00004400', 0, 1);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.0078', '1', '1', '0.0078', '0.0078', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 17:36:19', '0.000039', 2);
UPDATE `dbt_balance` SET `balance` = 2.1183818
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.0089', '1', '1', '0.0089', '0.0089', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 17:38:14', '0.0000445', 2);
UPDATE `dbt_balance` SET `balance` = 2.1094373
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00890000', 77, '0.00890000', '0.00875000', 0.00015, '76.00000000', '2018-10-10 17:38:14');
UPDATE `dbt_balance` SET `balance` = 926.8125
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 0.46198793
WHERE `user_id` = 'LO87VB'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = 49;
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = '4';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('4', 'sell', '1.00000000', '0.00885005', 0.0089, 'LO87VB', 'LTC', 'LTC_BTC', '2018-10-10 17:38:14', '0.00250000', 0.00885005, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('49', 'buy', '1.00000000', '0.00890000', 0.0089, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-10 17:38:14', '0.00004450', 0, 1);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.009', '1', '1', '0.009', '0.009', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 17:38:36', '0.000044999999999999996', 2);
UPDATE `dbt_balance` SET `balance` = 2.1003923
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00900000', 78, '0.00900000', '0.00875000', 0.00025, '77.00000000', '2018-10-10 17:38:36');
UPDATE `dbt_balance` SET `balance` = 927.8125
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 2.1093923
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = 50;
UPDATE `dbt_biding` SET `bid_qty_available` = 39, `amount_available` = 0.34710039, `status` = 2
WHERE `id` = '3';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('3', 'sell', '1.00000000', '0.00890001', 0.009, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-10 17:38:36', '0.12500000', 0.3560004, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('50', 'buy', '1.00000000', '0.00900000', 0.009, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-10 17:38:36', '0.00004500', 0, 1);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '1', '1', '1', '1', '1', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 17:38:56', '0.005', 2);
UPDATE `dbt_balance` SET `balance` = 1.1043923
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '1.00000000', 79, '1.00000000', '0.00875000', 0.99125, '78.00000000', '2018-10-10 17:38:56');
UPDATE `dbt_balance` SET `balance` = 928.8125
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 2.1043923
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = 51;
UPDATE `dbt_biding` SET `bid_qty_available` = 38, `amount_available` = 0.33820038, `status` = 2
WHERE `id` = '3';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('3', 'sell', '1.00000000', '0.00890001', 1, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-10 17:38:56', '0.12500000', 0.34710039, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('51', 'buy', '1.00000000', '1.00000000', 1, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-10 17:38:56', '0.00500000', 0, 1);
INSERT INTO `dbt_chat` (`user_id`, `message`, `datetime`) VALUES ('TAREQ', 'dfgvbdxfzbvzdf', '2018-10-10 17:50:04');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008803', '100', '100', '0.8803', '0.8803', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 18:04:38', '0.0044015', 2);
UPDATE `dbt_balance` SET `balance` = 1.2503633
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00880300', 175, '0.00880300', '0.00880300', 0, '75.00000000', '2018-10-10 18:04:38');
UPDATE `dbt_balance` SET `balance` = 1024.8125
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 1.72668854
WHERE `user_id` = 'VBE5FM'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = 47;
UPDATE `dbt_biding` SET `bid_qty_available` = 20, `amount_available` = 0.175, `status` = 2
WHERE `id` = '16';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('16', 'sell', '100.00000000', '0.00875000', 0.8803, 'VBE5FM', 'LTC', 'LTC_BTC', '2018-10-10 18:04:38', '0.40000000', 1.05, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('47', 'buy', '100.00000000', '0.00880300', 0.8803, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-10 18:04:38', '0.00440150', 0, 1);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.008504', '1', '1', '0.008504', '0.008504', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 18:09:15', '0.00004252', 2);
UPDATE `dbt_balance` SET `balance` = 1.24181678
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.00885800', '1', '1', '0.008858', '0.008858', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 18:09:39', '0.00004429', 2);
UPDATE `dbt_balance` SET `balance` = 1.23291449
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00885800', 176, '0.00885800', '0.00875000', 0.000108, '175.00000000', '2018-10-10 18:09:39');
UPDATE `dbt_balance` SET `balance` = 1025.8125
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 0.46194593
WHERE `user_id` = 'LO87VB'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = 49;
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = '4';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('4', 'sell', '1.00000000', '0.00885005', 0.008858, 'LO87VB', 'LTC', 'LTC_BTC', '2018-10-10 18:09:39', '0.00250000', 0.00885005, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('49', 'buy', '1.00000000', '0.00885800', 0.008858, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-10 18:09:39', '0.00004429', 0, 1);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('buy', '0.00886800', '1', '1', '0.008868', '0.008868', 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-10 18:09:55', '0.00004434', 2);
UPDATE `dbt_balance` SET `balance` = 1.22400215
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00886800', 177, '0.00886800', '0.00875000', 0.000118, '176.00000000', '2018-10-10 18:09:55');
UPDATE `dbt_balance` SET `balance` = 1026.8125
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 0.47081393
WHERE `user_id` = 'LO87VB'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = 50;
UPDATE `dbt_biding` SET `bid_qty_available` = 149, `amount_available` = 1.318203, `status` = 2
WHERE `id` = '5';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('5', 'sell', '1.00000000', '0.00884700', 0.008868, 'LO87VB', 'LTC', 'LTC_BTC', '2018-10-10 18:09:55', '0.37500000', 1.32705, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('50', 'buy', '1.00000000', '0.00886800', 0.008868, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-10 18:09:55', '0.00004434', 0, 1);
UPDATE `admin` SET `last_login` = '2018-10-13 08:45:44', `ip_address` = '::1'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-13 12:40:19'
WHERE `id` = '1';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-13 16:40:25', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'TAREQ', '::1');
UPDATE `admin` SET `last_logout` = '2018-10-13 12:44:10'
WHERE `id` = '1';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-13 16:44:26', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'TAREQ', '::1');
INSERT INTO `dbt_payout_method` (`user_id`, `method`, `wallet_id`, `currency_symbol`) VALUES ('TAREQ', 'bank', 'null', 'USD');
UPDATE `dbt_payout_method` SET `user_id` = 'TAREQ', `method` = 'bank', `wallet_id` = '{\"currency_symbol\":\"USD\",\"acc_name\":\"Tareq\",\"acc_no\":\"sdvsvsd\",\"branch_name\":\"Brack\",\"swift_code\":\"45634564\",\"abn_no\":\"sdfga435356534\",\"country\":\"BD\",\"bank_name\":\"sdfvsavasfvasf\"}', `currency_symbol` = 'USD'
WHERE `user_id` = 'TAREQ'
AND `method` = 'bank'
AND `currency_symbol` = 'USD';
UPDATE `dbt_payout_method` SET `user_id` = 'TAREQ', `method` = 'bank', `wallet_id` = '{\"currency_symbol\":\"USD\",\"acc_name\":\"Tareq\",\"acc_no\":\"sdvsvsd\",\"branch_name\":\"Brack\",\"swift_code\":\"45634564\",\"abn_no\":\"sdfga435356534\",\"country\":\"BD\",\"bank_name\":\"sdfvsavasfvasf\"}', `currency_symbol` = 'USD'
WHERE `user_id` = 'TAREQ'
AND `method` = 'bank'
AND `currency_symbol` = 'USD';
UPDATE `admin` SET `last_login` = '2018-10-13 14:25:29', `ip_address` = '::1'
WHERE `id` = '1';
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `status`, `deposit_date`, `ip`) VALUES ('TAREQ', 'USD', '1000', 'phone', '2.5', '{\"om_name\":\"sdvcsd\",\"om_mobile\":\"fvsfvsdfv\",\"transaction_no\":\"sdfvsdfbvdfs\",\"idcard_no\":\"bsdfbdsfb\"}', 0, '2018-10-13 18:24:27', '::1');
UPDATE `dbt_deposit` SET `status` = 1
WHERE `id` = '31'
AND `user_id` = 'TAREQ';
UPDATE `dbt_balance` SET `balance` = 11000
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'USD';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('TAREQ', '1', 'USD', 'DEPOSIT', '1000.00000000', '2.50000000', '::1', '2018-10-13 18:24:27');
INSERT INTO `notifications` (`user_id`, `subject`, `notification_type`, `details`, `date`, `status`) VALUES ('TAREQ', 0, 'deposit', 'You successfully deposit The amount $1000.00000000. Your new balance is $11000', '2018-10-13 02:26:30', '0');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'TAREQ', 'Deposit', 'You successfully deposit the amount $1000.00000000. Your new balance is $11000', '2018-10-13 02:26:32');
UPDATE `dbt_deposit` SET `status` = 1
WHERE `id` = '31'
AND `user_id` = 'TAREQ';
UPDATE `dbt_balance` SET `balance` = 12000
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'USD';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('TAREQ', '1', 'USD', 'DEPOSIT', '1000.00000000', '2.50000000', '::1', '2018-10-13 18:24:27');
INSERT INTO `notifications` (`user_id`, `subject`, `notification_type`, `details`, `date`, `status`) VALUES ('TAREQ', 0, 'deposit', 'You successfully deposit The amount $1000.00000000. Your new balance is $12000', '2018-10-13 02:26:35', '0');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'TAREQ', 'Deposit', 'You successfully deposit the amount $1000.00000000. Your new balance is $12000', '2018-10-13 02:26:36');
UPDATE `dbt_deposit` SET `status` = 1
WHERE `id` = '31'
AND `user_id` = 'TAREQ';
UPDATE `dbt_balance` SET `balance` = 13000
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'USD';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('TAREQ', '1', 'USD', 'DEPOSIT', '1000.00000000', '2.50000000', '::1', '2018-10-13 18:24:27');
INSERT INTO `notifications` (`user_id`, `subject`, `notification_type`, `details`, `date`, `status`) VALUES ('TAREQ', 0, 'deposit', 'You successfully deposit The amount $1000.00000000. Your new balance is $13000', '2018-10-13 02:26:40', '0');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'TAREQ', 'Deposit', 'You successfully deposit the amount $1000.00000000. Your new balance is $13000', '2018-10-13 02:26:41');
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `status`, `deposit_date`, `ip`) VALUES ('TAREQ', 'USD', '100', 'phone', '0.25', '{\"om_name\":\"sDFvzsdfgv\",\"om_mobile\":\"sdfgsdfgsdf\",\"transaction_no\":\"sdfgsdfg\",\"idcard_no\":\"dfsgsdf\"}', 0, '2018-10-13 18:27:06', '::1');
UPDATE `dbt_deposit` SET `status` = 1
WHERE `id` = '32'
AND `user_id` = 'TAREQ';
UPDATE `dbt_balance` SET `balance` = 13100
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'USD';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('TAREQ', '1', 'USD', 'DEPOSIT', '100.00000000', '0.25000000', '::1', '2018-10-13 18:27:06');
INSERT INTO `notifications` (`user_id`, `subject`, `notification_type`, `details`, `date`, `status`) VALUES ('TAREQ', 0, 'deposit', 'You successfully deposit The amount $100.00000000. Your new balance is $13100', '2018-10-13 02:27:21', '0');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'TAREQ', 'Deposit', 'You successfully deposit the amount $100.00000000. Your new balance is $13100', '2018-10-13 02:27:22');
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `status`, `deposit_date`, `ip`) VALUES ('TAREQ', 'USD', '150', 'phone', '0.375', '{\"om_name\":\"dfghxdfg\",\"om_mobile\":\"xdfgxfgxf\",\"transaction_no\":\"gxdfgxdgxfxdfgh\",\"idcard_no\":\"cfhxfhxfgxf\"}', 0, '2018-10-13 18:28:27', '::1');
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `status`, `deposit_date`, `ip`) VALUES ('TAREQ', 'USD', '179', 'phone', '0.4475', '{\"om_name\":\"sdfvsdzfg\",\"om_mobile\":\"zsrgzsg\",\"transaction_no\":\"zsgzsdgzs\",\"idcard_no\":\"zsdfgzsf\"}', 0, '2018-10-13 18:30:00', '::1');
UPDATE `payment_gateway` SET `id` = '7', `agent` = 'bank', `public_key` = '{\"id\":\"7\",\"identity\":\"bank\",\"agent\":\"bank\",\"acc_name\":\"dgfxdfg\",\"acc_no\":\"hdfgsdfh\",\"branch_name\":\"dfhsdfhsdfhsdf\",\"swift_code\":\"hsdfhsdfh\",\"abn_no\":\"sdfhsdd\",\"country\":\"AS\",\"bank_name\":\"sdfghsdfhsdf\",\"status\":\"1\"}', `private_key` = NULL, `secret_key` = NULL, `status` = '1'
WHERE `id` = '7';
UPDATE `payment_gateway` SET `id` = '1', `agent` = 'GoUrl Payment Gateway', `public_key` = 'a:13:{s:7:\"bitcoin\";s:50:\"25654AAo79c3Bitcoin77BTCPUBqwIefT1j9fqqMwUtMI0huVL\";s:11:\"bitcoincash\";s:0:\"\";s:8:\"litecoin\";s:0:\"\";s:4:\"dash\";s:0:\"\";s:8:\"dogecoin\";s:0:\"\";s:9:\"speedcoin\";s:50:\"20116AA36hi8Speedcoin77SPDPUBjTMX31yIra1IBRssY7yFy\";s:8:\"reddcoin\";s:0:\"\";s:7:\"potcoin\";s:0:\"\";s:11:\"feathercoin\";s:0:\"\";s:8:\"vertcoin\";s:0:\"\";s:8:\"peercoin\";s:0:\"\";s:12:\"monetaryunit\";s:0:\"\";s:17:\"universalcurrency\";s:0:\"\";}', `private_key` = 'a:13:{s:7:\"bitcoin\";s:50:\"25654AAo79c3Bitcoin77BTCPRV0JG7w3jg0Tc5Pfi34U8o5JE\";s:11:\"bitcoincash\";s:0:\"\";s:8:\"litecoin\";s:0:\"\";s:4:\"dash\";s:0:\"\";s:8:\"dogecoin\";s:0:\"\";s:9:\"speedcoin\";s:50:\"20116AA36hi8Speedcoin77SPDPRVNOwjzYNqVn4Sn5XOwMI2c\";s:8:\"reddcoin\";s:0:\"\";s:7:\"potcoin\";s:0:\"\";s:11:\"feathercoin\";s:0:\"\";s:8:\"vertcoin\";s:0:\"\";s:8:\"peercoin\";s:0:\"\";s:12:\"monetaryunit\";s:0:\"\";s:17:\"universalcurrency\";s:0:\"\";}', `secret_key` = NULL, `status` = '1'
WHERE `id` = '1';
UPDATE `payment_gateway` SET `id` = '2', `agent` = 'Payeer', `public_key` = '485146745', `private_key` = 'VsdHofTsuI6XOdjL', `secret_key` = NULL, `status` = '1'
WHERE `id` = '2';
UPDATE `payment_gateway` SET `id` = '4', `agent` = 'Mobile Money', `public_key` = '+880 1746 40 68 01', `private_key` = 'mobile', `secret_key` = NULL, `status` = '1'
WHERE `id` = '4';
UPDATE `payment_gateway` SET `id` = '5', `agent` = 'Paypal', `public_key` = 'AfmTkhn-GYb_HAsPayWeLDVTG39jNjGsJ3siJSNDs6QGr52KDLnAT28fIv4TVni5P3Dax8w1y-Libl_j', `private_key` = 'EHGJveSf9GJcbyQwgYmouRi9baBPKLPqeSYjYesiG4UJTSnQ45q3gwQdkB6TvFQAjkYm42D1P_Hqn340', `secret_key` = 'sandbox', `status` = '1'
WHERE `id` = '5';
UPDATE `payment_gateway` SET `id` = '6', `agent` = 'Stripe', `public_key` = 'pk_test_BPLwYal0sn4KkKaDTzuj5oRq', `private_key` = 'sk_test_6J6dcwXf8ruEZGCvlC09C9NK', `secret_key` = NULL, `status` = '1'
WHERE `id` = '6';
UPDATE `payment_gateway` SET `id` = '7', `agent` = 'bank', `public_key` = '{\"id\":\"7\",\"identity\":\"bank\",\"agent\":\"bank\",\"acc_name\":\"dgfxdfg\",\"acc_no\":\"hdfgsdfh\",\"branch_name\":\"dfhsdfhsdfhsdf\",\"swift_code\":\"hsdfhsdfh\",\"abn_no\":\"sdfhsddAS\",\"country\":\"BD\",\"bank_name\":\"sdfghsdfhsdf\",\"status\":\"1\"}', `private_key` = NULL, `secret_key` = NULL, `status` = '1'
WHERE `id` = '7';
UPDATE `payment_gateway` SET `id` = '1', `agent` = 'GoUrl Payment Gateway', `public_key` = 'a:13:{s:7:\"bitcoin\";s:50:\"25654AAo79c3Bitcoin77BTCPUBqwIefT1j9fqqMwUtMI0huVL\";s:11:\"bitcoincash\";s:0:\"\";s:8:\"litecoin\";s:0:\"\";s:4:\"dash\";s:0:\"\";s:8:\"dogecoin\";s:0:\"\";s:9:\"speedcoin\";s:50:\"20116AA36hi8Speedcoin77SPDPUBjTMX31yIra1IBRssY7yFy\";s:8:\"reddcoin\";s:0:\"\";s:7:\"potcoin\";s:0:\"\";s:11:\"feathercoin\";s:0:\"\";s:8:\"vertcoin\";s:0:\"\";s:8:\"peercoin\";s:0:\"\";s:12:\"monetaryunit\";s:0:\"\";s:17:\"universalcurrency\";s:0:\"\";}', `private_key` = 'a:13:{s:7:\"bitcoin\";s:50:\"25654AAo79c3Bitcoin77BTCPRV0JG7w3jg0Tc5Pfi34U8o5JE\";s:11:\"bitcoincash\";s:0:\"\";s:8:\"litecoin\";s:0:\"\";s:4:\"dash\";s:0:\"\";s:8:\"dogecoin\";s:0:\"\";s:9:\"speedcoin\";s:50:\"20116AA36hi8Speedcoin77SPDPRVNOwjzYNqVn4Sn5XOwMI2c\";s:8:\"reddcoin\";s:0:\"\";s:7:\"potcoin\";s:0:\"\";s:11:\"feathercoin\";s:0:\"\";s:8:\"vertcoin\";s:0:\"\";s:8:\"peercoin\";s:0:\"\";s:12:\"monetaryunit\";s:0:\"\";s:17:\"universalcurrency\";s:0:\"\";}', `secret_key` = NULL, `status` = '1'
WHERE `id` = '1';
INSERT INTO `dbt_payout_method` (`user_id`, `method`, `wallet_id`, `currency_symbol`) VALUES ('TAREQ', 'phone', '01746406801', 'USD');
INSERT INTO `dbt_verify` (`ip_address`, `user_id`, `session_id`, `verify_code`, `data`) VALUES ('::1', 'TAREQ', 1, 'PIKVAF', '{\"user_id\":\"TAREQ\",\"wallet_id\":\"01746406801\",\"currency_symbol\":\"USD\",\"amount\":\"10\",\"method\":\"phone\",\"fees_amount\":0.025,\"comment\":\"\",\"request_date\":\"2018-10-13 20:03:53\",\"status\":2,\"ip\":\"::1\"}');
INSERT INTO `dbt_withdraw` (`user_id`, `wallet_id`, `currency_symbol`, `amount`, `method`, `fees_amount`, `comment`, `request_date`, `status`, `ip`) VALUES ('TAREQ', '01746406801', 'USD', '10', 'phone', 0.025, '', '2018-10-13 20:03:53', 2, '::1');
UPDATE `dbt_verify` SET `status` = 0
WHERE `id` = '1'
AND `session_id` = 1;
INSERT INTO `dbt_verify` (`ip_address`, `user_id`, `session_id`, `verify_code`, `data`) VALUES ('::1', 'TAREQ', 1, 'RKU6RD', '{\"user_id\":\"TAREQ\",\"wallet_id\":\"{\\\"currency_symbol\\\":\\\"USD\\\",\\\"acc_name\\\":\\\"Tareq\\\",\\\"acc_no\\\":\\\"sdvsvsd\\\",\\\"branch_name\\\":\\\"Brack\\\",\\\"swift_code\\\":\\\"45634564\\\",\\\"abn_no\\\":\\\"sdfga435356534\\\",\\\"country\\\":\\\"BD\\\",\\\"bank_name\\\":\\\"sdfvsavasfvasf\\\"}\",\"currency_symbol\":\"USD\",\"amount\":\"10\",\"method\":\"bank\",\"fees_amount\":0.025,\"comment\":\"\",\"request_date\":\"2018-10-13 20:08:08\",\"status\":2,\"ip\":\"::1\"}');
INSERT INTO `dbt_withdraw` (`user_id`, `wallet_id`, `currency_symbol`, `amount`, `method`, `fees_amount`, `comment`, `request_date`, `status`, `ip`) VALUES ('TAREQ', '{\"currency_symbol\":\"USD\",\"acc_name\":\"Tareq\",\"acc_no\":\"sdvsvsd\",\"branch_name\":\"Brack\",\"swift_code\":\"45634564\",\"abn_no\":\"sdfga435356534\",\"country\":\"BD\",\"bank_name\":\"sdfvsavasfvasf\"}', 'USD', '10', 'bank', 0.025, '', '2018-10-13 20:08:08', 2, '::1');
UPDATE `dbt_verify` SET `status` = 0
WHERE `id` = '2'
AND `session_id` = 1;
INSERT INTO `dbt_verify` (`ip_address`, `user_id`, `session_id`, `verify_code`, `data`) VALUES ('::1', 'TAREQ', 1, 'VOTCZX', '{\"user_id\":\"TAREQ\",\"wallet_id\":\"{\\\"currency_symbol\\\":\\\"USD\\\",\\\"acc_name\\\":\\\"Tareq\\\",\\\"acc_no\\\":\\\"sdvsvsd\\\",\\\"branch_name\\\":\\\"Brack\\\",\\\"swift_code\\\":\\\"45634564\\\",\\\"abn_no\\\":\\\"sdfga435356534\\\",\\\"country\\\":\\\"BD\\\",\\\"bank_name\\\":\\\"sdfvsavasfvasf\\\"}\",\"currency_symbol\":\"USD\",\"amount\":\"10\",\"method\":\"bank\",\"fees_amount\":0.025,\"comment\":\"\",\"request_date\":\"2018-10-13 20:15:26\",\"status\":2,\"ip\":\"::1\"}');
INSERT INTO `dbt_withdraw` (`user_id`, `wallet_id`, `currency_symbol`, `amount`, `method`, `fees_amount`, `comment`, `request_date`, `status`, `ip`) VALUES ('TAREQ', '{\"currency_symbol\":\"USD\",\"acc_name\":\"Tareq\",\"acc_no\":\"sdvsvsd\",\"branch_name\":\"Brack\",\"swift_code\":\"45634564\",\"abn_no\":\"sdfga435356534\",\"country\":\"BD\",\"bank_name\":\"sdfvsavasfvasf\"}', 'USD', '10', 'bank', 0.025, '', '2018-10-13 20:15:26', 2, '::1');
UPDATE `dbt_verify` SET `status` = 0
WHERE `id` = '3'
AND `session_id` = 1;
UPDATE `dbt_withdraw` SET `success_date` = '2018-10-13 04:23:05', `status` = 1
WHERE `id` = '3'
AND `user_id` = 'TAREQ';
UPDATE `dbt_balance` SET `balance` = 13090
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'USD';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('TAREQ', '1', 'USD', 'WITHDRAW', '10', '0.025', '::1', '2018-10-13 20:15:26');
INSERT INTO `notifications` (`user_id`, `subject`, `notification_type`, `details`, `date`, `status`) VALUES ('TAREQ', 'Withdraw', 'withdraw', 'You successfully withdraw the amount Is $10. from your account. Your new balance is $13090', '2018-10-13 04:23:08', '0');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'TAREQ', 'Withdraw', 'You successfully withdraw the amount is $10. from your account. Your new balance is $13090', '2018-10-13 04:23:09');
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-14 11:11:20', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'TAREQ', '::1');
UPDATE `admin` SET `last_login` = '2018-10-14 07:47:20', `ip_address` = '::1'
WHERE `id` = '1';
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `status`, `deposit_date`, `ip`) VALUES ('TAREQ', 'USD', '110', 'bank', '0.275', '{\"currency_symbol\":\"USD\",\"acc_name\":\"Tareq\",\"acc_no\":\"sdvsvsd\",\"branch_name\":\"Brack\",\"swift_code\":\"45634564\",\"abn_no\":\"sdfga435356534\",\"country\":\"BD\",\"bank_name\":\"sdfvsavasfvasf\",\"document\":\"upload\\/documents\\/56b0e63d5853871f35462bdd28966746.jpg\"}', 0, '2018-10-14 11:46:13', '::1');
UPDATE `dbt_deposit` SET `status` = 1
WHERE `id` = '35'
AND `user_id` = 'TAREQ';
UPDATE `dbt_balance` SET `balance` = 13200
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'USD';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('TAREQ', '1', 'USD', 'DEPOSIT', '110.00000000', '0.27500000', '::1', '2018-10-14 11:46:13');
INSERT INTO `notifications` (`user_id`, `subject`, `notification_type`, `details`, `date`, `status`) VALUES ('TAREQ', 0, 'deposit', 'You successfully deposit The amount $110.00000000. Your new balance is $13200', '2018-10-14 08:16:15', '0');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'TAREQ', 'Deposit', 'You successfully deposit the amount $110.00000000. Your new balance is $13200', '2018-10-14 08:16:16');
UPDATE `dbt_coinpair` SET `id` = '1', `market_symbol` = 'BTC', `currency_symbol` = 'LTC', `name` = 'BTC/ LTC', `full_name` = 'Litecoin Exchange', `symbol` = 'LTC_BTC', `initial_price` = '0.05', `status` = '1'
WHERE `id` = '1';
UPDATE `dbt_coinpair` SET `id` = '8', `market_symbol` = 'LTC', `currency_symbol` = 'BTC', `name` = 'LTC/ BTC', `full_name` = 'Bitcoin (BTC) Exchange', `symbol` = 'BTC_LTC', `initial_price` = '150', `status` = '1'
WHERE `id` = '8';
UPDATE `admin` SET `last_logout` = '2018-10-14 09:06:34'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2018-10-14 09:06:43', `ip_address` = '::1'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2018-10-14 10:14:17'
WHERE `id` = '1';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-14 14:14:26', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'TAREQ', '::1');
INSERT INTO `dbt_payout_method` (`user_id`, `method`, `wallet_id`, `currency_symbol`) VALUES ('TAREQ', 'bank', '{\"currency_symbol\":\"USD\",\"acc_name\":\"Tareq\",\"acc_no\":\"brd\",\"branch_name\":\"sdvsd\",\"swift_code\":\"svsdvwrwrwrr4242424442\",\"abn_no\":\"24244424\",\"country\":\"BD\",\"bank_name\":\"sdvcsdfvd\"}', 'USD');
UPDATE `dbt_payout_method` SET `user_id` = 'TAREQ', `method` = 'bank', `wallet_id` = '{\"currency_symbol\":\"USD\",\"acc_name\":\"Tareq\",\"acc_no\":\"brd\",\"branch_name\":\"sdvsd\",\"swift_code\":\"svsdvwrwrwrr4242424442\",\"abn_no\":\"24244424\",\"country\":\"BD\",\"bank_name\":\"sdvcsdfvd\"}', `currency_symbol` = 'USD'
WHERE `user_id` = 'TAREQ'
AND `method` = 'bank'
AND `currency_symbol` = 'USD';
UPDATE `dbt_payout_method` SET `user_id` = 'TAREQ', `method` = 'bank', `wallet_id` = '{\"currency_symbol\":\"USD\",\"acc_name\":\"Tareq\",\"acc_no\":\"brd\",\"branch_name\":\"sdvsd\",\"swift_code\":\"sdcsfvcsdf\",\"abn_no\":\"24244424\",\"country\":\"BD\",\"bank_name\":\"sdvcsdfvd\"}', `currency_symbol` = 'USD'
WHERE `user_id` = 'TAREQ'
AND `method` = 'bank'
AND `currency_symbol` = 'USD';
UPDATE `admin` SET `last_logout` = '2018-10-14 10:29:18'
WHERE `id` = '1';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-14 14:51:11', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'TAREQ', '172.69.134.145');
UPDATE `admin` SET `last_login` = '2018-10-14 09:12:21', `ip_address` = '172.69.134.73'
WHERE `id` = '1';
INSERT INTO `dbt_cryptocoin` (`id`, `cid`, `image`, `symbol`, `coin_name`, `full_name`, `algorithm`, `rank`, `show_home`, `coin_position`, `status`) VALUES ('', '12312', 'upload/coinlist/94f5e059e5a52cff60868cf7f5bfb516.png', 'MYCOIN', 'My Coin', 'My Coin full', '', '1', '1', '1', '1');
INSERT INTO `dbt_market` (`id`, `name`, `full_name`, `symbol`, `status`) VALUES ('', 'MYCOIN', 'My Coin market', 'MYCOIN', '1');
INSERT INTO `dbt_coinpair` (`id`, `market_symbol`, `currency_symbol`, `name`, `full_name`, `symbol`, `initial_price`, `status`) VALUES ('', 'MYCOIN', 'BTC', 'MYCOIN/ BTC', 'BTC Exchange', 'BTC_MYCOIN', '.0001', '1');
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-21 14:41:10', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'TAREQ', '::1');
INSERT INTO `dbt_payout_method` (`user_id`, `method`, `wallet_id`, `currency_symbol`) VALUES ('TAREQ', 'bank', '{\"currency_symbol\":\"USD\",\"acc_name\":\"Tareq\",\"acc_no\":\"23452345\",\"branch_name\":\"345234\",\"swift_code\":\"23452345\",\"abn_no\":\"3245234\",\"country\":\"BD\",\"bank_name\":\"BANG\"}', 'USD');
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `status`, `deposit_date`, `ip`) VALUES ('TAREQ', 'USD', '123', 'bank', '0.3075', '{\"currency_symbol\":\"USD\",\"acc_name\":\"Tareq\",\"acc_no\":\"23452345\",\"branch_name\":\"345234\",\"swift_code\":\"23452345\",\"abn_no\":\"3245234\",\"country\":\"BD\",\"bank_name\":\"BANG\"}', 0, '2018-10-21 15:15:36', '::1');
UPDATE `admin` SET `last_login` = '2018-10-21 11:16:05', `ip_address` = '::1'
WHERE `id` = '1';
UPDATE `dbt_deposit` SET `status` = 1
WHERE `id` = '31'
AND `user_id` = 'TAREQ';
UPDATE `dbt_balance` SET `balance` = 8464.24252905
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'USD';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('TAREQ', '1', 'USD', 'DEPOSIT', '123.00000000', '0.30750000', '::1', '2018-10-21 15:15:36');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'TAREQ', 'Deposit', 'You successfully deposit the amount 123.00000000. Your new balance is 8464.24252905', '2018-10-21 11:34:33');
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-24 17:13:35', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'TAREQ', '::1');
UPDATE `admin` SET `last_login` = '2018-10-25 06:24:50', `ip_address` = '::1'
WHERE `id` = '1';
INSERT INTO `dbt_cryptocoin` (`id`, `cid`, `image`, `symbol`, `coin_name`, `full_name`, `algorithm`, `rank`, `show_home`, `coin_position`, `status`) VALUES ('', '234523', 'upload/coinlist/b935ac9f59d31e072b7d560d12095280.png', 'TRQ', 'Tareqs', 'Tareqs Coin', NULL, '1', '1', '4', '1');
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-25 10:26:31', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'TAREQ', '::1');
INSERT INTO `dbt_market` (`id`, `name`, `full_name`, `symbol`, `status`) VALUES ('', 'TRQ', 'Tareqs Market', 'TRQ', '1');
INSERT INTO `dbt_coinpair` (`id`, `market_symbol`, `currency_symbol`, `name`, `full_name`, `symbol`, `initial_price`, `status`) VALUES ('', 'TRQ', 'BTC', 'BTC/ TRQ', 'Tareq(TRQ) exchange', 'BTC_TRQ', '.05', '1');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', 'NaN', '1', '1', 0, 0, 'BTC', 'BTC_TRQ', 'TAREQ', '2018-10-25 10:31:02', 'NaN', 2);
UPDATE `dbt_balance` SET `balance` = 0
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'TRQ';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', 'NaN', '1', '1', 0, 0, 'BTC', 'BTC_TRQ', 'TAREQ', '2018-10-25 10:31:05', 'NaN', 2);
UPDATE `dbt_balance` SET `balance` = 0
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'TRQ';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', 'NaN', '1', '1', 0, 0, 'BTC', 'BTC_TRQ', 'TAREQ', '2018-10-25 10:31:09', 'NaN', 2);
UPDATE `dbt_balance` SET `balance` = 0
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'TRQ';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', 'NaN', '1', '1', 0, 0, 'BTC', 'BTC_TRQ', 'TAREQ', '2018-10-25 10:31:37', 'NaN', 2);
UPDATE `dbt_balance` SET `balance` = 0
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'TRQ';
UPDATE `dbt_coinpair` SET `id` = '9', `market_symbol` = 'TRQ', `currency_symbol` = 'BTC', `name` = 'BTC/ TRQ', `full_name` = 'Tareq(TRQ) exchange', `symbol` = 'BTC_TRQ', `initial_price` = '', `status` = '1'
WHERE `id` = '9';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', 'NaN', '1', '1', 0, 0, 'BTC', 'BTC_TRQ', 'TAREQ', '2018-10-25 10:33:44', 'NaN', 2);
UPDATE `dbt_balance` SET `balance` = 0
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'TRQ';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', 'NaN', '1', '1', 0, 0, 'BTC', 'BTC_TRQ', 'TAREQ', '2018-10-25 10:44:59', 'NaN', 2);
UPDATE `dbt_balance` SET `balance` = 0
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'TRQ';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', 'Error', '1', '1', 0, 0, 'BTC', 'BTC_TRQ', 'TAREQ', '2018-10-25 10:45:15', 'NaN', 2);
UPDATE `dbt_balance` SET `balance` = 0
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'TRQ';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', '0', '1', '1', 0, 0, 'BTC', 'BTC_TRQ', 'TAREQ', '2018-10-25 11:08:41', '0.00000000', 2);
UPDATE `dbt_balance` SET `balance` = 0
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'TRQ';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', 'NaN', '1', '1', 0, 0, 'BTC', 'BTC_TRQ', 'TAREQ', '2018-10-25 11:09:20', 'NaN', 2);
UPDATE `dbt_balance` SET `balance` = 0
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'TRQ';
UPDATE `dbt_coinpair` SET `id` = '9', `market_symbol` = 'TRQ', `currency_symbol` = 'BTC', `name` = 'BTC/ TRQ', `full_name` = 'Tareq(TRQ) exchange', `symbol` = 'BTC_TRQ', `initial_price` = '0.05', `status` = '1'
WHERE `id` = '9';
UPDATE `dbt_coinpair` SET `id` = '9', `market_symbol` = 'TRQ', `currency_symbol` = 'BTC', `name` = 'BTC/ TRQ', `full_name` = 'Tareq(TRQ) exchange', `symbol` = 'BTC_TRQ', `initial_price` = '0.05000000', `status` = '1'
WHERE `id` = '9';
INSERT INTO `dbt_fees` (`level`, `fees`, `currency_symbol`) VALUES ('BUY', '50', 'TRQ');
INSERT INTO `dbt_fees` (`level`, `fees`, `currency_symbol`) VALUES ('SELL', '25', 'TRQ');
INSERT INTO `dbt_fees` (`level`, `fees`, `currency_symbol`) VALUES ('SELL', '50', 'BTC');
UPDATE `admin` SET `last_login` = '2018-10-25 10:27:08', `ip_address` = '::1'
WHERE `id` = '1';
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES ('TAREQ', 'BTC', '100', 'admin', 0, 'zdcadcv', '2018-10-25 10:27:46', '2018-10-25 10:27:46', 1, '::1', 'admin');
INSERT INTO `dbt_balance` (`user_id`, `currency_symbol`, `balance`, `last_update`) VALUES ('TAREQ', 'BTC', '100', '2018-10-25 10:27:46');
INSERT INTO `dbt_balance_log` (`balance_id`, `user_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES (1, 'TAREQ', 'BTC', 'CREDITED', '100', 0, '::1', '2018-10-25 10:27:46');
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES ('TAREQ', 'LTC', '1000', 'admin', 0, 'sdfvsf', '2018-10-25 10:28:03', '2018-10-25 10:28:03', 1, '::1', 'admin');
INSERT INTO `dbt_balance` (`user_id`, `currency_symbol`, `balance`, `last_update`) VALUES ('TAREQ', 'LTC', '1000', '2018-10-25 10:28:04');
INSERT INTO `dbt_balance_log` (`balance_id`, `user_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES (2, 'TAREQ', 'LTC', 'CREDITED', '1000', 0, '::1', '2018-10-25 10:28:04');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('SELL', '.05', '100', '100', 5, 5, 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-25 14:28:40', NULL, 2);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('SELL', '0.008063', '1', '1', 0.008063, 0.008063, 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-25 14:28:50', NULL, 2);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', '0.008065', '1', '1', 0.008065, 0.008065, 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-25 14:33:13', NULL, 2);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', '0.00807', '1', '1', 0.00807, 0.00807, 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-25 14:33:18', NULL, 2);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', '0.00807', '1', '1', 0.00807, 0.00807, 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-25 14:33:50', NULL, 2);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', '0.008066', '1', '1', 0.008066, 0.008066, 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-25 14:34:28', NULL, 2);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', '0.008064', '1', '1', 0.008064, 0.008064, 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-25 14:36:04', NULL, 2);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('SELL', '.05', '100', '100', 5, 5, 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-25 14:40:10', 0, 2);
UPDATE `dbt_balance` SET `balance` = 900
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('SELL', '.05', '100', '100', 5, 5, 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-25 14:41:19', 0, 2);
UPDATE `dbt_balance` SET `balance` = 800
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', '.05', '50', '50', 2.5, 2.5, 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-25 14:42:06', 0, 2);
UPDATE `dbt_balance` SET `balance` = 97.5
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES ('LTC', 'LTC_BTC', '0.05000000', 50, '0.05000000', '0.05000000', 0, 0, '0.05000000', '0.05000000', 0, 0, '0.05000000', '0.05000000', 50, 0, '2018-10-25 14:42:06');
UPDATE `dbt_balance` SET `balance` = 850
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 100
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = 12;
UPDATE `dbt_biding` SET `bid_qty_available` = 50, `amount_available` = 2.5, `status` = 2
WHERE `id` = '11';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('11', 'SELL', '50.00000000', '0.05000000', 2.5, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-25 14:42:06', '0.00000000', 5, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('12', 'BUY', '50.00000000', '0.05000000', 2.5, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-25 14:42:06', '0.00000000', 0, 1);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', '.05', '50', '50', 2.5, 2.5, 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-25 14:42:07', 0, 2);
UPDATE `dbt_balance` SET `balance` = 97.5
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES ('LTC', 'LTC_BTC', '0.05000000', 100, '0.05000000', '0.05000000', 0, '50.00000000', '0.05000000', '0.05000000', 0, '50.00000000', '0.05000000', '0.05000000', 100, '50.00000000', '2018-10-25 14:42:07');
UPDATE `dbt_balance` SET `balance` = 900
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 100
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = 13;
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = '11';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('11', 'SELL', '50.00000000', '0.05000000', 2.5, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-25 14:42:07', '0.00000000', 2.5, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('13', 'BUY', '50.00000000', '0.05000000', 2.5, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-25 14:42:07', '0.00000000', 0, 1);
UPDATE `admin` SET `last_logout` = '2018-10-25 10:44:06'
WHERE `id` = '1';
INSERT INTO `dbt_user` (`first_name`, `referral_id`, `language`, `user_id`, `email`, `password`, `password_reset_token`, `status`, `ip`, `created`) VALUES ('Tareq', NULL, 'english', 'USNDEG', 'tareq7600@gmail.com', '9819221b03652a5527188488864f731e', 'a4a1061121737527d96a71b6b217ec03', 0, '::1', '2018-10-25 14:45:22');
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-25 14:45:49', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-63.0\",\"platform\":\"Windows 10\"}', 'USNDEG', '::1');
UPDATE `admin` SET `last_login` = '2018-10-25 10:46:20', `ip_address` = '::1'
WHERE `id` = '1';
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES ('TAREQ', 'BTC', '1000', 'admin', 0, 'hjmfhnxjf', '2018-10-25 10:46:34', '2018-10-25 10:46:34', 1, '::1', 'admin');
INSERT INTO `dbt_balance` (`user_id`, `currency_symbol`, `balance`, `last_update`) VALUES ('TAREQ', 'BTC', '1000', '2018-10-25 10:46:34');
INSERT INTO `dbt_balance_log` (`balance_id`, `user_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES (1, 'TAREQ', 'BTC', 'CREDITED', '1000', 0, '::1', '2018-10-25 10:46:34');
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES ('USNDEG', 'BTC', '1000', 'admin', 0, 'dfzsdfgvzs', '2018-10-25 10:46:51', '2018-10-25 10:46:51', 1, '::1', 'admin');
INSERT INTO `dbt_balance` (`user_id`, `currency_symbol`, `balance`, `last_update`) VALUES ('USNDEG', 'BTC', '1000', '2018-10-25 10:46:51');
INSERT INTO `dbt_balance_log` (`balance_id`, `user_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES (2, 'USNDEG', 'BTC', 'CREDITED', '1000', 0, '::1', '2018-10-25 10:46:51');
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES ('USNDEG', 'LTC', '10000', 'admin', 0, 'zdfgzsd', '2018-10-25 10:47:05', '2018-10-25 10:47:05', 1, '::1', 'admin');
INSERT INTO `dbt_balance` (`user_id`, `currency_symbol`, `balance`, `last_update`) VALUES ('USNDEG', 'LTC', '10000', '2018-10-25 10:47:05');
INSERT INTO `dbt_balance_log` (`balance_id`, `user_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES (3, 'USNDEG', 'LTC', 'CREDITED', '10000', 0, '::1', '2018-10-25 10:47:05');
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES ('TAREQ', 'LTC', '10000', 'admin', 0, 'dfgvzdf', '2018-10-25 10:47:16', '2018-10-25 10:47:16', 1, '::1', 'admin');
INSERT INTO `dbt_balance` (`user_id`, `currency_symbol`, `balance`, `last_update`) VALUES ('TAREQ', 'LTC', '10000', '2018-10-25 10:47:16');
INSERT INTO `dbt_balance_log` (`balance_id`, `user_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES (4, 'TAREQ', 'LTC', 'CREDITED', '10000', 0, '::1', '2018-10-25 10:47:16');
UPDATE `admin` SET `last_logout` = '2018-10-25 10:47:18'
WHERE `id` = '1';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-25 14:47:27', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-63.0\",\"platform\":\"Windows 10\"}', 'USNDEG', '::1');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('SELL', '.5', '200', '200', 100, 100, 'LTC', 'LTC_BTC', 'USNDEG', '2018-10-25 14:48:07', 0, 2);
UPDATE `dbt_balance` SET `balance` = 9800
WHERE `user_id` = 'USNDEG'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('SELL', '.5', '200', '200', 100, 100, 'LTC', 'LTC_BTC', 'USNDEG', '2018-10-25 14:48:07', 0, 2);
UPDATE `dbt_balance` SET `balance` = 9600
WHERE `user_id` = 'USNDEG'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_biding` SET `status` = 0
WHERE `id` = '1';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('USNDEG', '3', 'LTC', 'TRADE_CANCEL', '200.00000000', 0, '::1', '2018-10-25 14:48:29');
UPDATE `dbt_balance` SET `balance` = 9800
WHERE `user_id` = 'USNDEG'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding_log` (`bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('SELL', '200.00000000', '0.50000000', '200.00000000', 'USNDEG', 'LTC', 'LTC_BTC', '2018-10-25 14:48:29', 0, 0, 0);
UPDATE `dbt_biding` SET `status` = 0
WHERE `id` = '2';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('USNDEG', '3', 'LTC', 'TRADE_CANCEL', '200.00000000', 0, '::1', '2018-10-25 14:48:35');
UPDATE `dbt_balance` SET `balance` = 10000
WHERE `user_id` = 'USNDEG'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding_log` (`bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('SELL', '200.00000000', '0.50000000', '200.00000000', 'USNDEG', 'LTC', 'LTC_BTC', '2018-10-25 14:48:35', 0, 0, 0);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('SELL', '.5', '200', '200', 100, 100, 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-25 14:49:31', 0, 2);
UPDATE `dbt_balance` SET `balance` = 9800
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', '.5', '100', '100', 50, 50, 'LTC', 'LTC_BTC', 'TAREQ', '2018-10-25 14:55:19', 0, 2);
UPDATE `dbt_balance` SET `balance` = 950
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES ('LTC', 'LTC_BTC', '0.50000000', 100, '0.50000000', '0.50000000', 0, 0, '0.50000000', '0.50000000', 0, 0, '0.50000000', '0.50000000', 100, 0, '2018-10-25 14:55:19');
UPDATE `dbt_balance` SET `balance` = 9900
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 1000
WHERE `user_id` = 'TAREQ'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = 4;
UPDATE `dbt_biding` SET `bid_qty_available` = 100, `amount_available` = 50, `status` = 2
WHERE `id` = '3';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('3', 'SELL', '100.00000000', '0.50000000', 50, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-25 14:55:19', '0.00000000', 100, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('4', 'BUY', '100.00000000', '0.50000000', 50, 'TAREQ', 'LTC', 'LTC_BTC', '2018-10-25 14:55:19', '0.00000000', 0, 1);
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2018-10-28 13:22:16', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', 'TAREQ', '::1');
UPDATE `admin` SET `last_login` = '2019-01-18 10:16:17', `ip_address` = '213.205.240.200'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2019-01-18 13:29:26', `ip_address` = '51.52.36.59'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2019-01-18 13:31:52'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2019-01-18 13:43:31', `ip_address` = '51.52.36.59'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2019-01-18 13:43:43', `ip_address` = '219.91.138.10'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2019-01-18 13:50:51'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2019-01-18 13:50:52'
WHERE `id` IS NULL;
INSERT INTO `dbt_user` (`first_name`, `referral_id`, `language`, `user_id`, `email`, `password`, `password_reset_token`, `status`, `ip`, `created`) VALUES ('admin', NULL, 'english', 'NUJWR8', 'admin@demo.com', 'd333eb83e108b0b21211faec45532e67', 'f4f8a117d9caed30d5399223009de58f', 0, '51.52.36.59', '2019-01-18 19:52:22');
INSERT INTO `dbt_user` (`first_name`, `referral_id`, `language`, `user_id`, `email`, `password`, `password_reset_token`, `status`, `ip`, `created`) VALUES ('steve', NULL, 'english', 'TNQBNH', 'nicowilliams484@gmail.com', 'ca3297aae57b2a973d20efcd5813af9c', '559f74b7defebb5d4abc4ce0a835e227', 0, '51.52.36.59', '2019-01-18 19:55:00');
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2019-01-18 19:59:05', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-71.0.3578.98\",\"platform\":\"Mac OS X\"}', 'TNQBNH', '51.52.36.59');
UPDATE `admin` SET `last_logout` = '2019-01-18 16:38:16'
WHERE `id` IS NULL;
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2019-01-18 22:39:46', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-70.0.3538.77\",\"platform\":\"Linux\"}', 'TNQBNH', '219.91.138.10');
INSERT INTO `web_subscriber` (`email`) VALUES (NULL);
UPDATE `admin` SET `last_login` = '2019-01-19 01:57:58', `ip_address` = '::1'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2019-01-19 03:00:55'
WHERE `id` = '1';
INSERT INTO `dbt_user` (`first_name`, `referral_id`, `language`, `user_id`, `email`, `password`, `password_reset_token`, `status`, `ip`, `created`) VALUES ('User1', NULL, 'english', 'GT3RSZ', 'user1@gmail.com', '0757a64bff1b7e5241a3efeefdccb90b', 'd04223b0217d5f2fc726befd7be40edb', 0, '::1', '2019-01-22 00:22:55');
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2019-01-22 00:25:36', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-70.0.3538.77\",\"platform\":\"Linux\"}', 'GT3RSZ', '::1');
UPDATE `admin` SET `last_login` = '2019-01-21 23:56:17', `ip_address` = '::1'
WHERE `id` = '1';
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES ('GT3RSZ', 'BTC', '100', 'admin', 0, 'Test deposit', '2019-01-21 23:57:27', '2019-01-21 23:57:27', 1, '::1', 'admin');
INSERT INTO `dbt_balance` (`user_id`, `currency_symbol`, `balance`, `last_update`) VALUES ('GT3RSZ', 'BTC', '100', '2019-01-21 23:57:27');
INSERT INTO `dbt_balance_log` (`balance_id`, `user_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES (1, 'GT3RSZ', 'BTC', 'CREDITED', '100', 0, '::1', '2019-01-21 23:57:27');
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES ('GT3RSZ', 'LTC', '100', 'admin', 0, 'Test deposit', '2019-01-21 23:57:40', '2019-01-21 23:57:40', 1, '::1', 'admin');
INSERT INTO `dbt_balance` (`user_id`, `currency_symbol`, `balance`, `last_update`) VALUES ('GT3RSZ', 'LTC', '100', '2019-01-21 23:57:40');
INSERT INTO `dbt_balance_log` (`balance_id`, `user_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES (2, 'GT3RSZ', 'LTC', 'CREDITED', '100', 0, '::1', '2019-01-21 23:57:40');
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES ('GT3RSZ', 'BTC', '9900', 'admin', 0, 'Test deposit', '2019-01-21 23:58:12', '2019-01-21 23:58:12', 1, '::1', 'admin');
UPDATE `dbt_balance` SET `balance` = 10000
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_balance_log` (`balance_id`, `user_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('1', 'GT3RSZ', 'BTC', 'CREDITED', '9900', 0, '::1', '2019-01-21 23:58:12');
INSERT INTO `dbt_deposit` (`user_id`, `currency_symbol`, `amount`, `method_id`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES ('GT3RSZ', 'LTC', '9900', 'admin', 0, 'Test deposit', '2019-01-21 23:58:24', '2019-01-21 23:58:24', 1, '::1', 'admin');
UPDATE `dbt_balance` SET `balance` = 10000
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_balance_log` (`balance_id`, `user_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('2', 'GT3RSZ', 'LTC', 'CREDITED', '9900', 0, '::1', '2019-01-21 23:58:24');
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', '0.008687', '10000', '10000', 86.87, 86.87, 'LTC', 'LTC_BTC', 'GT3RSZ', '2019-01-22 00:29:14', 0, 2);
UPDATE `dbt_balance` SET `balance` = 9913.13
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('SELL', '0.008687', '5', '5', 0.043435, 0.043435, 'LTC', 'LTC_BTC', 'GT3RSZ', '2019-01-22 00:31:01', 0, 2);
UPDATE `dbt_balance` SET `balance` = 9995
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00868700', 5, '0.00868700', '0.00868700', 0, 0, '0.00868700', '0.00868700', 0, 0, '0.00868700', '0.00868700', 5, 0, '2019-01-22 00:31:01');
UPDATE `dbt_balance` SET `balance` = 10000
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 9913.173435
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = 2;
UPDATE `dbt_biding` SET `bid_qty_available` = 9995, `amount_available` = 86.826565, `status` = 2
WHERE `id` = '1';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('2', 'SELL', '5.00000000', '0.00868700', 0.043435, 'GT3RSZ', 'LTC', 'LTC_BTC', '2019-01-22 00:31:01', '0.00000000', 0, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('1', 'BUY', '5.00000000', '0.00868700', 0.043435, 'GT3RSZ', 'LTC', 'LTC_BTC', '2019-01-22 00:31:01', '0.00000000', 86.87, 1);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('SELL', '0.008687', '10', '10', 0.08687, 0.08687, 'LTC', 'LTC_BTC', 'GT3RSZ', '2019-01-22 00:31:36', 0, 2);
UPDATE `dbt_balance` SET `balance` = 9990
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00868700', 15, '0.00868700', '0.00868700', 0, '5.00000000', '0.00868700', '0.00868700', 0, '5.00000000', '0.00868700', '0.00868700', 15, '5.00000000', '2019-01-22 00:31:36');
UPDATE `dbt_balance` SET `balance` = 10000
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 9913.260305
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = 3;
UPDATE `dbt_biding` SET `bid_qty_available` = 9985, `amount_available` = 86.739695, `status` = 2
WHERE `id` = '1';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('3', 'SELL', '10.00000000', '0.00868700', 0.08687, 'GT3RSZ', 'LTC', 'LTC_BTC', '2019-01-22 00:31:36', '0.00000000', 0, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('1', 'BUY', '10.00000000', '0.00868700', 0.08687, 'GT3RSZ', 'LTC', 'LTC_BTC', '2019-01-22 00:31:36', '0.00000000', 86.826565, 1);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('SELL', '0.008985', '50', '50', 0.44925, 0.44925, 'LTC', 'LTC_BTC', 'GT3RSZ', '2019-01-22 00:32:41', 0, 2);
UPDATE `dbt_balance` SET `balance` = 9950
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', '0.008687', '50.000000', '50.000000', 0.43435, 0.43435, 'LTC', 'LTC_BTC', 'GT3RSZ', '2019-01-22 00:33:50', 0, 2);
UPDATE `dbt_balance` SET `balance` = 9912.825955
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', '0.008683', '40.000000', '40.000000', 0.34732, 0.34732, 'LTC', 'LTC_BTC', 'GT3RSZ', '2019-01-22 00:34:27', 0, 2);
UPDATE `dbt_balance` SET `balance` = 9912.478635
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', '0.00869', '10.000000', '10.000000', 0.0869, 0.0869, 'LTC', 'LTC_BTC', 'GT3RSZ', '2019-01-22 00:36:06', 0, 2);
UPDATE `dbt_balance` SET `balance` = 9912.391735
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', '0.00898500', '10.000000', '10.000000', 0.08985, 0.08985, 'LTC', 'LTC_BTC', 'GT3RSZ', '2019-01-22 00:36:47', 0, 2);
UPDATE `dbt_balance` SET `balance` = 9912.301885
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00898500', 25, '0.00898500', '0.00868700', 0.000298, '15.00000000', '0.00898500', '0.00868700', 0.000298, '15.00000000', '0.00898500', '0.00898500', 25, '15.00000000', '2019-01-22 00:36:47');
UPDATE `dbt_balance` SET `balance` = 9960
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 9912.391735
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = 8;
UPDATE `dbt_biding` SET `bid_qty_available` = 40, `amount_available` = 0.3594, `status` = 2
WHERE `id` = '4';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('4', 'SELL', '10.00000000', '0.00898500', 0.08985, 'GT3RSZ', 'LTC', 'LTC_BTC', '2019-01-22 00:36:47', '0.00000000', 0.44925, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('8', 'BUY', '10.00000000', '0.00898500', 0.08985, 'GT3RSZ', 'LTC', 'LTC_BTC', '2019-01-22 00:36:47', '0.00000000', 0, 1);
INSERT INTO `dbt_biding` (`bid_type`, `bid_price`, `bid_qty`, `bid_qty_available`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `user_id`, `open_order`, `fees_amount`, `status`) VALUES ('BUY', '0.00898500', '15.000000', '15.000000', 0.134775, 0.134775, 'LTC', 'LTC_BTC', 'GT3RSZ', '2019-01-22 00:37:47', 0, 2);
UPDATE `dbt_balance` SET `balance` = 9912.25696
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_coinhistory` (`coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES ('LTC', 'LTC_BTC', '0.00898500', 40, '0.00898500', '0.00868700', 0.000298, '25.00000000', '0.00898500', '0.00868700', 0.000298, '25.00000000', '0.00898500', '0.00898500', 40, '25.00000000', '2019-01-22 00:37:47');
UPDATE `dbt_balance` SET `balance` = 9975
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'LTC';
UPDATE `dbt_balance` SET `balance` = 9912.391735
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'BTC';
UPDATE `dbt_biding` SET `bid_qty_available` = 0, `amount_available` = 0, `status` = 1
WHERE `id` = 9;
UPDATE `dbt_biding` SET `bid_qty_available` = 25, `amount_available` = 0.224625, `status` = 2
WHERE `id` = '4';
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('4', 'SELL', '15.00000000', '0.00898500', 0.134775, 'GT3RSZ', 'LTC', 'LTC_BTC', '2019-01-22 00:37:47', '0.00000000', 0.3594, 1);
INSERT INTO `dbt_biding_log` (`bid_id`, `bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('9', 'BUY', '15.00000000', '0.00898500', 0.134775, 'GT3RSZ', 'LTC', 'LTC_BTC', '2019-01-22 00:37:47', '0.00000000', 0, 1);
UPDATE `dbt_biding` SET `status` = 0
WHERE `id` = '1';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('GT3RSZ', '1', 'BTC', 'TRADE_CANCEL', 86.739695, 0, '::1', '2019-01-22 00:40:09');
UPDATE `dbt_balance` SET `balance` = 9999.13143
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'BTC';
INSERT INTO `dbt_biding_log` (`bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('BUY', '9985.00000000', '0.00868700', 86.739695, 'GT3RSZ', 'LTC', 'LTC_BTC', '2019-01-22 00:40:09', 0, 0, 0);
UPDATE `dbt_biding` SET `status` = 0
WHERE `id` = '4';
INSERT INTO `dbt_balance_log` (`user_id`, `balance_id`, `currency_symbol`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('GT3RSZ', '2', 'LTC', 'TRADE_CANCEL', 25, 0, '::1', '2019-01-22 00:40:27');
UPDATE `dbt_balance` SET `balance` = 10000
WHERE `user_id` = 'GT3RSZ'
AND `currency_symbol` = 'LTC';
INSERT INTO `dbt_biding_log` (`bid_type`, `complete_qty`, `bid_price`, `complete_amount`, `user_id`, `currency_symbol`, `market_symbol`, `success_time`, `fees_amount`, `available_amount`, `status`) VALUES ('SELL', '25.00000000', '0.00898500', 25, 'GT3RSZ', 'LTC', 'LTC_BTC', '2019-01-22 00:40:27', 0, 0, 0);
UPDATE `admin` SET `last_login` = '2019-01-29 14:57:55', `ip_address` = '::1'
WHERE `id` = '1';
UPDATE `setting` SET `setting_id` = '1', `title` = 'Crypto Currency Treading System', `description` = 'Bangladesh Office <br>98 Green Road, Farmgate, Dhaka- 1215', `email` = 'info@bdtask.com', `phone` = '+88-01817-584639', `logo` = 'upload/settings/c579decfe732e25b7d347daa3a82b11c.png', `logo_web` = 'upload/settings/5b3c74cacc762f373210b855dc9b885a.png', `favicon` = 'upload/settings/6a32acfe674bbfb88ad1c8f3f1de332d.png', `language` = 'english', `time_zone` = 'UTC', `site_align` = 'LTR', `office_time` = 'Monday - Friday: <strong>08:00 - 22:00</strong>\r\n<br>Saturday, Sunday: <strong>Closed</strong>', `latitude` = '40.6700, -73.9400', `footer_text` = '2018 © Copyright bdtask Treading System'
WHERE `setting_id` = '1';
UPDATE `admin` SET `last_logout` = '2019-01-29 15:11:40'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2019-01-29 15:13:21', `ip_address` = '::1'
WHERE `id` = '1';
INSERT INTO `dbt_user` (`id`, `user_id`, `referral_id`, `first_name`, `last_name`, `email`, `password`, `phone`, `ip`, `status`) VALUES ('', 'YX9HE9', '', 'Alexander', 'Chitu', 'alex@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '12345678', '::1', '1');
UPDATE `admin` SET `last_logout` = '2019-01-29 15:13:54'
WHERE `id` = '1';
INSERT INTO `dbt_user_log` (`log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES ('login', '2019-01-29 14:14:06', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-64.0\",\"platform\":\"Mac OS X\"}', 'YX9HE9', '::1');
