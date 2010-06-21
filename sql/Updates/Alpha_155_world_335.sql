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
UPDATE `item_template` SET `material` = 4 WHERE `entry` IN (22906, 22916, 34478, 51315);

# Drop not exist mapid since 3.3.5
DELETE FROM `instance_template` WHERE `map` = 29;

# The Ruby Sanctum Entrance & Exit
REPLACE INTO `instance_template` (`map`, `levelMin`, `levelMax`) VALUES ('724', '80', '80');
REPLACE INTO `areatrigger_teleport` (`id`, `name`, `required_level`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES ('5872', ' The Ruby Sanctum (Exit)', '0', '571', '3604.969', '191.169998', '-110.0', '0');
REPLACE INTO `areatrigger_teleport` (`id`, `name`, `required_level`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES ('5869', 'The Ruby Sanctum (Entrance)', '80', '724', '3279.91', '533.36', '90', '0');
