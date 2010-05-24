# Item support for Worgen (Alliance) / Goblin (Horde)
UPDATE `item_template` SET `AllowableRace` = 946 WHERE `AllowableRace` = 690;
UPDATE `item_template` SET `AllowableRace` = 33869 WHERE `AllowableRace` = 1101;

UPDATE `item_template` SET `AllowableRace` = -1 WHERE `AllowableRace` = 32767;