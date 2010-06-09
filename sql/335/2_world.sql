# New Achievements
REPLACE INTO `achievement_criteria_requirement` (`criteria_id`) VALUES ('13451');
REPLACE INTO `achievement_criteria_requirement` (`criteria_id`) VALUES ('13452');
REPLACE INTO `achievement_criteria_requirement` (`criteria_id`) VALUES ('13453');
REPLACE INTO `achievement_criteria_requirement` (`criteria_id`) VALUES ('13454');
REPLACE INTO `achievement_criteria_requirement` (`criteria_id`) VALUES ('13465');
REPLACE INTO `achievement_criteria_requirement` (`criteria_id`) VALUES ('13466');
REPLACE INTO `achievement_criteria_requirement` (`criteria_id`) VALUES ('13467');
REPLACE INTO `achievement_criteria_requirement` (`criteria_id`) VALUES ('13468');

# Fix wrong material data
UPDATE `item_template` SET `material` = 4 WHERE `entry` IN (22906, 22916, 34478);

# Drop not exist mapid since 3.3.5
DELETE FROM `instance_template` WHERE `map` = 29;