DELIMITER //
CREATE OR REPLACE PROCEDURE pre0c3()
BEGIN
  UPDATE `oc_setting` SET `value` = 0 WHERE `key` LIKE 'module_%_status';
  UPDATE `oc_setting` SET `value` = 'error.log' WHERE `key` LIKE 'config_error_filename';
  UPDATE `oc_setting` SET `theme_default_status` = '1' WHERE `code` = 'theme_default';
END //
DELIMITER ;
