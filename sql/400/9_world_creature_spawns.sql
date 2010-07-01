# Since 4.0.0.12065 no spawnMask for MapId 0 (Azeroth)
UPDATE `creature_spawns` SET `spawnMask` = 0 WHERE `map` = 0;

# Since 3.3.5 MapId 29 doesn't exist
DELETE FROM `instance_template` WHERE `map` = 29;