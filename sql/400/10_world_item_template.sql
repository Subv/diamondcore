# Since 12065 empty item names are not allowed
UPDATE `item_template` SET `name` = ' ' WHERE `name` = '';
