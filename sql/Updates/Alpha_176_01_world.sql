DROP TABLE IF EXISTS `boss_spell_table`;
CREATE TABLE IF NOT EXISTS `boss_spell_table` (
  `entry`        mediumint(8) NOT NULL DEFAULT '0' COMMENT 'Creature entry',
  `spellID_N10`  mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell ID for 10 normal',
  `spellID_N25`  mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell ID for 25 normal',
  `spellID_H10`  mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell ID for 10 heroic',
  `spellID_H25`  mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell ID for 25 heroic',
  `timerMin_N10` mediumint(8) unsigned NOT NULL DEFAULT '15000' COMMENT 'Minimum timer for this spell (in ms.) for 10 normal',
  `timerMin_N25` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Minimum timer for this spell (in ms.) for 25 normal',
  `timerMin_H10` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Minimum timer for this spell (in ms.) for 10 heroic',
  `timerMin_H25` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Minimum timer for this spell (in ms.) for 25 heroic',
  `timerMax_N10` mediumint(8) unsigned NOT NULL DEFAULT '30000' COMMENT 'Maximum timer for this spell (in ms.) for 10 normal',
  `timerMax_N25` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Maximum timer for this spell (in ms.) for 25 normal',
  `timerMax_H10` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Maximum timer for this spell (in ms.) for 10 heroic',
  `timerMax_H25` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Maximum timer for this spell (in ms.) for 25 heroic',
  `data1`        mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Various INT data for this spell or summon for 10 normal',
  `data2`        mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Various INT data for this spell for 25 normal',
  `data3`        mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Various INT data for this spell for 10 heroic',
  `data4`        mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Various INT data for this spell for 25 heroic',
  `locData_x`    float NOT NULL DEFAULT '0' COMMENT 'Location X data for this spell',
  `locData_y`    float NOT NULL DEFAULT '0' COMMENT 'Location Y data for this spell',
  `locData_z`    float NOT NULL DEFAULT '0' COMMENT 'Location Z data for this spell',
  `varData`      mediumint(8) NOT NULL DEFAULT '0' COMMENT 'Special data field for this spell (basepoint for Aura, for example)',
  `StageMask_N`  smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stage mask for this spell (don\'t used now)',
  `StageMask_H`  smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stage mask for this spell - heroic mode (don\'t used now)',
  `CastType`     smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Type of cast (by enum BossSpellTableParameters)',
  `isVisualEffect` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Is spell is Visual effect only',
  `isBugged`     tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Is spell bugged and need override',
  `textEntry`    mediumint(8) NOT NULL DEFAULT '0' COMMENT 'Text from script_texts for this spell casting',
  `comment`      text,
  PRIMARY KEY (`entry`,`spellID_N10`,`CastType`),
  INDEX `idx_entry`(`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT 'Boss spell table';

/*  */

/* WORLD creature_spawns  These are creatures to be found in more than one specific zone */
/* Spider */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (14881);

/*  */
/* ZONE */
/* */

/* ALTERAC MOUNTAINS */
/* Crushridge Mage, Argus Shadow Mage, Dalaran Summoner, Archmage Ansirem Runeweaver <Kirin Tor> */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (2255, 2318, 2358, 2543);

/* ALTERAC VALLEY */
/* Wildpaw Mystic */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (11838);

/* ARATHI HIGHLANDS */
/* Feeboz, Boulderfist Shaman, Boulderfist Magus, Syndicate Magus, Dark Iron Shadowcaster, Witherbark Axe Thrower, Plains Creeper, Giant Plains Creeper */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (4063, 2570, 2567, 2591, 2577, 2554, 2563, 2565);

/* ASHENVALE */
/* Shadethicket Raincaller, Forsaken Seeker, Dark Strand Cultist, Dark Strand Adept */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (3783, 3732, 3725, 3728);


/*  */
/* AUCHINDOUN */
/*  */



/* AZSHARA */
/* Draconic Magelord, Draconic Mageweaver, Archmage Xylem */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (6129, 6131, 8379);

/* BADLANDS */
/* Dustbelcher Ogre Mage, Dustbelcher Mystic, Shadowmage Vivian Lagrave <Kargath Expeditionary Force> */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (2720, 2907, 9078);

/* BARRENS */
/* Kolkar Stormer, Razormane Geomancer, Razormane Seer, Razormane Mystic, Razormane Hunter, Razormane Warfrenzy, Razormane Water Seeker, Silithid Creeper, Elder Mystic Razorsnout, Horde Axe Thrower */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (3273, 3269, 3458, 3271, 3265, 3459, 3267, 3250, 3270, 9458);

/* BLACKFATHOM DEPTHS */
/* Blindlight Oracle, Blindlight Muckdweller, Blindlight Murloc, Twilight Shadowmage */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (4820, 4819, 4818, 4813);


/* Hedrum the Creeper, Dark Keeper Zimrel */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (9032, 9441);
/* Anvilrage military */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (8890, 8891, 8892, 8893, 8894, 8895, 8898);
/* Cave Creeper */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (8933);

/* BLACKROCK SPIRE */
/* Blackhand Dreadweaver,Blackhand Summoner,Blackhand Veteran,Blackhand Elite,Blackhand Assassin,Blackhand Iron Guard,Chromatic Whelp,Chromatic Dragonspawn,Rookery Whelp,Rookery Guardian,Rage Talon Captain,Rage Talon Fire Tongue,Rage Talon Flamescale */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (9817, 9818, 9819, 10317, 10318, 10319, 10442, 10447, 10161, 10258, 10371, 10372, 10083);
/* Spirestone Battle Mage, Spirestone Mystic, Smolderthorn Mystic, Smolderthorn Axe Thrower, Bloodaxe Summoner <Bloodaxe Legion>, Spire Spider, Spire Spiderling */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (9197, 9198, 9239, 9267, 9717, 10374, 10375);


/* BLACKROCK SPIRE Upper */
/* Jed Runewatcher,Solakar Flamewreath,Goraluk Anvilcrack */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry`IN (10509,10264,10899);

/* BLACKWING LAIR */
/* Trash Mobs */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (12420);


/* BLASTED LANDS */
/* Dreadmaul Ogre Mage, Bloodmage Drazial, Bloodmage Lynnore, Archmage Allistarj */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (5975, 7505, 7506, 7666);

/* BURNING STEPPES */
/* Blackrock Sorcerer, Blackrock Warlock, Scalding Broodling, Thaurissan Agent, Firegut Ogre Mage */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (7026, 7028, 7048, 7038, 7034);


/* DARKSHORE */
/* Delmanis the Hated, Greymist Oracle,  */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (3662, 2207);

/* DEADMINES */
/* Defias Squallshaper, Defias Magician, Defias Conjurer, Defias Overseer, Defias Watchman, Defias Wizard, Defias Evoker, Defias Pirate, Defias Taskmaster, Defias Miner, Defias Strip Miner, Defias Henchman,  */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (1732, 1726, 619, 634, 1725, 4418, 1729, 657, 4417, 598, 4416, 594);

/* DEADWIND PASS */
/* Deadwind Ogre Mage */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (7379);

/* DESOLACE */
/* Burning Blade Shadowmage, Burning Blade Summoner, Mage Hunter */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (4667, 4668, 4681);

/* DIRE MAUL */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (11492, 14325, 14324, 14321, 14326, 14323, 13280, 14122, 11488, 11496, 14396, 11501, 14327, 14506, 11487, 11486, 14354, 11498, 11489, 11490, 11444, 11450, 11441, 11457, 13197);
/* Gordok Mage-Lord, Highborne Summoner */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (11444, 11466);

/* DUN MOROGH */
/* Frostmane Novice, Frostmane Seer, Rockjaw Skullthumper, Rockjaw Bonesnapper, Rockjaw Ambusher, Rockjaw Backbreaker,  */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (946, 1397, 1115, 1117, 1116, 1118);

/* DUROTAR */
/* Razormane Scout, Razormane Dustrunner, Razormane Quilboar, Razormane Battleguard, Vile Familiar */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (3112, 3113, 3111, 3114, 3101);

/* DUSKWOOD */
/* Eliza, Nightbane Shadow Weaver, Skeletal Mage, Defias Night Runner, Defias Night Blade, Skeletal Fiend, Skeletal Healer, Skeletal Mage, Skeletal Raider, Skeletal Warder, Skeletal Warrior, Venom Web Spider, Pygmy Venom Web Spider */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (314, 533, 203, 215, 909, 531, 787, 203, 1110, 785, 48, 217, 539);

/* DUSTWALLOW MARSH */
/* Mirefin Murloc, Darkmist Spider, Withervine Creeper, Darkfang Creeper, Darkfang Spider, Giant Darkfang Spider, Archmage Tervosh */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (4359, 4376, 4382, 4412, 4413, 4415, 4967);

/* EASTERN PLAGUELANDS */
/* Crimson Bodyguard, Crimson Courier, Crypt Walker, Hate Shrieker, Cursed Mage, Shadowmage, Dark Summoner, Scarlet Archmage, Archmage Angela Dosantos */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (13118, 12337, 8556, 8541, 8524, 8550, 8551, 9451, 16116);

/* ELWYNN FOREST */
/* Hogger, Defias Rogue Wizard, Defias Enchanter, Defias Bodyguard, Defias Bandit, Defias Cutpurse, Murloc Lurker, Murloc Forager, Forest Spider, Mine Spider */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (448, 474, 910, 6866, 116, 94, 732, 46, 30, 43);

/* FELWOOD */
/* Timbermaw Mystic */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (11552);

/* FERALAS */
/* Gordunni Ogre Mage, Gordunni Mage-Lord, Woodpaw Mystic, Gordok Ogre-Mage */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (5237, 5239, 5254, 11443);

/* GNOMEREGAN */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (6206, 6208, 6209, 6215, 6219, 6229, 6228, 6235, 7361, 6407, 6220, 6218, 7603, 6223, 6222, 6234, 6233, 6226, 6227, 6225, 6230, 7079);

/*  */
/* HELLFIRE CITADEL */
/*  */

/* Laughing Skull Legionnaire, Laughing Skull Warden, Laughing Skull Rogue, Hellfire Imp, Shadowmoon Channeler, Fel Orc Neophyte, Shadowmoon Technician, Shadowmoon Adept, Hellfire Familiar, Felguard Brute, Shadowmoon Summoner, Shadowmoon Warlock */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (17626, 17624, 17491, 17477, 17653, 17429, 17414, 17397, 19016, 18894, 17395, 17371);

/* HELLFIRE RAMPARTS */
/* Vazruden, Omor the Unscarred, Watchkeeper Gargolmar */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (17537, 17308, 17306);
/* Hellfire Watcher <Watchkeeper's Subordinate>, Bonechewer Hungerer, Bonechewer Beastmaster, Bonechewer Ravener, Bonechewer Ripper, Bonechewer Destroyer, Bleeding Hollow Archer, Bleeding Hollow Darkcaster, Hellfire Sentry <Herald's Sentry>, Bleeding Hollow Scryer */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (17309, 17259, 17455, 17264, 17281, 17271, 17270, 17269, 17517, 17478);

/* SHATTERED HALLS */
/* Warchief Kargath Bladefist */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (16808);
/* Shattered Hand Centurion, Shadowmoon Darkcaster, Shattered Hand Champion, Sharpshooter Guard, Shattered Hand Assassin, Warbringer O'mrogg, Grand Warlock Nethekurse, Shattered Hand Sharpshooter, Shattered Hand Legionnaire, Shattered Hand Reaver, Shattered Hand Brawler */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (17465, 17694, 17671, 17622, 17695, 16809, 16807, 16704, 16700, 16699, 16593);


/* HILLSBRAD FOOTHILLS */
/* Syndicate Shadow Mage, Elder Moss Creeper, Giant Moss Creeper(also AM), Forest Moss Creeper, Writhing Mage */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (2244, 2348, 2349, 2350, 7075);

/* HINTERLANDS */
/* Vilebranch Axe Thrower, Mystic Yayo'jin <Reagent Vendor> */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (2639, 14739);

/* LOCH MODAN */
/* Mo'grosh Mystic, Tunnel Rat Geomancer, Magosh <Stonesplinter Tribal Shaman>, Stonesplinter Scout, Stonesplinter Seer, Stonesplinter Geomancer, Stonesplinter Skullthumper, Stonesplinter Bonesnapper, Stonesplinter Shaman, Stonesplinter Digger,  */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (1183, 1174, 1399, 1162, 1166, 1165, 1163, 1164, 1197, 1167);

/* MULGORE */
/* Bristleback Shaman, Bristleback Interloper, Bristleback Quilboar, Bristleback Battleboar, Bristleback Interloper,  */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (2953, 3232, 2952, 2954, 3232);

/* NAXXRAMAS */
/* Dread Creeper, Archmage Tarsis Kir-Moldir */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (15974, 16381);

/* ONYXIA'S LAIR */
/* Onyxian Whelp */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (11262);

/* RAZORFEN DOWNS */
/* Mordresh Fire Eye, Plaguemaw the Rotting, Tuten\'kash, Ragglesnout, Glutton */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (7357, 7356, 7355, 7354, 8567);
/* Skeletal Frostweaver, Skeletal Shadowcaster, Skeletal Summoner,  */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (7341, 7340, 7342);

/* REDRIDGE MOUNTAINS */
/* Blackrock Shadowcaster, Murloc Minor Tidecaller, Murloc Nightcrawler, Murloc Tidecaller, Murloc Scout, Murloc Shorestriker, Shadowhide Darkweaver, Rabid Shadowhide Gnoll, Shadowhide Gnoll, Shadowhide Brute, Shadowhide Warrior, Shadowhide Assassin, Redridge Mystic, Redridge Poacher, Redridge Thrasher, Redridge Basher, Black Dragon Whelp, Tarantula, Greater Tarantula, Blackrock Summoner */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (436, 548, 544, 545, 578, 1083, 422, 429, 434, 433, 432, 568, 579, 430, 424, 712, 446, 441, 442, 505, 4463);

/* SCARLET MONASTERY */
/* Fallen Champion, Scarlet Chaplain, Scarlet Adept, Scarlet Wizard,  */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (6488, 4299, 4296, 4300);

/* SCHOLOMANCE */
/* Kirtonos the Herald, Rattlegore, Marduk Blackpool, Risen Guard, Risen Bonewarder, Risen Lackey, Risen Aberration, Risen Warrior, Risen Protector, Risen Construct, Risen Guardian, Diseased Ghoul, Ragged Ghoul, Spectral Projection, Spectral Teacher, Necrofiend, Scholomance Neophyte, Scholomance Acolyte, Scholomance Occultist */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (10506, 11622, 10433, 10489, 10491, 10482, 10485, 10486, 10487, 10488, 11598, 10495, 10497, 11263, 10500, 11551, 10470, 10471, 10472);
/* Scholomance Student, Scholomance Necromancer, Scholomance Adept, Scholomance Handler, Splintered Skeleton, Skulking Corpse, Unstable Corpse, Reanimated Corpse, Aspect of Banality, Aspect of Corruption, Aspect of Malice, Aspect of Shadow, Blood Steward of Kirtonos, Spectral Tutor, Dark Shade, Corrupted Spirit, Malicious Spirit, Banal Spirit, Scholomance Dark Summoner */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (10475, 10477, 10469, 11257, 10478, 10479, 10480, 10481, 14518, 14519, 14520, 14521, 14861, 10498, 11284, 14512, 14513, 14514, 11582);

/* SEARING GORGE */
/* Glassweb Spider, Searing Lava Spider, Greater Lava Spider */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (5856, 5857, 5858);

/* SHADOWFANG KEEP */
/* Archmage Arugal */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (4275);


/* SILITHUS */
/* Orgrimmar Legion Axe Thrower, Stormwind Archmage */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (15617, 15859);

/* SILVERPINE FOREST */
/* Dalaran Apprentice, Dalaran Conjuror, Dalaran Mage, Dalaran Wizard, Rot Hide Mystic, Rot Hide Gladerunner, Rot Hide Brute, Rot Hide Plague Weaver, Rot Hide Savage, Rot Hide Bruiser, Mist Creeper, Dalaran Apprentice, Dalaran Wizard, Dalaran Protector, Dalaran Warder, Dalaran Mage, Dalaran Conjuror, Lake Creeper, Elder Lake Creeper, Vile Fin Shorecreeper, Nightlash, Archmage Ataeric */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (1867, 1915, 1914, 1889, 1773, 1772, 1939, 1940, 1942, 1944, 1781, 1867, 1889, 1912, 1913, 1914, 1915, 1955, 1956, 1957, 1983, 2120);

/* STOCKADES */
/* Defias Captive, Defias Convict, Defias Inmate, Defias Insurgent, Defias Prisoner,  */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (1707, 1711, 1708, 1715, 1706);

/* STONETALON MOUNTAINS */
/* Deepmoss Creeper */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (4005);

/* STRANGLETHORN VALE */
/* Bloodscalp Shaman, Bloodsail Elder Magus, Bloodsail Mage, Bloodsail Warlock, Bloodscalp Axe Thrower, Skullsplitter Axe Thrower, Bloodscalp Mystic, Skullsplitter Mystic */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (697, 1653, 1562, 1564, 694, 696, 701, 780);

/* STRATHOLME */
/* Jarien, Aurius, Ash'ari Crystal, Elder Farwhisper, Mindless Undead */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (16101, 10917, 10415, 15607, 11030);

/* SUNKEN TEMPLE */
/* Zekkis, Kazkaz the Unholy, Spawn of Hakkar, Shade of Eranikus, Jammal'an the Prophet, Ogom the Wretched, Zolo, Gasher, Loro, Hukku, Zul'Lor, Mijan, Morphaz, Weaver, Dreamscythe, Hazzas, Avatar of Hakkar, Atal'alarion <Guardian of the Idol> */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (5400, 5401, 5708, 5709, 5710, 5711, 5712, 5713, 5714, 5715, 5716, 5717, 5719, 5720, 5721, 5722, 8443, 8580);
/* Jade, Murk Slitherer, Murk Spitter, Murk Worm, Saturated Ooze, Fungal Ooze, Cursed Atal'ai, Atal'ai Witch Doctor, Enthralled Atal'ai, Mummified Atal'ai, Unliving Atal'ai, Atal'ai Priest, Atal'ai Corpse Eater, Atal'ai Deathwalker, Atal'ai High Priest, Nightmare Scalebane, Nightmare Wyrmkin, Nightmare Wanderer, Hakkari Frostwing, Nightmare Whelp, Atal'ai Skeleton, Hakkari Sapper, Hakkari Minion, Hakkari Bloodkeeper, Nightmare Suppressor */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (1063, 5224, 5225, 5226, 5228, 5235, 5243, 5259, 5261, 5263, 5267, 5269, 5270, 5271, 5273, 5277, 5280, 5283, 5291, 8319, 8324, 8336, 8437, 8438, 8497);

/* SWAMP OF SORROWS */
/* Marsh Murloc, Adolescent Whelp, Dreaming Whelp, Wyrmkin Dreamwalker, Scalebane Captain, Deathstrike Tarantula */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (747, 740, 741, 743, 745, 769);

/* TANARIS */
/* Dunemaul Ogre Mage, Wastewander Shadow Mage, Sandfury Axe Thrower */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (5473, 5617, 5646);

/* TELDRASSIL */
/* Gnarlpine Mystic, Gnarlpine Pathfinder, Bloodfeather Sorceress, Webwood Spider, Giant Webwood Spider */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (7235, 2012, 2018, 1986, 2001);

/* TIRISFAL GLADES */
/* Scarlet Neophyte, Rot Hide Gnoll, Young Night Web Spider, Night Web Spider, Vicious Night Web Spider */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (1539, 1674, 1504, 1505, 1555);

/* UN'GORO CRATER */
/* Tar Creeper */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (6527);

/* WAILING CAVERNS */
/* Deviate Creeper */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (3632);

/* WESTERN PLAGUELANDS */
/* Skeletal Acolyte, Skeletal Flayer, Skeletal Sorcerer, Scarlet Mage, Araj the Summoner */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (1789, 1783, 1784, 1826, 1852);

/* WESTFALL */
/* Defias Pillager, Defias Smuggler, Defias Trapper, Defias Highwayman, Defias Knuckleduster, Defias Pathstalker, Defias Looter, Murloc Oracle, Murloc Hunter, Murloc Warrior, Murloc Tidehunter, Murloc Coastrunner, Riverpaw Scout, Riverpaw Mongrel, Riverpaw Brute, Riverpaw Herbalist, Defias Renegade Mage, Riverpaw Mystic */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (589, 95, 504, 122, 449, 121, 590, 517, 458, 171, 127, 126, 500, 123, 124, 501, 450, 453);

/* WETLANDS */
/* Bluegill Forager, Bluegill Murloc, Bluegill Muckdweller, Bluegill Raider, Bluegill Warrior, Bluegill Oracle, Mosshide Mistweaver, Mosshide Mystic, Mosshide Trapper, Mosshide Mongrel, Mosshide Gnoll, Fen Creeper, Red Whelp, Lost Whelp, Flamesnorting Whelp, Crimson Whelp */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (1026, 1024, 1028, 1418, 1027, 1029, 1009, 1013, 1011, 1008, 1007, 1040, 1042, 1043, 1044, 1069);

/* WINTERSPRING */
/* Cobalt Mageweaver, Chillwind Chimaera */
UPDATE `creature_template` SET `ScriptName` = 'generic_creature' WHERE `entry` IN (7437, 7448);


/* EOF */

/* AREATRIGGER */
DELETE FROM areatrigger_scripts WHERE entry=4591;
REPLACE INTO areatrigger_scripts VALUES (4591,'at_coilfang_waterfall');
DELETE FROM areatrigger_scripts WHERE entry=4560;
REPLACE INTO areatrigger_scripts VALUES (4560,'at_legion_teleporter');
DELETE FROM areatrigger_scripts WHERE entry=3066;
REPLACE INTO areatrigger_scripts VALUES (3066,'at_ravenholdt');
DELETE FROM areatrigger_scripts WHERE entry IN (4871, 4872, 4873);
REPLACE INTO areatrigger_scripts VALUES
(4871,'at_warsong_farms'),
(4872,'at_warsong_farms'),
(4873,'at_warsong_farms');
DELETE FROM areatrigger_scripts WHERE entry BETWEEN 5284 AND 5287;
REPLACE INTO areatrigger_scripts VALUES
(5284,'at_aldurthar_gate'),
(5285,'at_aldurthar_gate'),
(5286,'at_aldurthar_gate'),
(5287,'at_aldurthar_gate');
DELETE FROM areatrigger_scripts WHERE entry=4112;
REPLACE INTO areatrigger_scripts VALUES (4112,'at_naxxramas');
DELETE FROM areatrigger_scripts WHERE entry=5108;
REPLACE INTO areatrigger_scripts VALUES (5108,'at_stormwright_shelf');
DELETE FROM areatrigger_scripts WHERE entry IN (3546, 3547, 3548, 3549, 3550, 3552);
REPLACE INTO areatrigger_scripts VALUES
-- Darnassian bank
(3546, 'at_childrens_week_spot'),
-- Undercity - thone room
(3547, 'at_childrens_week_spot'),
-- Stonewrought Dam
(3548, 'at_childrens_week_spot'),
-- The Mor'shan Rampart
(3549, 'at_childrens_week_spot'),
-- Ratchet Docks
(3550, 'at_childrens_week_spot'),
-- Westfall Lighthouse
(3552, 'at_childrens_week_spot');
DELETE FROM areatrigger_scripts WHERE entry IN (2026, 2046);
REPLACE INTO areatrigger_scripts VALUES
(2026, 'at_blackrock_spire'),
(2046, 'at_blackrock_spire');

/* BATTLEGROUNDS */
UPDATE creature_template SET ScriptName='npc_spirit_guide' WHERE entry IN (13116, 13117);

/* WORLD BOSS */
UPDATE creature_template SET ScriptName='boss_ysondre' WHERE entry=14887;
UPDATE creature_template SET ScriptName='boss_emeriss' WHERE entry=14889;
UPDATE creature_template SET ScriptName='boss_taerar' WHERE entry=14890;
UPDATE creature_template SET ScriptName='boss_shade_of_taerar' WHERE entry=15302;
UPDATE creature_template SET ScriptName='boss_kruul' WHERE entry=18338;
UPDATE creature_template SET ScriptName='boss_azuregos' WHERE entry=6109;
UPDATE creature_template SET ScriptName='mob_dementeddruids' WHERE entry=15260;

/* GO */
UPDATE gameobject_template SET ScriptName='go_cat_figurine' WHERE entry=13873;
UPDATE gameobject_template SET ScriptName='go_northern_crystal_pylon' WHERE entry=164955;
UPDATE gameobject_template SET ScriptName='go_western_crystal_pylon' WHERE entry=164956;
UPDATE gameobject_template SET ScriptName='go_eastern_crystal_pylon' WHERE entry=164957;
UPDATE gameobject_template SET ScriptName='go_barov_journal' WHERE entry=180794;
UPDATE gameobject_template SET ScriptName='go_ethereum_prison' WHERE entry BETWEEN 184418 AND 184431;
UPDATE gameobject_template SET ScriptName='go_ethereum_stasis' WHERE entry BETWEEN 185465 AND 185467;
UPDATE gameobject_template SET ScriptName='go_ethereum_stasis' WHERE entry=184595;
UPDATE gameobject_template SET ScriptName='go_ethereum_stasis' WHERE entry BETWEEN 185461 AND 185464;
UPDATE gameobject_template SET ScriptName='go_field_repair_bot_74A' where entry=179552;
UPDATE gameobject_template SET ScriptName='go_gilded_brazier' WHERE entry=181956;
UPDATE gameobject_template SET ScriptName='go_jump_a_tron' WHERE entry=183146;
UPDATE gameobject_template SET ScriptName='go_orb_of_command' WHERE entry=179879;
UPDATE gameobject_template SET ScriptName='go_resonite_cask' WHERE entry=178145;
UPDATE gameobject_template SET ScriptName='go_sacred_fire_of_life' WHERE entry=175944;
UPDATE gameobject_template SET ScriptName='go_shrine_of_the_birds' WHERE entry IN (185547,185553,185551);
UPDATE gameobject_template SET ScriptName='go_tablet_of_madness' WHERE entry=180368;
UPDATE gameobject_template SET ScriptName='go_tablet_of_the_seven' WHERE entry=169294;
UPDATE gameobject_template SET ScriptName='go_tele_to_dalaran_crystal' WHERE entry=191230;
UPDATE gameobject_template SET ScriptName='go_tele_to_violet_stand' WHERE entry=191229;
UPDATE gameobject_template SET ScriptName='go_blood_filled_orb' WHERE entry=182024;

/* GUARD */
UPDATE creature_template SET ScriptName='guard_azuremyst' WHERE entry=18038;
UPDATE creature_template SET ScriptName='guard_orgrimmar' WHERE entry=3296;
UPDATE creature_template SET ScriptName='guard_stormwind' WHERE entry IN (68,1976);
UPDATE creature_template SET ScriptName='guard_contested' WHERE entry IN (9460,4624,3502,11190,15184);
UPDATE creature_template SET ScriptName='guard_elwynnforest' WHERE entry=1423;
UPDATE creature_template SET ScriptName='guard_eversong' WHERE entry=16221;
UPDATE creature_template SET ScriptName='guard_darnassus' WHERE entry=4262;
UPDATE creature_template SET ScriptName='guard_teldrassil' WHERE entry=3571;
UPDATE creature_template SET ScriptName='guard_ironforge' WHERE entry=5595;
UPDATE creature_template SET ScriptName='guard_dunmorogh' WHERE entry IN (727,13076);
UPDATE creature_template SET ScriptName='guard_undercity' WHERE entry=5624;
UPDATE creature_template SET ScriptName='guard_bluffwatcher' WHERE entry=3084;
UPDATE creature_template SET ScriptName='guard_durotar' WHERE entry=5953;
UPDATE creature_template SET ScriptName='guard_mulgore' WHERE entry IN (3212,3215,3217,3218,3219,3220,3221,3222,3223,3224);
UPDATE creature_template SET ScriptName='guard_dunmorogh' WHERE entry IN (727,13076);
UPDATE creature_template SET ScriptName='guard_tirisfal' WHERE entry IN (1735,1738,2210,1744,1745,5725,1743,2209,1746,1742);
UPDATE creature_template SET ScriptName='guard_silvermoon' WHERE entry=16222;
UPDATE creature_template SET ScriptName='guard_exodar' WHERE entry=16733;
UPDATE creature_template SET ScriptName='guard_shattrath' WHERE entry=19687;
UPDATE creature_template SET ScriptName='guard_shattrath_aldor' WHERE entry=18549;
UPDATE creature_template SET ScriptName='guard_shattrath_scryer' WHERE entry=18568;

/* ITEM */
UPDATE item_template SET ScriptName='item_arcane_charges' WHERE entry=34475;
UPDATE item_template SET ScriptName='item_flying_machine' WHERE entry IN (34060,34061);
UPDATE item_template SET ScriptName='item_gor_dreks_ointment' WHERE entry=30175;
UPDATE item_template SET ScriptName='item_tainted_core' WHERE entry=31088;
UPDATE item_template SET ScriptName='item_petrov_cluster_bombs' WHERE entry=33098;

/* NPC (usually creatures to be found in more than one specific zone) */
UPDATE creature_template SET ScriptName='npc_air_force_bots' WHERE entry IN (2614, 2615, 21974, 21993, 21996, 21997, 21999, 22001, 22002, 22003, 22063, 22065, 22066, 22068, 22069, 22070, 22071, 22078, 22079, 22080, 22086, 22087, 22088, 22090, 22124, 22125, 22126);
UPDATE creature_template SET ScriptName='npc_chicken_cluck' WHERE entry=620;
UPDATE creature_template SET ScriptName='npc_dancing_flames' WHERE entry=25305;
UPDATE creature_template SET ScriptName='npc_garments_of_quests' WHERE entry IN (12429,12423,12427,12430,12428);
UPDATE creature_template SET ScriptName='npc_guardian' WHERE entry=5764;
UPDATE creature_template SET ScriptName='npc_kingdom_of_dalaran_quests' WHERE entry IN (29169,23729,26673,27158,29158,29161,26471,29155,29159,29160,29162);
UPDATE creature_template SET ScriptName='npc_lunaclaw_spirit' WHERE entry=12144;
UPDATE creature_template SET ScriptName='npc_mount_vendor' WHERE entry IN (384,1261,1460,2357,3362,3685,4730,4731,4885,7952,7955,16264,17584);
UPDATE creature_template SET ScriptName='npc_doctor' WHERE entry IN (12939,12920);
UPDATE creature_template SET ScriptName='npc_injured_patient' WHERE entry IN (12936,12937,12938,12923,12924,12925);
UPDATE creature_template SET ScriptName='' WHERE npcflag!=npcflag|65536 AND ScriptName='npc_innkeeper';
UPDATE creature_template SET ScriptName='npc_innkeeper' WHERE npcflag=npcflag|65536;
UPDATE creature_template SET ScriptName='npc_prof_alchemy' WHERE entry IN (17909,19052,22427);
UPDATE creature_template SET ScriptName='npc_prof_blacksmith' WHERE entry IN (5164,11145,11146,11176,11177,11178,11191,11192,11193);
UPDATE creature_template SET ScriptName='npc_engineering_tele_trinket' WHERE entry IN (14742,14743,21493,21494);
UPDATE creature_template SET ScriptName='npc_prof_leather' WHERE entry IN (7866,7867,7868,7869,7870,7871);
UPDATE creature_template SET ScriptName='npc_prof_tailor' WHERE entry IN (22208,22212,22213);
UPDATE creature_template SET ScriptName='npc_rogue_trainer' WHERE entry IN (918,4163,3328,4583,5165,5167,13283,16684);
UPDATE creature_template SET ScriptName='npc_sayge' WHERE entry=14822;
UPDATE creature_template SET ScriptName='npc_tabard_vendor' WHERE entry=28776;
UPDATE creature_template SET ScriptName='npc_locksmith' WHERE entry IN (29665,29725,29728);

/* SPELL */
UPDATE creature_template SET ScriptName='spell_dummy_npc' WHERE entry IN (16880,1200,26616,26643,16518,25793,25758,25752,25792,25753,26421,26841,27808,27122,28068,12298,12296,24918,17326,17654,16847,18879,26270,26268,30146);
UPDATE gameobject_template SET ScriptName='spell_dummy_go' WHERE entry IN (181616,186949);

/*  */
/* ZONE */
/* */

/* ALTERAC MOUNTAINS */


/* ALTERAC VALLEY */


/* ARATHI HIGHLANDS */
UPDATE creature_template SET ScriptName='npc_professor_phizzlethorpe' WHERE entry=2768;

/* ASHENVALE */
UPDATE creature_template SET ScriptName='npc_muglash' WHERE entry=12717;
UPDATE gameobject_template SET ScriptName='go_naga_brazier' WHERE entry=178247;
UPDATE creature_template SET ScriptName='npc_ruul_snowhoof' WHERE entry=12818;
UPDATE creature_template SET ScriptName='npc_torek' WHERE entry=12858;

/*  */
/* AUCHINDOUN */
/*  */

/* MANA TOMBS */
UPDATE creature_template SET ScriptName='boss_pandemonius' WHERE entry=18341;
UPDATE creature_template SET ScriptName='boss_nexusprince_shaffar' WHERE entry=18344;
UPDATE creature_template SET ScriptName='mob_ethereal_beacon' WHERE entry=18431;

/* AUCHENAI CRYPTS */
UPDATE creature_template SET ScriptName='boss_exarch_maladaar' WHERE entry=18373;
UPDATE creature_template SET ScriptName='mob_avatar_of_martyred' WHERE entry=18478;
UPDATE creature_template SET ScriptName='mob_stolen_soul' WHERE entry=18441;

/* SETHEKK HALLS */
UPDATE instance_template SET script='instance_sethekk_halls' WHERE map=556;
UPDATE creature_template SET ScriptName='mob_syth_fire' WHERE entry=19203;
UPDATE creature_template SET ScriptName='mob_syth_arcane' WHERE entry=19205;
UPDATE creature_template SET ScriptName='mob_syth_frost' WHERE entry=19204;
UPDATE creature_template SET ScriptName='mob_syth_shadow' WHERE entry=19206;
UPDATE creature_template SET ScriptName='boss_talon_king_ikiss' WHERE entry=18473;
UPDATE creature_template SET ScriptName='boss_darkweaver_syth' WHERE entry=18472;

/* SHADOW LABYRINTH */
UPDATE instance_template SET script='instance_shadow_labyrinth' WHERE map=555;
UPDATE creature_template SET ScriptName='boss_murmur' WHERE entry=18708;
UPDATE creature_template SET ScriptName='boss_grandmaster_vorpil' WHERE entry=18732;
UPDATE creature_template SET ScriptName='boss_blackheart_the_inciter' WHERE entry=18667;
UPDATE creature_template SET ScriptName='boss_ambassador_hellmaw' WHERE entry=18731;

/*  */
/* AZJOL-NERUB */
/*  */

/* AHN'KAHET */
UPDATE creature_template SET ScriptName='boss_jedoga' WHERE entry=29310;
UPDATE creature_template SET ScriptName='boss_nadox' WHERE entry=29309;
UPDATE creature_template SET ScriptName = 'mob_ahnkahar_egg' WHERE entry IN (30172,30173);
UPDATE creature_template SET ScriptName='boss_taldaram' WHERE entry=29308;
UPDATE gameobject_template SET ScriptName='go_nerubian_device' WHERE entry IN (193093,193094);
UPDATE creature_template SET ScriptName='boss_volazj' WHERE entry=29311;
UPDATE instance_template SET script='instance_ahnkahet' WHERE map=619;

/* AZJOL-NERUB */
UPDATE creature_template SET ScriptName='boss_anubarak' WHERE entry=29120;
UPDATE creature_template SET ScriptName='boss_hadronox' WHERE entry=28921;
UPDATE creature_template SET ScriptName='boss_krikthir' WHERE entry=28684;
UPDATE instance_template SET script='instance_azjol-nerub' WHERE map=601;

/* AZSHARA */
UPDATE creature_template SET ScriptName='npc_rizzle_sprysprocket' WHERE entry=23002;
UPDATE creature_template SET ScriptName='npc_depth_charge' WHERE entry=23025;
UPDATE gameobject_template SET ScriptName='go_southfury_moonstone' WHERE entry=185566;
UPDATE creature_template SET ScriptName='mobs_spitelashes' WHERE entry IN (6190,6193,6194,6195,6196,7885,7886,12204,12205);
UPDATE creature_template SET ScriptName='npc_loramus_thalipedes' WHERE entry=7783;

/* AZUREMYST ISLE */
UPDATE creature_template SET ScriptName='npc_draenei_survivor' WHERE entry=16483;
UPDATE creature_template SET ScriptName='npc_engineer_spark_overgrind' WHERE entry=17243;
UPDATE creature_template SET ScriptName='npc_injured_draenei' WHERE entry=16971;
UPDATE creature_template SET ScriptName='npc_magwin' WHERE entry=17312;
UPDATE creature_template SET ScriptName='npc_susurrus' WHERE entry=17435;

/* BADLANDS */


/* BARRENS */
UPDATE creature_template SET ScriptName='npc_beaten_corpse' WHERE entry=10668;
UPDATE creature_template SET ScriptName='npc_gilthares' WHERE entry=3465;
UPDATE creature_template SET ScriptName='npc_sputtervalve' WHERE entry=3442;
UPDATE creature_template SET ScriptName='npc_taskmaster_fizzule' WHERE entry=7233;
UPDATE creature_template SET ScriptName='npc_twiggy_flathead' WHERE entry=6248;
DELETE FROM areatrigger_scripts WHERE entry=522;
REPLACE INTO areatrigger_scripts VALUES (522,'at_twiggy_flathead');
UPDATE creature_template SET ScriptName='npc_wizzlecranks_shredder' WHERE entry=3439;

/* BLACK TEMPLE */
UPDATE instance_template SET script='instance_black_temple' WHERE map=564;
UPDATE creature_template SET ScriptName='npc_akama_shade' WHERE entry=22990; -- Akama at Shade of Akama
UPDATE creature_template SET ScriptName='npc_akama_illidan' WHERE entry=23089; -- Akama at Illidan
UPDATE creature_template SET ScriptName='mob_illidari_council' WHERE entry=23426; -- Illidari Council controller mob
UPDATE creature_template SET ScriptName='mob_blood_elf_council_voice_trigger' WHERE entry=23499; -- Voice Trigger Mob (Controls Aggro + Enrage yells)
UPDATE creature_template SET ScriptName='boss_veras_darkshadow' WHERE entry=22952; -- Rogue of Illidari Council
UPDATE creature_template SET ScriptName='boss_teron_gorefiend' WHERE entry=22871; -- Teron Gorefiend
UPDATE creature_template SET ScriptName='boss_supremus' WHERE entry=22898; -- Supremus
UPDATE creature_template SET ScriptName='boss_shade_of_akama' WHERE entry=22841; -- Shade of Akama
UPDATE creature_template SET ScriptName='boss_reliquary_of_souls' WHERE entry=22856; -- Reliquary Controller Mob
UPDATE creature_template SET ScriptName='boss_essence_of_suffering' WHERE entry=23418; -- Essence Of Suffering
UPDATE creature_template SET ScriptName='boss_essence_of_desire' WHERE entry=23419; -- Essence of Desire
UPDATE creature_template SET ScriptName='boss_essence_of_anger' WHERE entry=23420; -- Essence of Anger
UPDATE creature_template SET ScriptName='boss_najentus' WHERE entry=22887; -- High Warlord Naj'entus
UPDATE creature_template SET ScriptName='boss_gurtogg_bloodboil' WHERE entry=22948; -- Gurtogg Bloodboil
UPDATE creature_template SET ScriptName='boss_mother_shahraz' WHERE entry=22947; -- Mother Shahraz
UPDATE creature_template SET ScriptName='boss_lady_malande' WHERE entry=22951; -- Priest <3 at Illidari Council
UPDATE creature_template SET ScriptName='boss_illidan_stormrage' WHERE entry=22917; -- Illidan The Betrayer!
UPDATE creature_template SET ScriptName='boss_high_nethermancer_zerevor' WHERE entry=22950; -- Mage at Illidari Council
UPDATE creature_template SET ScriptName='boss_gathios_the_shatterer' WHERE entry=22949; -- Paladin at Illidari Council
UPDATE creature_template SET ScriptName='boss_maiev_shadowsong' WHERE entry=23197; -- Maiev Shadowsong
UPDATE gameobject_template SET ScriptName='gameobject_cage_trap' WHERE entry=185916; -- Cage Trap GO in Illidan Encounter
UPDATE creature_template SET ScriptName='mob_blaze' WHERE entry=23259; -- Blaze mob in Illidan Phase 2
UPDATE creature_template SET ScriptName='mob_flame_of_azzinoth' WHERE entry=22997; -- Flame of Azzinoth (Illidan Phase 2)
UPDATE creature_template SET ScriptName='mob_blade_of_azzinoth' WHERE entry=22996; -- Blade of Azzinoth (Illidan Phase 2)
UPDATE creature_template SET ScriptName='mob_demon_fire' WHERE entry=23069; -- Demon Fire in Illidan Phase 2
UPDATE creature_template SET ScriptName='mob_flame_crash' WHERE entry=23336; -- Flame Crash in Illidan Normal Form
UPDATE creature_template SET ScriptName='mob_cage_trap_trigger' WHERE entry=23304; -- Cage Trap mob in Illidan Phase 3/4 Normal
UPDATE creature_template SET ScriptName='mob_shadow_demon' WHERE entry=23375; -- Shadow Demon in Illidan Demon Form
UPDATE creature_template SET ScriptName='npc_volcano' WHERE entry=23085; -- Supremus Volcano
UPDATE creature_template SET ScriptName='molten_flame' WHERE entry=23095; -- Molten Flame in SUpremus
UPDATE creature_template SET ScriptName='mob_ashtongue_channeler' WHERE entry=23421; -- Ashtongue CHanneler in Shade of AKama
UPDATE creature_template SET ScriptName='mob_ashtongue_sorcerer' WHERE entry=23215; -- Ashtongue Sorcerer in Shade of Akama
UPDATE creature_template SET ScriptName='npc_enslaved_soul' WHERE entry=23469; -- Enslaved Soul in Reliquary Event
UPDATE creature_template SET ScriptName='mob_doom_blossom' WHERE entry=23123; -- Doom Blossoms in Teron Gorefiend's encounter
UPDATE creature_template SET ScriptName='npc_spirit_of_olum' WHERE entry=23411;
-- UPDATE creature_template SET ScriptName='mob_shadowy_construct' WHERE entry=23111; -- Shadowy Construct in Teron Gorefiend's encounter. Commented until Mind Control is implemented.

/* BLACKFATHOM DEPTHS */
UPDATE instance_template SET script='instance_blackfathom_deeps' WHERE map=48;
UPDATE gameobject_template SET ScriptName='go_fire_of_akumai' WHERE entry IN (21118,21119,21120,21121);

/* BLACKROCK DEPTHS */
DELETE FROM areatrigger_scripts WHERE entry=1526;
REPLACE INTO areatrigger_scripts VALUES (1526,'at_ring_of_law');
UPDATE instance_template SET script='instance_blackrock_depths' WHERE map =230;
UPDATE creature_template SET ScriptName='boss_emperor_dagran_thaurissan' WHERE entry=9019;
UPDATE creature_template SET ScriptName='boss_moira_bronzebeard' WHERE entry=8929;
UPDATE creature_template SET ScriptName='boss_ambassador_flamelash' WHERE entry=9156;
UPDATE creature_template SET ScriptName='boss_anubshiah' WHERE entry=9031;
UPDATE creature_template SET ScriptName='boss_doomrel' WHERE entry=9039;
UPDATE creature_template SET ScriptName='boss_gloomrel' WHERE entry=9037;
UPDATE creature_template SET ScriptName='boss_general_angerforge' WHERE entry=9033;
UPDATE creature_template SET ScriptName='boss_gorosh_the_dervish' WHERE entry=9027;
UPDATE creature_template SET ScriptName='boss_grizzle' WHERE entry=9028;
UPDATE creature_template SET ScriptName='boss_high_interrogator_gerstahn' WHERE entry=9018;
UPDATE creature_template SET ScriptName='boss_magmus' WHERE entry=9938;
UPDATE creature_template SET ScriptName='mob_phalanx' WHERE entry=9502;
UPDATE creature_template SET ScriptName='npc_grimstone' WHERE entry=10096;
UPDATE creature_template SET ScriptName='npc_lokhtos_darkbargainer' WHERE entry=12944;
UPDATE creature_template SET ScriptName='npc_kharan_mighthammer' WHERE entry=9021;
UPDATE creature_template SET ScriptName='npc_rocknot' WHERE entry=9503;
UPDATE gameobject_template SET ScriptName='go_shadowforge_brazier' WHERE entry IN (174744, 174745);

/* BLACKROCK SPIRE */
UPDATE instance_template SET script='instance_blackrock_spire' WHERE map=229;
/* BLACKROCK SPIRE Lower bosses */
UPDATE creature_template SET ScriptName='boss_highlord_omokk' WHERE entry=9196;
UPDATE creature_template SET ScriptName='boss_shadow_hunter_voshgajin' WHERE entry=9236;
UPDATE creature_template SET ScriptName='boss_warmaster_voone' WHERE entry=9237;
UPDATE creature_template SET ScriptName='boss_mother_smolderweb' WHERE entry=10596;
UPDATE creature_template SET ScriptName='quartermaster_zigris' WHERE entry=9736;
UPDATE creature_template SET ScriptName='boss_halycon' WHERE entry=10220;
UPDATE creature_template SET ScriptName='boss_overlord_wyrmthalak' WHERE entry=9568;
/* BLACKROCK SPIRE Upper bosses */
UPDATE creature_template SET ScriptName='boss_the_beast' WHERE entry=10430;
UPDATE creature_template SET ScriptName='boss_drakkisath' WHERE entry=10363;
UPDATE creature_template SET ScriptName='boss_gyth' WHERE entry=10339;
UPDATE creature_template SET ScriptName='boss_rend_blackhand' WHERE entry=10429;
UPDATE creature_template SET ScriptName='boss_pyroguard_emberseer' WHERE entry=9816;

/* BLACKWING LAIR */
-- UPDATE instance_template SET script='instance_blackwing_lair' WHERE map=469;
UPDATE creature_template SET ScriptName='boss_razorgore' WHERE entry=12435;
UPDATE creature_template SET ScriptName='boss_vaelastrasz' WHERE entry=13020;
UPDATE creature_template SET ScriptName='boss_broodlord' WHERE entry=12017;
UPDATE creature_template SET ScriptName='boss_firemaw' WHERE entry=11983;
UPDATE creature_template SET ScriptName='boss_ebonroc' WHERE entry=14601;
UPDATE creature_template SET ScriptName='boss_flamegor' WHERE entry=11981;
UPDATE creature_template SET ScriptName='boss_chromaggus' WHERE entry=14020;
UPDATE creature_template SET ScriptName='boss_victor_nefarius' WHERE entry=10162;
UPDATE creature_template SET ScriptName='boss_nefarian' WHERE entry=11583;

/* BLADE'S EDGE MOUNTAINS */
UPDATE creature_template SET ScriptName='mobs_bladespire_ogre' WHERE entry IN (19998,20334,21296,21975);
UPDATE creature_template SET ScriptName='mobs_nether_drake' WHERE entry IN (20021,21817,21820,21821,21823);
UPDATE creature_template SET ScriptName='npc_daranelle' WHERE entry=21469;
UPDATE creature_template SET ScriptName='npc_overseer_nuaar' WHERE entry=21981;
UPDATE creature_template SET ScriptName='npc_saikkal_the_elder' WHERE entry=22932;
UPDATE creature_template SET ScriptName='npc_skyguard_handler_deesak' WHERE entry=23415;

/* BLASTED LANDS */
UPDATE creature_template SET ScriptName='npc_deathly_usher' WHERE entry=8816;
UPDATE creature_template SET ScriptName='npc_fallen_hero_of_horde' WHERE entry=7572;

/* BLOODMYST ISLE */
UPDATE creature_template SET ScriptName='mob_webbed_creature' WHERE entry=17680;
UPDATE creature_template SET ScriptName='npc_captured_sunhawk_agent' WHERE entry=17824;

/* BOREAN TUNDRA */
UPDATE creature_template SET ScriptName='npc_fizzcrank_fullthrottle' WHERE entry=25590;
UPDATE creature_template SET ScriptName='npc_iruk' WHERE entry=26219;
UPDATE creature_template SET ScriptName='npc_kara_thricestar' WHERE entry=26602;
UPDATE creature_template SET ScriptName='npc_surristrasz' WHERE entry=24795;
UPDATE creature_template SET ScriptName='npc_tiare' WHERE entry=30051;
UPDATE creature_template SET ScriptName='npc_lurgglbr' WHERE entry=25208;

/* BURNING STEPPES */
UPDATE creature_template SET ScriptName='npc_ragged_john' WHERE entry=9563;

/*  */
/* CAVERNS OF TIME */
/*  */

/* MT. HYJAL */
UPDATE instance_template SET script='instance_hyjal' WHERE map=534;
UPDATE creature_template SET ScriptName='npc_tyrande_whisperwind' WHERE entry=17948;
UPDATE creature_template SET ScriptName='npc_thrall' WHERE entry=17852;
UPDATE creature_template SET ScriptName='npc_jaina_proudmoore' WHERE entry=17772;
UPDATE creature_template SET ScriptName='boss_archimonde' WHERE entry=17968;
UPDATE creature_template SET ScriptName='mob_doomfire' WHERE entry=18095;
UPDATE creature_template SET ScriptName='mob_doomfire_targetting' WHERE entry=18104;
UPDATE creature_template SET ScriptName='mob_ancient_wisp' WHERE entry=17946;

/* OLD HILLSBRAD */
UPDATE instance_template SET script='instance_old_hillsbrad' WHERE map=560;
UPDATE creature_template SET ScriptName='boss_lieutenant_drake' WHERE entry=17848;
UPDATE creature_template SET ScriptName='boss_epoch_hunter' WHERE entry=18096;
UPDATE creature_template SET ScriptName='boss_captain_skarloc' WHERE entry=17862;
UPDATE gameobject_template SET ScriptName='go_barrel_old_hillsbrad' WHERE entry=182589;
UPDATE creature_template SET ScriptName='npc_brazen' WHERE entry=18725;
UPDATE creature_template SET ScriptName='npc_erozion' WHERE entry=18723;
UPDATE creature_template SET ScriptName='npc_taretha' WHERE entry=18887;
UPDATE creature_template SET ScriptName='npc_thrall_old_hillsbrad' WHERE entry=17876;

/* THE CULLING OF STRATHOLME */
UPDATE instance_template SET script='instance_culling_of_stratholme' WHERE map=595;
UPDATE creature_template SET ScriptName='npc_chromie' WHERE entry IN (26527, 27915);
UPDATE creature_template SET ScriptName='spell_dummy_npc_crates_bunny' WHERE entry=30996;

/* THE DARK PORTAL */
UPDATE creature_template SET ScriptName='boss_chrono_lord_deja' WHERE entry=17879;
UPDATE creature_template SET ScriptName='boss_aeonus' WHERE entry=17881;
UPDATE creature_template SET ScriptName='boss_temporus' WHERE entry=17880;
UPDATE instance_template SET script='instance_dark_portal' WHERE map=269;
UPDATE creature_template SET ScriptName='npc_medivh_bm' WHERE entry=15608;
UPDATE creature_template SET ScriptName='npc_time_rift' WHERE entry=17838;
UPDATE creature_template SET ScriptName='npc_saat' WHERE entry=20201;

/*  */
/* COILFANG RESERVOIR */
/*  */

/* THE SLAVE PENS */

/* THE UNDERBOG */
UPDATE creature_template SET ScriptName='mob_underbog_mushroom' WHERE entry=17990;
UPDATE creature_template SET ScriptName='boss_hungarfen' WHERE entry=17770;

/* THE STEAMVAULT */
UPDATE instance_template SET script='instance_steam_vault' WHERE map=545;
UPDATE creature_template SET ScriptName='boss_hydromancer_thespia' WHERE entry=17797;
UPDATE creature_template SET ScriptName='boss_mekgineer_steamrigger' WHERE entry=17796;
UPDATE creature_template SET ScriptName='boss_warlord_kalithresh' WHERE entry=17798;
UPDATE gameobject_template SET ScriptName='go_main_chambers_access_panel' WHERE entry IN (184125,184126);
UPDATE creature_template SET ScriptName='mob_coilfang_waterelemental' WHERE entry=17917;
UPDATE creature_template SET ScriptName='mob_naga_distiller' WHERE entry=17954;
UPDATE creature_template SET ScriptName='mob_steamrigger_mechanic' WHERE entry=17951;

/* SERPENTSHRINE CAVERN */
UPDATE instance_template SET script='instance_serpent_shrine' WHERE map=548;
UPDATE creature_template SET ScriptName='boss_hydross_the_unstable' WHERE entry=21216;
/* Leotheras the Blind event */
UPDATE creature_template SET ScriptName='boss_leotheras_the_blind' WHERE entry=21215;
UPDATE creature_template SET ScriptName='boss_leotheras_the_blind_demonform' WHERE entry=21875;
/* Fathom-lord Karathress event */
UPDATE creature_template SET ScriptName='boss_fathomlord_karathress' WHERE entry=21214;
UPDATE creature_template SET ScriptName='boss_fathomguard_sharkkis' WHERE entry=21966;
UPDATE creature_template SET ScriptName='boss_fathomguard_tidalvess' WHERE entry=21965;
UPDATE creature_template SET ScriptName='boss_fathomguard_caribdis' WHERE entry=21964;
/* Morogrim Tidewalker event */
UPDATE creature_template SET ScriptName='boss_morogrim_tidewalker' WHERE entry=21213;
UPDATE creature_template SET ScriptName='mob_water_globule' WHERE entry=21913;
/* Lady Vashj event */
UPDATE creature_template SET ScriptName='boss_lady_vashj' WHERE entry=21212;
UPDATE creature_template SET ScriptName='mob_enchanted_elemental' WHERE entry=21958;
UPDATE creature_template SET ScriptName='mob_tainted_elemental' WHERE entry=22009;
UPDATE creature_template SET ScriptName='mob_coilfang_elite' WHERE entry=22055;
UPDATE creature_template SET ScriptName='mob_coilfang_strider' WHERE entry=22056;
UPDATE creature_template SET ScriptName='mob_toxic_sporebat' WHERE entry=22140;
UPDATE creature_template SET ScriptName='mob_shield_generator_channel' WHERE entry=19870;


/* CRYSTALSONG FOREST */

/*  */
/* CRUSADER COLISEUM */
/*  */

/* TRAIL OF THE CHAMPION */

/* TRIAL OF THE CRUSADER */
UPDATE instance_template SET script='instance_trial_of_the_crusader' WHERE map=649;
UPDATE creature_template SET ScriptName='boss_gormok' WHERE entry=34796;
UPDATE creature_template SET ScriptName='boss_acidmaw' WHERE entry=35144;
UPDATE creature_template SET ScriptName='boss_dreadscale' WHERE entry=34799;
UPDATE creature_template SET ScriptName='boss_icehowl' WHERE entry=34797;
UPDATE creature_template SET ScriptName='boss_jaraxxus' WHERE entry=34780;
UPDATE creature_template SET ScriptName='boss_anubarak_trial' WHERE entry=34564;
UPDATE creature_template SET ScriptName='boss_fjola' WHERE entry=34497;
UPDATE creature_template SET ScriptName='boss_eydis' WHERE entry=34496;

/* DALARAN */
UPDATE creature_template SET ScriptName='npc_dalaran_guardian_mage' WHERE entry IN (29255, 29254);
UPDATE creature_template SET ScriptName='npc_zidormi' WHERE entry=31848;

/* DARKSHORE */
UPDATE creature_template SET ScriptName='npc_kerlonian' WHERE entry=11218;
UPDATE creature_template SET ScriptName='npc_prospector_remtravel' WHERE entry=2917;
UPDATE creature_template SET ScriptName='npc_threshwackonator' WHERE entry=6669;

/* DARNASSUS */


/* DEADMINES */
UPDATE instance_template SET script='instance_deadmines' WHERE map=36;
UPDATE gameobject_template SET ScriptName='go_defias_cannon' WHERE entry=16398;
UPDATE gameobject_template SET ScriptName='go_door_lever_dm' WHERE entry=101833;

/* DEADWIND PASS */


/* DESOLACE */
UPDATE creature_template SET ScriptName='npc_aged_dying_ancient_kodo' WHERE entry IN (4700, 4701, 4702, 11627);

/* DIRE MAUL */


/* DRAGONBLIGHT */
UPDATE creature_template SET ScriptName='npc_afrasastrasz' WHERE entry=27575;
UPDATE creature_template SET ScriptName='npc_alexstrasza_wr_gate' WHERE entry=31333;
UPDATE creature_template SET ScriptName='npc_tariolstrasz' WHERE entry=26443;
UPDATE creature_template SET ScriptName='npc_torastrasza' WHERE entry=26949;

/* DRAK'THARON KEEP */
UPDATE creature_template SET ScriptName='boss_novos' WHERE entry=26631;
UPDATE creature_template SET ScriptName='boss_tharonja' WHERE entry=26632;
UPDATE creature_template SET ScriptName='boss_trollgore' WHERE entry=26630;

/* DUN MOROGH */
UPDATE creature_template SET ScriptName='npc_narm_faulk' WHERE entry=6177;


/* DUROTAR */


/* DUSKWOOD */


/* DUSTWALLOW MARSH */
UPDATE creature_template SET ScriptName='mobs_risen_husk_spirit' WHERE entry IN (23554,23555);
UPDATE creature_template SET ScriptName='npc_deserter_agitator' WHERE entry=23602;
UPDATE creature_template SET ScriptName='npc_lady_jaina_proudmoore' WHERE entry=4968;
UPDATE creature_template SET ScriptName='npc_ogron' WHERE entry=4983;
UPDATE creature_template SET ScriptName='npc_morokk' WHERE entry=4500;
UPDATE creature_template SET ScriptName='npc_nat_pagle' WHERE entry=12919;
UPDATE creature_template SET ScriptName='npc_cassa_crimsonwing' WHERE entry=23704;
UPDATE creature_template SET ScriptName='npc_restless_apparition' WHERE entry=23861;
UPDATE creature_template SET ScriptName='npc_private_hendel' WHERE entry=4966;

/* EASTERN PLAGUELANDS */
UPDATE creature_template SET ScriptName='mobs_ghoul_flayer' WHERE entry IN (8530,8531,8532);
UPDATE creature_template SET ScriptName='npc_augustus_the_touched' WHERE entry=12384;
UPDATE creature_template SET ScriptName='npc_darrowshire_spirit' WHERE entry=11064;
UPDATE creature_template SET ScriptName='npc_tirion_fordring' WHERE entry=1855;

/* EBON HOLD */
UPDATE creature_template SET ScriptName='npc_death_knight_initiate' WHERE entry=28406;
UPDATE creature_template SET ScriptName='npc_unworthy_initiate_anchor' WHERE entry=29521;
UPDATE creature_template SET ScriptName='npc_unworthy_initiate' WHERE entry IN (29519,29520,29565,29566,29567);
UPDATE gameobject_template SET ScriptName='go_acherus_soul_prison' WHERE entry IN (191577,191580,191581,191582,191583,191584,191585,191586,191587,191588,191589,191590);
UPDATE creature_template SET ScriptName='npc_a_special_surprise' WHERE entry IN (29032,29061,29065,29067,29068,29070,29074,29072,29073,29071);
UPDATE creature_template SET ScriptName='npc_koltira_deathweaver' WHERE entry=28912;

/* ELWYNN FOREST */
UPDATE creature_template SET ScriptName='npc_henze_faulk' WHERE entry=6172;

/* EVERSONG WOODS */
UPDATE creature_template SET ScriptName='npc_kelerun_bloodmourn' WHERE entry=17807;
UPDATE gameobject_template SET ScriptName='go_harbinger_second_trial' WHERE entry=182052;
UPDATE creature_template SET ScriptName='npc_prospector_anvilward' WHERE entry=15420;
UPDATE creature_template SET ScriptName='npc_apprentice_mirveda' WHERE entry=15402;

/* FELWOOD */
UPDATE creature_template SET ScriptName='npc_kitten' WHERE entry=9937;
UPDATE creature_template SET ScriptName='npc_corrupt_saber' WHERE entry=10042;
UPDATE creature_template SET ScriptName='npcs_riverbreeze_and_silversky' WHERE entry IN (9528,9529);
UPDATE creature_template SET ScriptName='npc_niby_the_almighty' WHERE entry=14469;

/* FERALAS */
UPDATE creature_template SET ScriptName='npc_gregan_brewspewer' WHERE entry=7775;
UPDATE creature_template SET ScriptName='npc_oox22fe' WHERE entry=7807;
UPDATE creature_template SET ScriptName='npc_screecher_spirit' WHERE entry=8612;

/* GHOSTLANDS */
UPDATE creature_template SET ScriptName='npc_blood_knight_dawnstar' WHERE entry=17832;
UPDATE creature_template SET ScriptName='npc_budd_nedreck' WHERE entry=23559;
UPDATE creature_template SET ScriptName='npc_ranger_lilatha' WHERE entry=16295;
UPDATE creature_template SET ScriptName='npc_rathis_tomber' WHERE entry=16224;

/* GNOMEREGAN */


/* GRIZZLY HILLS */


/* GRUUL'S LAIR */
UPDATE instance_template SET script='instance_gruuls_lair' WHERE map =565;
UPDATE creature_template SET ScriptName='boss_gruul' WHERE entry=19044;
/* Maulgar and Event */
UPDATE creature_template SET ScriptName='boss_high_king_maulgar' WHERE entry=18831;
UPDATE creature_template SET ScriptName='boss_kiggler_the_crazed' WHERE entry=18835;
UPDATE creature_template SET ScriptName='boss_blindeye_the_seer' WHERE entry=18836;
UPDATE creature_template SET ScriptName='boss_olm_the_summoner' WHERE entry=18834;
UPDATE creature_template SET ScriptName='boss_krosh_firehand' WHERE entry=18832;

/* GUNDRAK */
UPDATE creature_template SET ScriptName='boss_colossus' WHERE entry=29307;
UPDATE creature_template SET ScriptName='boss_galdarah' WHERE entry=29306;
UPDATE creature_template SET ScriptName='boss_moorabi' WHERE entry=29305;
UPDATE creature_template SET ScriptName='boss_sladran' WHERE entry=29304;
UPDATE creature_template SET ScriptName='mob_sladran_summon_target' WHERE entry=29682;
UPDATE gameobject_template SET ScriptName='go_gundrak_altar' WHERE entry IN (192518, 192519, 192520);
UPDATE instance_template SET script='instance_gundrak' WHERE map=604;

/*  */
/* HELLFIRE CITADEL */
/*  */

/* BLOOD FURNACE */
/* The Maker,Broggok,Kelidan,Broggok's cloud */
UPDATE creature_template SET ScriptName='boss_the_maker' WHERE entry=17381;
UPDATE creature_template SET ScriptName='boss_broggok' WHERE entry=17380;
UPDATE creature_template SET ScriptName='boss_kelidan_the_breaker' WHERE entry=17377;
UPDATE creature_template SET ScriptName='mob_broggok_poisoncloud' WHERE entry=17662;
UPDATE creature_template SET ScriptName='mob_shadowmoon_channeler' WHERE entry=17653;
UPDATE instance_template SET script='instance_blood_furnace' WHERE map=542;

/* HELLFIRE RAMPARTS */
/* Vazruden,Omor the Unscarred,Watchkeeper Gargolmar */
UPDATE creature_template SET ScriptName='boss_omor_the_unscarred' WHERE entry=17308;
UPDATE creature_template SET ScriptName='boss_watchkeeper_gargolmar' WHERE entry=17306;
UPDATE creature_template SET ScriptName='boss_vazruden_herald' WHERE entry=17307;
UPDATE creature_template SET ScriptName='boss_vazruden' WHERE entry=17537;
UPDATE instance_template SET script='instance_ramparts' WHERE map=543;

/* SHATTERED HALLS */
/* Nethekurse and his spawned shadowfissure */
UPDATE creature_template SET ScriptName='boss_grand_warlock_nethekurse' WHERE entry=16807;
UPDATE creature_template SET ScriptName='boss_warbringer_omrogg' WHERE entry=16809;
UPDATE creature_template SET ScriptName='mob_fel_orc_convert' WHERE entry=17083;
UPDATE creature_template SET ScriptName='mob_lesser_shadow_fissure' WHERE entry=17471;
UPDATE creature_template SET ScriptName='mob_omrogg_heads' WHERE entry IN (19523,19524);
UPDATE creature_template SET ScriptName='boss_warchief_kargath_bladefist' WHERE entry=16808;
UPDATE instance_template SET script='instance_shattered_halls' WHERE map=540;

/* MAGTHERIDON'S LAIR */
UPDATE instance_template SET script='instance_magtheridons_lair' WHERE map=544;
UPDATE gameobject_template SET ScriptName='go_manticron_cube' WHERE entry=181713;
UPDATE creature_template SET ScriptName='boss_magtheridon' WHERE entry=17257;
UPDATE creature_template SET ScriptName='mob_abyssal' WHERE entry=17454;
UPDATE creature_template SET ScriptName='mob_hellfire_channeler' WHERE entry=17256;

/* HELLFIRE PENINSULA */
UPDATE creature_template SET ScriptName='boss_doomlord_kazzak' WHERE entry=18728;
UPDATE creature_template SET ScriptName='npc_aeranas' WHERE entry=17085;
UPDATE gameobject_template SET ScriptName='go_haaleshi_altar' WHERE entry=181606;
UPDATE creature_template SET ScriptName='npc_ancestral_wolf' WHERE entry=17077;
UPDATE creature_template SET ScriptName='npc_demoniac_scryer' WHERE entry=22258;
UPDATE creature_template SET ScriptName='npc_gryphoneer_windbellow' WHERE entry=20235;
UPDATE creature_template SET ScriptName='npc_naladu' WHERE entry=19361;
UPDATE creature_template SET ScriptName='npc_tracy_proudwell' WHERE entry=18266;
UPDATE creature_template SET ScriptName='npc_trollbane' WHERE entry=16819;
UPDATE creature_template SET ScriptName='npc_wing_commander_brack' WHERE entry=19401;
UPDATE creature_template SET ScriptName='npc_wing_commander_dabiree' WHERE entry=19409;
UPDATE creature_template SET ScriptName='npc_wounded_blood_elf' WHERE entry=16993;

/* HILLSBRAD FOOTHILLS */


/* HINTERLANDS */
UPDATE creature_template SET ScriptName='npc_00x09hl' WHERE entry=7806;
UPDATE creature_template SET ScriptName='npc_rinji' WHERE entry=7780;

/* HOWLING FJORD */
UPDATE creature_template SET ScriptName='npc_deathstalker_razael' WHERE entry=23998;
UPDATE creature_template SET ScriptName='npc_dark_ranger_lyana' WHERE entry=23778;
UPDATE creature_template SET ScriptName='npc_mcgoyver' WHERE entry=24040;


/* ICECROWN */
UPDATE creature_template SET ScriptName='npc_arete' WHERE entry=29344;
UPDATE creature_template SET ScriptName='npc_dame_evniki_kapsalis' WHERE entry=34885;

/* IRONFORGE */
UPDATE creature_template SET ScriptName='npc_royal_historian_archesonus' WHERE entry=8879;

/* ISLE OF QUEL'DANAS */
UPDATE creature_template SET ScriptName='npc_converted_sentry' WHERE entry=24981;

/* KARAZHAN */
UPDATE instance_template SET script='instance_karazhan' WHERE map=532;
UPDATE creature_template SET ScriptName='boss_midnight' WHERE entry=16151;
UPDATE creature_template SET ScriptName='boss_attumen' WHERE entry=15550;
UPDATE creature_template SET ScriptName='boss_moroes' WHERE entry=15687;
UPDATE creature_template SET ScriptName='boss_maiden_of_virtue' WHERE entry=16457;
UPDATE creature_template SET ScriptName='boss_curator' WHERE entry=15691;
UPDATE creature_template SET ScriptName='boss_julianne' WHERE entry=17534;
UPDATE creature_template SET ScriptName='boss_romulo' WHERE entry=17533;
UPDATE creature_template SET ScriptName='boss_dorothee' WHERE entry=17535;
UPDATE creature_template SET ScriptName='boss_strawman' WHERE entry=17543;
UPDATE creature_template SET ScriptName='boss_tinhead' WHERE entry=17547;
UPDATE creature_template SET ScriptName='mob_tito' WHERE entry=17548;
UPDATE creature_template SET ScriptName='boss_roar' WHERE entry=17546;
UPDATE creature_template SET ScriptName='boss_crone' WHERE entry=18168;
UPDATE creature_template SET ScriptName='boss_terestian_illhoof' WHERE entry=15688;
UPDATE creature_template SET ScriptName='boss_shade_of_aran' WHERE entry=16524;
UPDATE creature_template SET ScriptName='boss_netherspite' WHERE entry=15689;
UPDATE creature_template SET ScriptName='boss_malchezaar' WHERE entry=15690;
-- UPDATE creature_template SET ScriptName='boss_nightbane' WHERE entry=17225;
UPDATE creature_template SET ScriptName='boss_baroness_dorothea_millstipe' WHERE entry=19875;
UPDATE creature_template SET ScriptName='boss_baron_rafe_dreuger' WHERE entry=19874;
UPDATE creature_template SET ScriptName='boss_lady_catriona_von_indi' WHERE entry=19872;
UPDATE creature_template SET ScriptName='boss_lady_keira_berrybuck' WHERE entry=17007;
UPDATE creature_template SET ScriptName='boss_lord_robin_daris' WHERE entry=19876;
UPDATE creature_template SET ScriptName='boss_lord_crispin_ference' WHERE entry=19873;
UPDATE creature_template SET ScriptName='boss_bigbadwolf' WHERE entry=17521;
UPDATE creature_template SET ScriptName='mob_shadow_of_aran' WHERE entry=18254;
UPDATE creature_template SET ScriptName='mob_aran_elemental' WHERE entry=17167;
UPDATE creature_template SET ScriptName='mob_demon_chain' WHERE entry=17248;
UPDATE creature_template SET ScriptName='npc_fiendish_portal' WHERE entry=17265;
UPDATE creature_template SET ScriptName='mob_cyclone' WHERE entry=18412;
UPDATE creature_template SET ScriptName='netherspite_infernal' WHERE entry=17646;
UPDATE creature_template SET ScriptName='npc_berthold' WHERE entry=16153;
UPDATE creature_template SET ScriptName='npc_barnes' WHERE entry=16812;
UPDATE creature_template SET ScriptName='npc_grandmother' WHERE entry=17603;

/* LOCH MODAN */
UPDATE creature_template SET ScriptName='npc_mountaineer_pebblebitty' WHERE entry=3836;
UPDATE creature_template SET ScriptName='npc_miran' WHERE entry=1379;

/* MAGISTER'S TERRACE */
UPDATE instance_template SET script='instance_magisters_terrace' WHERE map=585;
UPDATE creature_template SET ScriptName='boss_selin_fireheart' WHERE entry=24723;
UPDATE creature_template SET ScriptName='mob_fel_crystal' WHERE entry=24722;
UPDATE creature_template SET ScriptName='boss_vexallus' WHERE entry=24744;
UPDATE creature_template SET ScriptName='mob_pure_energy' WHERE entry=24745;
UPDATE creature_template SET ScriptName='boss_priestess_delrissa' WHERE entry=24560;
UPDATE creature_template SET ScriptName='boss_kagani_nightstrike' WHERE entry=24557;
UPDATE creature_template SET ScriptName='boss_ellris_duskhallow' WHERE entry=24558;
UPDATE creature_template SET ScriptName='boss_eramas_brightblaze' WHERE entry=24554;
UPDATE creature_template SET ScriptName='boss_yazzai' WHERE entry=24561;
UPDATE creature_template SET ScriptName='boss_warlord_salaris' WHERE entry=24559;
UPDATE creature_template SET ScriptName='boss_garaxxas' WHERE entry=24555;
-- UPDATE creature_template SET ScriptName='mob_sliver' WHERE entry=24552;
UPDATE creature_template SET ScriptName='boss_apoko' WHERE entry=24553;
UPDATE creature_template SET ScriptName='boss_zelfan' WHERE entry=24556;
UPDATE creature_template SET ScriptName='boss_felblood_kaelthas' WHERE entry=24664;
UPDATE creature_template SET ScriptName='mob_arcane_sphere' WHERE entry=24708;
UPDATE creature_template SET ScriptName='mob_felkael_phoenix' WHERE entry=24674;
UPDATE creature_template SET ScriptName='mob_felkael_phoenix_egg' WHERE entry=24675;
UPDATE creature_template SET ScriptName='npc_kalecgos' WHERE entry IN (24844, 24848);

/* MARAUDON */
UPDATE creature_template SET ScriptName='boss_princess_theradras' WHERE entry=12201;
UPDATE creature_template SET ScriptName='boss_noxxion' WHERE entry=13282;
UPDATE creature_template SET ScriptName='boss_landslide' WHERE entry=12203;
UPDATE creature_template SET ScriptName='celebras_the_cursed' WHERE entry=12225;

/* MOLTEN CORE */
UPDATE instance_template SET script='instance_molten_core' WHERE map=409;
UPDATE creature_template SET ScriptName='boss_lucifron' WHERE entry=12118;
UPDATE creature_template SET ScriptName='boss_magmadar' WHERE entry=11982;
UPDATE creature_template SET ScriptName='boss_gehennas' WHERE entry=12259;
UPDATE creature_template SET ScriptName='boss_garr' WHERE entry=12057;
UPDATE creature_template SET ScriptName='boss_baron_geddon' WHERE entry=12056;
UPDATE creature_template SET ScriptName='boss_shazzrah' WHERE entry=12264;
UPDATE creature_template SET ScriptName='boss_golemagg' WHERE entry=11988;
UPDATE creature_template SET ScriptName='boss_sulfuron' WHERE entry=12098;
UPDATE creature_template SET ScriptName='boss_majordomo' WHERE entry=12018;
UPDATE creature_template SET ScriptName='boss_ragnaros' WHERE entry=11502;
UPDATE creature_template SET ScriptName='mob_ancient_core_hound' WHERE entry=11673;
UPDATE creature_template SET ScriptName='mob_firesworn' WHERE entry=12099;
UPDATE creature_template SET ScriptName='mob_core_rager' WHERE entry=11672;
UPDATE creature_template SET ScriptName='mob_flamewaker_priest' WHERE entry=11662;

/* MOONGLADE */
UPDATE creature_template SET ScriptName='npc_bunthen_plainswind' WHERE entry=11798;
UPDATE creature_template SET ScriptName='npc_clintar_dw_spirit' WHERE entry=22916;
UPDATE creature_template SET ScriptName='npc_great_bear_spirit' WHERE entry=11956;
UPDATE creature_template SET ScriptName='npc_silva_filnaveth' WHERE entry=11800;

/* MULGORE */
UPDATE creature_template SET ScriptName='npc_kyle_the_frenzied' WHERE entry=23616;
UPDATE creature_template SET ScriptName='npc_skorn_whitecloud' WHERE entry=3052;

/* NAGRAND */
UPDATE creature_template SET ScriptName='mob_lump' WHERE entry=18351;
UPDATE creature_template SET ScriptName='mob_shattered_rumbler' WHERE entry=17157;
UPDATE creature_template SET ScriptName='mob_sunspring_villager' WHERE entry=18240;
UPDATE creature_template SET ScriptName='npc_altruis_the_sufferer' WHERE entry=18417;
UPDATE creature_template SET ScriptName='npc_greatmother_geyah' WHERE entry=18141;
UPDATE creature_template SET ScriptName='npc_lantresor_of_the_blade' WHERE entry=18261;
UPDATE creature_template SET ScriptName='npc_maghar_captive' WHERE entry=18210;
UPDATE creature_template SET ScriptName='npc_creditmarker_visit_with_ancestors' WHERE entry IN (18840,18841,18842,18843);

/* NAXXRAMAS */
UPDATE instance_template SET script='instance_naxxramas' WHERE map=533;
UPDATE creature_template SET ScriptName='boss_anubrekhan' WHERE entry=15956;
UPDATE creature_template SET ScriptName='boss_faerlina' WHERE entry=15953;
UPDATE creature_template SET ScriptName='boss_maexxna' WHERE entry=15952;
UPDATE creature_template SET ScriptName='npc_web_wrap' WHERE entry=16486;
UPDATE creature_template SET ScriptName='boss_noth' WHERE entry=15954;
UPDATE creature_template SET ScriptName='boss_heigan' WHERE entry=15936;
UPDATE creature_template SET ScriptName='boss_loatheb' WHERE entry=16011;
UPDATE creature_template SET ScriptName='boss_razuvious' WHERE entry=16061;
UPDATE creature_template SET ScriptName='boss_gothik' WHERE entry=16060;
UPDATE creature_template SET ScriptName='spell_anchor' WHERE entry=16137;
UPDATE creature_template SET ScriptName='boss_thane_korthazz' WHERE entry=16064;
UPDATE creature_template SET ScriptName='boss_sir_zeliek' WHERE entry=16063;
UPDATE creature_template SET ScriptName='boss_lady_blaumeux' WHERE entry=16065;
UPDATE creature_template SET ScriptName='boss_rivendare_naxx' WHERE entry=30549;
UPDATE creature_template SET ScriptName='boss_patchwerk' WHERE entry=16028;
-- UPDATE creature_template SET ScriptName='boss_grobbulus' WHERE entry=15931;
UPDATE creature_template SET ScriptName='boss_gluth' WHERE entry=15932;
-- UPDATE creature_template SET ScriptName='boss_thaddius' WHERE entry=15928;
-- UPDATE creature_template SET ScriptName='boss_stalagg' WHERE entry=15929;
-- UPDATE creature_template SET ScriptName='boss_feugen' WHERE entry=15930;
UPDATE creature_template SET ScriptName='boss_sapphiron' WHERE entry=15989;
UPDATE creature_template SET ScriptName='boss_kelthuzad' WHERE entry=15990;

/* NETHERSTORM */
DELETE FROM areatrigger_scripts WHERE entry=4497;
REPLACE INTO areatrigger_scripts VALUES (4497,'at_commander_dawnforge');
UPDATE gameobject_template SET ScriptName='go_manaforge_control_console' WHERE entry IN (183770,183956,184311,184312);
UPDATE creature_template SET ScriptName='npc_manaforge_control_console' WHERE entry IN (20209,20417,20418,20440);
UPDATE creature_template SET ScriptName='npc_commander_dawnforge' WHERE entry=19831;
UPDATE creature_template SET ScriptName='npc_protectorate_nether_drake' WHERE entry=20903;
UPDATE creature_template SET ScriptName='npc_veronia' WHERE entry=20162;
UPDATE creature_template SET ScriptName='npc_bessy' WHERE entry=20415;

/*  */
/* THE NEXUS */
/*  */

/* EYE OF ETERNITY */

/* NEXUS */
UPDATE creature_template SET ScriptName='boss_anomalus' WHERE entry=26763;
UPDATE creature_template SET ScriptName='mob_chaotic_rift' WHERE entry=26918;
UPDATE creature_template SET ScriptName='boss_keristrasza' WHERE entry=26723;
UPDATE creature_template SET ScriptName='boss_ormorok' WHERE entry=26794;
UPDATE creature_template SET ScriptName='boss_telestra' WHERE entry=26731;
UPDATE gameobject_template SET ScriptName='go_containment_sphere' WHERE entry IN (188526, 188527, 188528);
UPDATE instance_template SET script='instance_nexus' WHERE map=576;

/* OCULUS */


/* OBSIDIAN SANCTUM */
UPDATE instance_template SET script='instance_obsidian_sanctum' WHERE map=615;
UPDATE creature_template SET ScriptName='boss_sartharion' WHERE entry=28860;
UPDATE creature_template SET ScriptName='mob_vesperon' WHERE entry=30449;
UPDATE creature_template SET ScriptName='mob_shadron' WHERE entry=30451;
UPDATE creature_template SET ScriptName='mob_tenebron' WHERE entry=30452;
UPDATE creature_template SET ScriptName='mob_twilight_eggs' WHERE entry=30882;
UPDATE creature_template SET ScriptName='mob_twilight_whelp' WHERE entry IN (30890, 31214);
UPDATE creature_template SET ScriptName='mob_acolyte_of_shadron' WHERE entry=31218;
UPDATE creature_template SET ScriptName='mob_acolyte_of_vesperon' WHERE entry=31219;

/* ONYXIA'S LAIR */
UPDATE creature_template SET ScriptName='boss_onyxia' WHERE entry=10184;

/* ORGRIMMAR */
UPDATE creature_template SET ScriptName='npc_neeru_fireblade' WHERE entry=3216;
UPDATE creature_template SET ScriptName='npc_shenthul' WHERE entry=3401;
UPDATE creature_template SET ScriptName='npc_thrall_warchief' WHERE entry=4949;

/* RAGEFIRE CHASM */


/* RAZORFEN DOWNS */
UPDATE creature_template SET ScriptName='boss_amnennar_the_coldbringer' WHERE entry=7358;
UPDATE creature_template SET ScriptName='npc_henry_stern' WHERE entry=8696;

/* RAZORFEN KRAUL */
UPDATE instance_template SET script='instance_razorfen_kraul' WHERE map=47;

/* REDRIDGE MOUNTAINS */
UPDATE creature_template SET ScriptName='npc_corporal_keeshan' WHERE entry=349;

/* RUINS OF AHN'QIRAJ */
UPDATE instance_template SET script='instance_ruins_of_ahnqiraj' WHERE map=509;
UPDATE creature_template SET ScriptName='mob_anubisath_guardian' WHERE entry=15355;
UPDATE creature_template SET ScriptName='boss_kurinnaxx' WHERE entry=15348;
UPDATE creature_template SET ScriptName='boss_ayamiss' WHERE entry=15369;
UPDATE creature_template SET ScriptName='boss_moam' WHERE entry=15340;

/* SCARLET MONASTERY */
UPDATE instance_template SET script='instance_scarlet_monastery' WHERE map=189;
UPDATE creature_template SET ScriptName='boss_arcanist_doan' WHERE entry=6487;
UPDATE creature_template SET ScriptName='boss_azshir_the_sleepless' WHERE entry=6490;
UPDATE creature_template SET ScriptName='boss_bloodmage_thalnos' WHERE entry=4543;
UPDATE creature_template SET ScriptName='boss_herod' WHERE entry=3975;
UPDATE creature_template SET ScriptName='boss_high_inquisitor_fairbanks' WHERE entry=4542;
UPDATE creature_template SET ScriptName='boss_high_inquisitor_whitemane' WHERE entry=3977;
UPDATE creature_template SET ScriptName='boss_houndmaster_loksey' WHERE entry=3974;
UPDATE creature_template SET ScriptName='boss_interrogator_vishas' WHERE entry=3983;
UPDATE creature_template SET ScriptName='boss_scarlet_commander_mograine' WHERE entry=3976;
UPDATE creature_template SET ScriptName='boss_scorn' WHERE entry=14693;
UPDATE creature_template SET ScriptName='mob_scarlet_trainee' WHERE entry=6575;
UPDATE creature_template SET ScriptName='boss_headless_horseman' WHERE entry=23682;

/* SCHOLOMANCE */
UPDATE instance_template SET script='instance_scholomance' WHERE map=289;
UPDATE creature_template SET ScriptName='boss_darkmaster_gandling' WHERE entry=1853;
UPDATE creature_template SET ScriptName='boss_death_knight_darkreaver' WHERE entry=14516;
UPDATE creature_template SET ScriptName='boss_lord_alexei_barov' WHERE entry=10504;
UPDATE creature_template SET ScriptName='boss_instructor_malicia' WHERE entry=10505;
UPDATE creature_template SET ScriptName='boss_boss_ras_frostwhisper' WHERE entry=10508;
UPDATE creature_template SET ScriptName='boss_the_ravenian' WHERE entry=10507;
UPDATE creature_template SET ScriptName='boss_vectus' WHERE entry=10432;
UPDATE creature_template SET ScriptName='boss_illucia_barov' WHERE entry=10502;
UPDATE creature_template SET ScriptName='boss_doctor_theolen_krastinov' WHERE entry=11261;
UPDATE creature_template SET ScriptName='boss_jandice_barov' WHERE entry=10503;
UPDATE creature_template SET ScriptName='boss_lorekeeper_polkelt' WHERE entry=10901;
UPDATE creature_template SET ScriptName='boss_kormok' WHERE entry=16118;
UPDATE creature_template SET ScriptName='mob_illusionofjandicebarov' WHERE entry=11439;

/* SEARING GORGE */
UPDATE creature_template SET ScriptName='npc_kalaran_windblade' WHERE entry=8479;
UPDATE creature_template SET ScriptName='npc_lothos_riftwaker' WHERE entry=14387;
UPDATE creature_template SET ScriptName='npc_zamael_lunthistle' WHERE entry=8436;

/* SHADOWFANG KEEP */
UPDATE instance_template SET script='instance_shadowfang_keep' WHERE map=33;
UPDATE creature_template SET ScriptName='npc_shadowfang_prisoner' WHERE entry IN (3849,3850);
UPDATE creature_template SET ScriptName='npc_arugal' WHERE entry=10000;
UPDATE creature_template SET ScriptName='npc_deathstalker_vincent' WHERE entry=4444;
UPDATE creature_template SET ScriptName='mob_arugal_voidwalker' WHERE entry=4627;
UPDATE creature_template SET ScriptName='boss_arugal' WHERE entry=4275;

/* SHADOWMOON VALLEY */
UPDATE creature_template SET ScriptName='boss_doomwalker' WHERE entry=17711;
UPDATE creature_template SET ScriptName='npc_drake_dealer_hurlunk' WHERE entry=23489;
UPDATE creature_template SET ScriptName='npcs_flanis_swiftwing_and_kagrosh' WHERE entry IN (21725,21727);
UPDATE creature_template SET ScriptName='npc_murkblood_overseer' WHERE entry=23309;
UPDATE creature_template SET ScriptName='npc_neltharaku' WHERE entry=21657;
UPDATE creature_template SET ScriptName='npc_oronok_tornheart' WHERE entry=21183;
UPDATE creature_template SET ScriptName='mob_mature_netherwing_drake' WHERE entry=21648;
UPDATE creature_template SET ScriptName='mob_enslaved_netherwing_drake' WHERE entry=21722;
UPDATE creature_template SET ScriptName='npc_karynaku' WHERE entry=22112;
UPDATE creature_template SET ScriptName='npc_wilda' WHERE entry=21027;
UPDATE creature_template SET ScriptName='mob_torloth' WHERE entry=22076;
UPDATE creature_template SET ScriptName='npc_lord_illidan_stormrage' WHERE entry=22083;
UPDATE gameobject_template SET ScriptName='go_crystal_prison' WHERE entry=185126;

/* SHATTRATH */
UPDATE creature_template SET ScriptName='npc_dirty_larry' WHERE entry=19720;
UPDATE creature_template SET ScriptName='npc_ishanah' WHERE entry=18538;
UPDATE creature_template SET ScriptName='npc_khadgar' WHERE entry=18166;
UPDATE creature_template SET ScriptName='npc_khadgars_servant' WHERE entry=19685;
UPDATE creature_template SET ScriptName='npc_raliq_the_drunk' WHERE entry=18585;
UPDATE creature_template SET ScriptName='npc_salsalabim' WHERE entry=18584;
UPDATE creature_template SET ScriptName='npc_shattrathflaskvendors' WHERE entry IN (23483,23484);
UPDATE creature_template SET ScriptName='npc_zephyr' WHERE entry=25967;

/* SHOLAZAR BASIN */
UPDATE creature_template SET ScriptName='npc_vekjik' WHERE entry=28315;

/* SILITHUS */
UPDATE creature_template SET ScriptName='npc_highlord_demitrian' WHERE entry=14347;
UPDATE creature_template SET ScriptName='npcs_rutgar_and_frankal' WHERE entry IN (15170,15171);

/* SILVERMOON */
UPDATE creature_template SET ScriptName='npc_blood_knight_stillblade' WHERE entry=17768;

/* SILVERPINE FOREST */
UPDATE creature_template SET ScriptName='npc_astor_hadren' WHERE entry=6497;
UPDATE creature_template SET ScriptName='npc_deathstalker_erland' WHERE entry=1978;
UPDATE creature_template SET ScriptName='npc_deathstalker_faerleia' WHERE entry=2058;

/* STOCKADES */

/* STONETALON MOUNTAINS */
UPDATE creature_template SET ScriptName='npc_braug_dimspirit' WHERE entry=4489;
UPDATE creature_template SET ScriptName='npc_kaya' WHERE entry=11856;

/* STORM PEAKS */
UPDATE creature_template SET ScriptName='npc_loklira_the_crone' WHERE entry=29975;
UPDATE creature_template SET ScriptName='npc_thorim' WHERE entry=29445;
UPDATE creature_template SET ScriptName='npc_roxi_ramrocket' WHERE entry=31247;
UPDATE creature_template SET ScriptName = 'npc_frostborn_scout' WHERE entry = 29811;

/* STORMWIND CITY */
UPDATE creature_template SET ScriptName='npc_archmage_malin' WHERE entry=2708;
UPDATE creature_template SET ScriptName='npc_bartleby' WHERE entry=6090;
UPDATE creature_template SET ScriptName='npc_dashel_stonefist' WHERE entry=4961;
UPDATE creature_template SET ScriptName='npc_lady_katrana_prestor' WHERE entry=1749;

/* STRANGLETHORN VALE */
UPDATE creature_template SET ScriptName='mob_yenniku' WHERE entry=2530;

/* STRATHOLME */
UPDATE instance_template SET script='instance_stratholme' WHERE map=329;
UPDATE creature_template SET ScriptName='boss_dathrohan_balnazzar' WHERE entry=10812;
UPDATE creature_template SET ScriptName='boss_magistrate_barthilas' WHERE entry=10435;
UPDATE creature_template SET ScriptName='boss_maleki_the_pallid' WHERE entry=10438;
UPDATE creature_template SET ScriptName='boss_nerubenkan' WHERE entry=10437;
UPDATE creature_template SET ScriptName='boss_cannon_master_willey' WHERE entry=10997;
UPDATE creature_template SET ScriptName='boss_baroness_anastari' WHERE entry=10436;
UPDATE creature_template SET ScriptName='boss_ramstein_the_gorger' WHERE entry=10439;
UPDATE creature_template SET ScriptName='boss_timmy_the_cruel' WHERE entry=10808;
UPDATE creature_template SET ScriptName='boss_silver_hand_bosses' WHERE entry IN (17910,17911,17912,17913,17914);
UPDATE creature_template SET ScriptName='boss_postmaster_malown' WHERE entry=11143;
UPDATE creature_template SET ScriptName='boss_baron_rivendare' WHERE entry=10440;
UPDATE creature_template SET ScriptName='mobs_spectral_ghostly_citizen' WHERE entry IN (10384,10385);
UPDATE creature_template SET ScriptName='mob_restless_soul' WHERE entry=11122;
UPDATE creature_template SET ScriptName='mob_freed_soul' WHERE entry=11136;
UPDATE gameobject_template SET ScriptName='go_gauntlet_gate' WHERE entry=175357;

/* SUNKEN TEMPLE */
UPDATE instance_template SET script='instance_sunken_temple' WHERE map=109;
DELETE FROM areatrigger_scripts WHERE entry=4016;
REPLACE INTO areatrigger_scripts VALUES (4016,'at_shade_of_eranikus');
UPDATE creature_template SET ScriptName='npc_malfurion_stormrage' WHERE entry=15362;

/* SUNWELL PLATEAU */
UPDATE instance_template SET script='instance_sunwell_plateau' WHERE map=580;
UPDATE creature_template SET ScriptName='boss_brutallus' WHERE entry=24882;
UPDATE creature_template SET ScriptName='boss_kalecgos' WHERE entry=24850;
UPDATE creature_template SET ScriptName='boss_kalecgos_humanoid' WHERE entry=24891;
UPDATE creature_template SET ScriptName='boss_sathrovarr' WHERE entry=24892;
UPDATE gameobject_template SET ScriptName='go_spectral_rift' WHERE entry=187055;
DELETE FROM areatrigger_scripts WHERE entry=4853;
REPLACE INTO areatrigger_scripts VALUES (4853,'at_madrigosa');

/* SWAMP OF SORROWS */
UPDATE creature_template SET ScriptName='npc_galen_goodward' WHERE entry=5391;

/* TANARIS */
UPDATE creature_template SET ScriptName='mob_aquementas' WHERE entry=9453;
UPDATE creature_template SET ScriptName='npc_custodian_of_time' WHERE entry=20129;
UPDATE creature_template SET ScriptName='npc_marin_noggenfogger' WHERE entry=7564;
UPDATE creature_template SET ScriptName='npc_oox17tn' WHERE entry=7784;
UPDATE creature_template SET ScriptName='npc_steward_of_time' WHERE entry=20142;
UPDATE creature_template SET ScriptName='npc_stone_watcher_of_norgannon' WHERE entry=7918;
UPDATE creature_template SET ScriptName='npc_tooga' WHERE entry=5955;

/* TELDRASSIL */
UPDATE creature_template SET ScriptName='npc_mist' WHERE entry=3568;

/*  */
/* TEMPEST KEEP */
/*  */

/* THE MECHANAR */
UPDATE creature_template SET ScriptName='boss_gatewatcher_iron_hand' WHERE entry=19710;
UPDATE creature_template SET ScriptName='boss_nethermancer_sepethrea' WHERE entry=19221;
UPDATE creature_template SET ScriptName='mob_ragin_flames' WHERE entry=20481;
UPDATE creature_template SET ScriptName='boss_pathaleon_the_calculator' WHERE entry=19220;
UPDATE creature_template SET ScriptName='mob_nether_wraith' WHERE entry=21062;
UPDATE instance_template SET script='instance_mechanar' WHERE map=554;

/* THE BOTANICA */
UPDATE creature_template SET ScriptName='boss_high_botanist_freywinn' WHERE entry=17975;
UPDATE creature_template SET ScriptName='boss_laj' WHERE entry=17980;
UPDATE creature_template SET ScriptName='boss_warp_splinter' WHERE entry=17977;
UPDATE creature_template SET ScriptName='mob_warp_splinter_treant' WHERE entry=19949;

/* THE ARCATRAZ */
UPDATE instance_template SET script='instance_arcatraz' WHERE map=552;
UPDATE creature_template SET ScriptName='mob_zerekethvoidzone' WHERE entry=21101;
UPDATE creature_template SET ScriptName='boss_harbinger_skyriss' WHERE entry=20912;
UPDATE creature_template SET ScriptName='boss_harbinger_skyriss_illusion' WHERE entry IN (21466,21467);
UPDATE creature_template SET ScriptName='npc_warden_mellichar' WHERE entry=20904;
UPDATE creature_template SET ScriptName='npc_millhouse_manastorm' WHERE entry=20977;

/* THE EYE */
UPDATE instance_template SET script='instance_the_eye' WHERE map=550;
/* The Eye Trash Mobs */
UPDATE creature_template SET ScriptName='mob_crystalcore_devastator' WHERE entry=20040;
/* Void Reaver event */
UPDATE creature_template SET ScriptName='boss_void_reaver' WHERE entry=19516;
/* Astromancer event */
UPDATE creature_template SET ScriptName='boss_high_astromancer_solarian' WHERE entry=18805;
UPDATE creature_template SET ScriptName='mob_solarium_priest' WHERE entry=18806;
/* Kael'thas event */
UPDATE creature_template SET ScriptName='boss_kaelthas' WHERE entry=19622;
UPDATE creature_template SET ScriptName='boss_thaladred_the_darkener' WHERE entry=20064;
UPDATE creature_template SET ScriptName='boss_lord_sanguinar' WHERE entry=20060;
UPDATE creature_template SET ScriptName='boss_grand_astromancer_capernian' WHERE entry=20062;
UPDATE creature_template SET ScriptName='boss_master_engineer_telonicus' WHERE entry=20063;
UPDATE creature_template SET ScriptName='mob_phoenix_tk' WHERE entry=21362;
UPDATE creature_template SET ScriptName='mob_phoenix_egg_tk' WHERE entry=21364;

/* TEMPLE OF AHN'QIRAJ */
UPDATE instance_template SET script='instance_temple_of_ahnqiraj' WHERE map=531;
UPDATE creature_template SET ScriptName='boss_cthun' WHERE entry=15727;
UPDATE creature_template SET ScriptName='boss_skeram' WHERE entry=15263;
UPDATE creature_template SET ScriptName='boss_vem' WHERE entry=15544;
UPDATE creature_template SET ScriptName='boss_yauj' WHERE entry=15543;
UPDATE creature_template SET ScriptName='boss_kri' WHERE entry=15511;
UPDATE creature_template SET ScriptName='boss_sartura' WHERE entry=15516;
UPDATE creature_template SET ScriptName='boss_fankriss' WHERE entry=15510;
-- UPDATE creature_template SET ScriptName='boss_viscidus' WHERE entry=15299;
-- UPDATE creature_template SET ScriptName='boss_glob_of_viscidus' WHERE entry=15667;
UPDATE creature_template SET ScriptName='boss_huhuran' WHERE entry=15509;
UPDATE creature_template SET ScriptName='boss_veklor' WHERE entry=15276;
UPDATE creature_template SET ScriptName='boss_veknilash' WHERE entry=15275;
UPDATE creature_template SET ScriptName='boss_ouro' WHERE entry=15517;
UPDATE creature_template SET ScriptName='boss_eye_of_cthun' WHERE entry=15589;
UPDATE creature_template SET ScriptName='mob_sartura_royal_guard' WHERE entry=15984;
UPDATE creature_template SET ScriptName='mob_claw_tentacle' WHERE entry=15725;
UPDATE creature_template SET ScriptName='mob_eye_tentacle' WHERE entry=15726;
UPDATE creature_template SET ScriptName='mob_giant_claw_tentacle' WHERE entry=15728;
UPDATE creature_template SET ScriptName='mob_giant_eye_tentacle' WHERE entry=15334;
UPDATE creature_template SET ScriptName='mob_giant_flesh_tentacle' WHERE entry=15802;
UPDATE creature_template SET ScriptName='mob_anubisath_sentinel' WHERE entry=15264;

/* TEROKKAR FOREST */
UPDATE creature_template SET ScriptName='mob_infested_root_walker' WHERE entry=22095;
UPDATE creature_template SET ScriptName='mob_netherweb_victim' WHERE entry=22355;
UPDATE creature_template SET ScriptName='mob_rotting_forest_rager' WHERE entry=22307;
UPDATE creature_template SET ScriptName='mob_unkor_the_ruthless' WHERE entry=18262;
UPDATE creature_template SET ScriptName='npc_akuno' WHERE entry=22377;
UPDATE creature_template SET ScriptName='npc_floon' WHERE entry=18588;
UPDATE creature_template SET ScriptName='npc_letoll' WHERE entry=22458;
UPDATE creature_template SET ScriptName='npc_mana_bomb_exp_trigger' WHERE entry=20767;
UPDATE gameobject_template SET ScriptName='go_mana_bomb' WHERE entry=184725;
UPDATE creature_template SET ScriptName='npc_skyguard_handler_irena' WHERE entry=23413;
UPDATE creature_template SET ScriptName='npc_slim' WHERE entry=19679;

/* THOUSAND NEEDLES */
UPDATE creature_template SET ScriptName='npc_kanati' WHERE entry=10638;
UPDATE creature_template SET ScriptName='npc_plucky_johnson' WHERE entry=6626;
UPDATE creature_template SET ScriptName='npc_paoka_swiftmountain' WHERE entry=10427;
UPDATE creature_template SET ScriptName='npc_lakota_windsong' WHERE entry=10646;

/* THUNDER BLUFF */
UPDATE creature_template SET ScriptName='npc_cairne_bloodhoof' WHERE entry=3057;

/* TIRISFAL GLADES */
UPDATE gameobject_template SET ScriptName='go_mausoleum_trigger' WHERE entry=104593;
UPDATE gameobject_template SET ScriptName='go_mausoleum_door' WHERE entry=176594;
UPDATE creature_template SET ScriptName='npc_calvin_montague' WHERE entry=6784;

/* ULDAMAN */
UPDATE creature_template SET ScriptName='boss_ironaya' WHERE entry=7228;
UPDATE creature_template SET ScriptName='mob_jadespine_basilisk' WHERE entry=4863;
UPDATE creature_template SET ScriptName='npc_lore_keeper_of_norgannon' WHERE entry=7172;
UPDATE gameobject_template SET ScriptName='go_altar_of_keepers' WHERE entry=130511;
UPDATE instance_template SET script='instance_uldaman' WHERE map=70;

/*  */
/* ULDUAR */
/*  */

/* HALLS OF LIGHTNING */
UPDATE instance_template SET script='instance_halls_of_lightning' WHERE map=602;
UPDATE creature_template SET ScriptName='boss_bjarngrim' WHERE entry=28586;
UPDATE creature_template SET ScriptName='mob_stormforged_lieutenant' WHERE entry=29240;
UPDATE creature_template SET ScriptName='boss_volkhan' WHERE entry=28587;
UPDATE creature_template SET ScriptName='mob_molten_golem' WHERE entry=28695;
UPDATE creature_template SET ScriptName='npc_volkhan_anvil' WHERE entry=28823;
UPDATE creature_template SET ScriptName='boss_ionar' WHERE entry=28546;
UPDATE creature_template SET ScriptName='mob_spark_of_ionar' WHERE entry=28926;
UPDATE creature_template SET ScriptName='boss_loken' WHERE entry=28923;

/* HALLS OF STONE */
UPDATE instance_template SET script='instance_halls_of_stone' WHERE map=599;
UPDATE creature_template SET ScriptName='boss_maiden_of_grief' WHERE entry=27975;
UPDATE creature_template SET ScriptName='boss_sjonnir' WHERE entry=27978;
UPDATE creature_template SET ScriptName='npc_brann_hos' WHERE entry=28070;

/* ULDUAR */
UPDATE instance_template SET script='instance_ulduar' WHERE map=603;

/* UN'GORO CRATER */
UPDATE creature_template SET ScriptName='npc_ame01' WHERE entry=9623;
UPDATE creature_template SET ScriptName='npc_ringo' WHERE entry=9999;

/* UNDERCITY */
UPDATE creature_template SET ScriptName='npc_lady_sylvanas_windrunner' WHERE entry=10181;
UPDATE creature_template SET ScriptName='npc_highborne_lamenter' WHERE entry=21628;
UPDATE creature_template SET ScriptName='npc_parqual_fintallas' WHERE entry=4488;

/*  */
/* UTGARDE KEEP */
/*  */

/* UTGARDE KEEP */
UPDATE instance_template SET script='instance_utgarde_keep' WHERE map=574;
UPDATE creature_template SET ScriptName='mob_dragonflayer_forge_master' WHERE entry=24079;
UPDATE creature_template SET ScriptName='boss_skarvald' WHERE entry=24200;
UPDATE creature_template SET ScriptName='boss_dalronn' WHERE entry=24201;
UPDATE creature_template SET ScriptName='boss_ingvar' WHERE entry=23954;
UPDATE creature_template SET ScriptName='npc_annhylde' WHERE entry=24068;
UPDATE creature_template SET ScriptName='boss_keleseth' WHERE entry=23953;
UPDATE creature_template SET ScriptName='mob_vrykul_skeleton' WHERE entry=23970;

/* UTGARDE PINNACLE */
UPDATE creature_template SET ScriptName='boss_gortok' WHERE entry=26687;
DELETE FROM areatrigger_scripts WHERE entry=4991;
REPLACE INTO areatrigger_scripts VALUES (4991,'at_skadi');
UPDATE creature_template SET ScriptName='boss_skadi' WHERE entry=26693;
UPDATE creature_template SET ScriptName='boss_svala' WHERE entry=29281;
DELETE FROM areatrigger_scripts WHERE entry=5140;
REPLACE INTO areatrigger_scripts VALUES (5140,'at_svala_intro');
UPDATE creature_template SET ScriptName='boss_ymiron' WHERE entry=26861;
UPDATE instance_template SET script='instance_pinnacle' WHERE map=575;

/* VAULT OF ARCHAVON */


/* VIOLET HOLD */
UPDATE instance_template SET script='instance_violet_hold' WHERE map=608;
UPDATE gameobject_template SET ScriptName='go_activation_crystal' WHERE entry=193611;
UPDATE creature_template SET ScriptName='npc_door_seal' WHERE entry=30896;
UPDATE creature_template SET ScriptName='npc_sinclari' WHERE entry=30658;
UPDATE creature_template SET ScriptName='npc_teleportation_portal' WHERE entry IN (31011,30679,32174);

/* WAILING CAVERNS */
UPDATE instance_template SET script='instance_wailing_caverns' WHERE map=43;

/* WESTERN PLAGUELANDS */
UPDATE creature_template SET ScriptName='npcs_dithers_and_arbington' WHERE entry IN (11056,11057);
UPDATE creature_template SET ScriptName='npc_myranda_the_hag' WHERE entry=11872;
UPDATE creature_template SET ScriptName='npc_the_scourge_cauldron' WHERE entry=11152;

/* WESTFALL */
UPDATE creature_template SET ScriptName='npc_daphne_stilwell' WHERE entry=6182;
UPDATE creature_template SET ScriptName='npc_defias_traitor' WHERE entry=467;

/* WETLANDS */
UPDATE creature_template SET ScriptName='npc_tapoke_slim_jahn' WHERE entry=4962;
UPDATE creature_template SET ScriptName='npc_mikhail' WHERE entry=4963;

/* WINTERSPRING */
UPDATE creature_template SET ScriptName='npc_lorax' WHERE entry=10918;
UPDATE creature_template SET ScriptName='npc_rivern_frostwind' WHERE entry=10618;
UPDATE creature_template SET ScriptName='npc_witch_doctor_mauari' WHERE entry=10307;

/* ZANGARMARSH */
UPDATE creature_template SET ScriptName='npcs_ashyen_and_keleth' WHERE entry IN (17900,17901);
UPDATE creature_template SET ScriptName='npc_cooshcoosh' WHERE entry=18586;
UPDATE creature_template SET ScriptName='npc_elder_kuruti' WHERE entry=18197;
UPDATE creature_template SET ScriptName='npc_kayra_longmane' WHERE entry=17969;
UPDATE creature_template SET ScriptName='npc_mortog_steamhead' WHERE entry=23373;
UPDATE creature_template SET ScriptName='npc_timothy_daniels' WHERE entry=18019;

/* ZUL'AMAN */
UPDATE instance_template SET script='instance_zulaman' WHERE map=568;
UPDATE creature_template SET ScriptName='npc_harrison_jones_za' WHERE entry=24358;
UPDATE gameobject_template SET ScriptName='go_strange_gong' WHERE entry=187359;
UPDATE creature_template SET ScriptName='boss_akilzon' WHERE entry=23574;
UPDATE creature_template SET ScriptName='mob_soaring_eagle' WHERE entry=24858;
UPDATE creature_template SET ScriptName='boss_halazzi' WHERE entry=23577;
UPDATE creature_template SET ScriptName='boss_spirit_lynx' WHERE entry=24143;
UPDATE creature_template SET ScriptName='boss_janalai' WHERE entry=23578;
UPDATE creature_template SET ScriptName='boss_malacrass' WHERE entry=24239;
UPDATE creature_template SET ScriptName='mob_alyson_antille' WHERE entry=24240;
UPDATE creature_template SET ScriptName='mob_thurg' WHERE entry=24241;
UPDATE creature_template SET ScriptName='mob_slither' WHERE entry=24242;
UPDATE creature_template SET ScriptName='mob_lord_raadan' WHERE entry=24243;
UPDATE creature_template SET ScriptName='mob_gazakroth' WHERE entry=24244;
UPDATE creature_template SET ScriptName='mob_fenstalker' WHERE entry=24245;
UPDATE creature_template SET ScriptName='mob_darkheart' WHERE entry=24246;
UPDATE creature_template SET ScriptName='mob_koragg' WHERE entry=24247;
UPDATE creature_template SET ScriptName='boss_nalorakk' WHERE entry=23576;
UPDATE creature_template SET ScriptName='boss_zuljin' WHERE entry=23863;
UPDATE creature_template SET ScriptName='mob_jandalai_firebomb' WHERE entry=23920;
UPDATE creature_template SET ScriptName='mob_amanishi_hatcher' WHERE entry IN (23818,24504);
UPDATE creature_template SET ScriptName='mob_hatchling' WHERE entry=23598;
UPDATE creature_template SET ScriptName='npc_forest_frog' WHERE entry=24396;

/* ZUL'DRAK */
UPDATE creature_template SET ScriptName='npc_gurgthock' WHERE entry=30007;


/* ZUL'FARRAK */
UPDATE creature_template SET ScriptName='npc_sergeant_bly' WHERE entry=7604;
UPDATE creature_template SET ScriptName='npc_weegli_blastfuse' WHERE entry=7607;

/* ZUL'GURUB */
UPDATE instance_template SET script='instance_zulgurub' WHERE map=309;
UPDATE creature_template SET ScriptName='boss_jeklik' WHERE entry=14517;
UPDATE creature_template SET ScriptName='boss_venoxis' WHERE entry=14507;
UPDATE creature_template SET ScriptName='boss_marli' WHERE entry=14510;
UPDATE creature_template SET ScriptName='boss_mandokir' WHERE entry=11382;
UPDATE creature_template SET ScriptName='mob_ohgan' WHERE entry=14988;
UPDATE creature_template SET ScriptName='boss_gahzranka' WHERE entry=15114;
UPDATE creature_template SET ScriptName='boss_jindo' WHERE entry=11380;
UPDATE creature_template SET ScriptName='boss_hakkar' WHERE entry=14834;
UPDATE creature_template SET ScriptName='boss_thekal' WHERE entry=14509;
UPDATE creature_template SET ScriptName='boss_arlokk' WHERE entry=14515;
UPDATE gameobject_template SET ScriptName='go_gong_of_bethekk' WHERE entry=180526;
UPDATE creature_template SET ScriptName='boss_grilek' WHERE entry=15082;
UPDATE creature_template SET ScriptName='boss_hazzarah' WHERE entry=15083;
UPDATE creature_template SET ScriptName='boss_renataki' WHERE entry=15084;
UPDATE creature_template SET ScriptName='boss_wushoolay' WHERE entry=15085;
UPDATE creature_template SET ScriptName='mob_zealot_lorkhan' WHERE entry=11347;
UPDATE creature_template SET ScriptName='mob_zealot_zath' WHERE entry=11348;
UPDATE creature_template SET ScriptName='mob_healing_ward' WHERE entry=14987;
UPDATE creature_template SET ScriptName='mob_spawn_of_marli' WHERE entry=15041;
UPDATE creature_template SET ScriptName='mob_batrider' WHERE entry=14965;
UPDATE creature_template SET ScriptName='mob_shade_of_jindo' WHERE entry=14986;

/* EOF */

--
-- Version data (part used in command .server info )
--

--
-- Below contains data for table `script_texts` mainly used in C++ parts.
-- valid entries for table are between -1000000 and -1999999
--

TRUNCATE script_texts;

--
-- -1 000 000 First 100 entries are reserved for special use, do not add regular text here.
--

REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1000000,'<ScriptDev2 Text Entry Missing!>',0,0,0,0,'DEFAULT_TEXT'),
(-1000001,'%s goes into a killing frenzy!',0,2,0,0,'EMOTE_GENERIC_FRENZY_KILL'),
(-1000002,'%s goes into a frenzy!',0,2,0,0,'EMOTE_GENERIC_FRENZY'),
(-1000003,'%s becomes enraged!',0,2,0,0,'EMOTE_GENERIC_ENRAGED'),
(-1000004,'%s goes into a berserker rage!',0,2,0,0,'EMOTE_GENERIC_BERSERK'),
(-1000005,'%s goes into a frenzy!',0,3,0,0,'EMOTE_BOSS_GENERIC_FRENZY');

--
-- Normal text entries below. Say/Yell/Whisper/Emote for any regular world object.
-- Text entries for text used by creatures in instances are using map id as part of entry.
-- Example: for map 430, the database text entry for all creatures normally on this map start with -1430
-- Values decrement as they are made.
-- For creatures outside instance, use -1 000 100 and below. Decrement value as they are made.
--
-- Comment should contain a unique name that can be easily identified later by using sql queries like for example
-- SELECT * FROM script_texts WHERE comment LIKE '%defias%';
-- Place the define used in script itself at the end of the comment.
--
-- Do not change entry without a very good reason. Localization projects depends on using entries that does not change!
-- Example: UPDATE script_texts SET content_loc1 = 'the translated text' WHERE entry = -1000100;
--

-- -1 000 100 GENERAL MAPS (not instance maps)
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1000100,'Come, little ones. Face me!',0,1,0,0,'azuregos SAY_TELEPORT'),

(-1000101,'Follow me, $N. I\'ll take you to the Defias hideout. But you better protect me or I am as good as dead',0,0,7,0,'defias traitor SAY_START'),
(-1000102,'The entrance is hidden here in Moonbrook. Keep your eyes peeled for thieves. They want me dead.',0,0,7,0,'defias traitor SAY_PROGRESS'),
(-1000103,'You can go tell Stoutmantle this is where the Defias Gang is holed up, $N.',0,0,7,0,'defias traitor SAY_END'),
(-1000104,'%s coming in fast! Prepare to fight!',0,0,7,0,'defias traitor SAY_AGGRO_1'),
(-1000105,'Help!',0,0,7,0,'defias traitor SAY_AGGRO_2'),

(-1000106,'Everyone ready?',0,0,1,0,'torek SAY_READY'),
(-1000107,'Ok, Lets move out!',0,0,1,0,'torek SAY_MOVE'),
(-1000108,'Prepare yourselves. Silverwing is just around the bend.',0,0,1,0,'torek SAY_PREPARE'),
(-1000109,'Silverwing is ours!',0,0,1,0,'torek SAY_WIN'),
(-1000110,'Go report that the outpost is taken. We will remain here.',0,0,1,0,'torek SAY_END'),

(-1000111,'Our house is this way, through the thicket.',0,0,7,0,'magwin SAY_START'),
(-1000112,'Help me!',0,0,7,0,'magwin SAY_AGGRO'),
(-1000113,'My poor family. Everything has been destroyed.',0,0,7,0,'magwin SAY_PROGRESS'),
(-1000114,'Father! Father! You\'re alive!',0,0,7,0,'magwin SAY_END1'),
(-1000115,'You can thank $N for getting me back here safely, father.',0,0,7,0,'magwin SAY_END2'),
(-1000116,'%s hugs her father.',0,2,7,0,'magwin EMOTE_HUG'),

(-1000117,'Thank you for agreeing to help. Now, let\'s get out of here $N.',0,0,1,0,'wounded elf SAY_ELF_START'),
(-1000118,'Over there! They\'re following us!',0,0,1,0,'wounded elf SAY_ELF_SUMMON1'),
(-1000119,'Allow me a moment to rest. The journey taxes what little strength I have.',0,0,1,16,'wounded elf SAY_ELF_RESTING'),
(-1000120,'Did you hear something?',0,0,1,0,'wounded elf SAY_ELF_SUMMON2'),
(-1000121,'Falcon Watch, at last! Now, where\'s my... Oh no! My pack, it\'s missing! Where has -',0,0,1,0,'wounded elf SAY_ELF_COMPLETE'),
(-1000122,'You won\'t keep me from getting to Falcon Watch!',0,0,1,0,'wounded elf SAY_ELF_AGGRO'),

(-1000123,'Ready when you are, $c.',0,0,0,15,'big will SAY_BIG_WILL_READY'),
(-1000124,'The Affray has begun. $n, get ready to fight!',0,0,0,0,'twiggy SAY_TWIGGY_BEGIN'),
(-1000125,'You! Enter the fray!',0,0,0,0,'twiggy SAY_TWIGGY_FRAY'),
(-1000126,'Challenger is down!',0,0,0,0,'twiggy SAY_TWIGGY_DOWN'),
(-1000127,'The Affray is over.',0,0,0,0,'twiggy SAY_TWIGGY_OVER'),

(-1000128,'We need you to send reinforcements to Manaforge Duro, Ardonis. This is not a request, it\'s an order.',0,0,0,0,'dawnforge SAY_COMMANDER_DAWNFORGE_1'),
(-1000129,'You cannot be serious! We are severely understaffed and can barely keep this manaforge functional!',0,0,0,0,'dawnforge SAY_ARCANIST_ARDONIS_1'),
(-1000130,'You will do as ordered. Manaforge Duro has come under heavy attack by mana creatures and the situation is out of control. Failure to comply will not be tolerated!',0,0,0,0,'dawnforge SAY_COMMANDER_DAWNFORGE_2'),
(-1000131,'Indeed, it is not a request.',0,0,0,0,'dawnforge SAY_PATHALEON_CULATOR_IMAGE_1'),
(-1000132,'My lord!',0,0,0,0,'dawnforge SAY_COMMANDER_DAWNFORGE_3'),
(-1000133,'Duro will be reinforced! Ultris was a complete disaster. I will NOT have that mistake repeated!',0,0,0,0,'dawnforge PATHALEON_CULATOR_IMAGE_2'),
(-1000134,'We\'ve had too many setbacks along the way: Hellfire Citadel, Fallen Sky Ridge, Firewing Point... Prince Kael\'thas will tolerate no further delays. I will tolerate nothing other than complete success!',0,0,0,0,'dawnforge PATHALEON_CULATOR_IMAGE_2_1'),
(-1000135,'I am returning to Tempest Keep. See to it that I do not have reason to return!',0,0,0,0,'dawnforge PATHALEON_CULATOR_IMAGE_2_2' ),
(-1000136,'Yes, my lord.',0,0,0,0,'dawnforge COMMANDER_DAWNFORGE_4 SAY_ARCANIST_ARDONIS_2'),
(-1000137,'See to it, Ardonis!',0,0,0,0,'dawnforge COMMANDER_DAWNFORGE_5'),

(-1000138,'Avruu\'s magic... it still controls me. You must fight me, mortal. It\'s the only way to break the spell!',0,0,0,0,'aeranas SAY_SUMMON'),
(-1000139,'Avruu\'s magic is broken! I\'m free once again!',0,0,0,0,'aeranas SAY_FREE'),

(-1000140,'Let\'s go.',0,0,1,0,'lilatha SAY_START'),
(-1000141,'$N, let\'s use the antechamber to the right.',0,0,1,0,'lilatha SAY_PROGRESS1'),
(-1000142,'I can see the light at the end of the tunnel!',0,0,1,0,'lilatha SAY_PROGRESS2'),
(-1000143,'There\'s Farstrider Enclave now, $C. Not far to go... Look out! Troll ambush!!',0,0,1,0,'lilatha SAY_PROGRESS3'),
(-1000144,'Thank you for saving my life and bringing me back to safety, $N',0,0,1,0,'lilatha SAY_END1'),
(-1000145,'Captain Helios, I\'ve been rescued from the Amani Catacombs. Reporting for duty, sir!',0,0,1,0,'lilatha SAY_END2'),
(-1000146,'Liatha, get someone to look at those injuries. Thank you for bringing her back safely.',0,0,1,0,'lilatha CAPTAIN_ANSWER'),

(-1000147,'I remember well the sting of defeat at the conclusion of the Third War. I have waited far too long for my revenge. Now the shadow of the Legion falls over this world. It is only a matter of time until all of your failed creation... is undone.',11332,1,0,0,'kazzak SAY_INTRO'),
(-1000148,'The Legion will conquer all!',11333,1,0,0,'kazzak SAY_AGGRO1'),
(-1000149,'All mortals will perish!',11334,1,0,0,'kazzak SAY_AGGRO2'),
(-1000150,'All life must be eradicated!',11335,1,0,0,'kazzak SAY_SURPREME1'),
(-1000151,'I\'ll rip the flesh from your bones!',11336,1,0,0,'kazzak SAY_SURPREME2'),
(-1000152,'Kirel Narak!',11337,1,0,0,'kazzak SAY_KILL1'),
(-1000153,'Contemptible wretch!',11338,1,0,0,'kazzak SAY_KILL2'),
(-1000154,'The universe will be remade.',11339,1,0,0,'kazzak SAY_KILL3'),
(-1000155,'The Legion... will never... fall.',11340,1,0,0,'kazzak SAY_DEATH'),
(-1000156,'REUSE ME',0,0,0,0,'REUSE ME'),
(-1000157,'Invaders, you dangle upon the precipice of oblivion! The Burning Legion comes and with it comes your end.',0,1,0,0,'kazzak SAY_RAND1'),
(-1000158,'Impudent whelps, you only delay the inevitable. Where one has fallen, ten shall rise. Such is the will of Kazzak...',0,1,0,0,'kazzak SAY_RAND2'),

(-1000159,'Do not proceed. You will be eliminated!',11344,1,0,0,'doomwalker SAY_AGGRO'),
(-1000160,'Tectonic disruption commencing.',11345,1,0,0,'doomwalker SAY_EARTHQUAKE_1'),
(-1000161,'Magnitude set. Release.',11346,1,0,0,'doomwalker SAY_EARTHQUAKE_2'),
(-1000162,'Trajectory locked.',11347,1,0,0,'doomwalker SAY_OVERRUN_1'),
(-1000163,'Engage maximum speed.',11348,1,0,0,'doomwalker SAY_OVERRUN_2'),
(-1000164,'Threat level zero.',11349,1,0,0,'doomwalker SAY_SLAY_1'),
(-1000165,'Directive accomplished.',11350,1,0,0,'doomwalker SAY_SLAY_2'),
(-1000166,'Target exterminated.',11351,1,0,0,'doomwalker SAY_SLAY_3'),
(-1000167,'System failure in five, f-o-u-r...',11352,1,0,0,'doomwalker SAY_DEATH'),

(-1000168,'Who dares awaken Aquementas?',0,1,0,0,'aquementas AGGRO_YELL_AQUE'),

(-1000169,'Muahahahaha! You fool! You\'ve released me from my banishment in the interstices between space and time!',0,1,0,0,'nether_drake SAY_NIHIL_1'),
(-1000170,'All of Draenor shall quick beneath my feet! I will destroy this world and reshape it in my image!',0,1,0,0,'nether_drake SAY_NIHIL_2'),
(-1000171,'Where shall I begin? I cannot bother myself with a worm such as yourself. There is a world to be conquered!',0,1,0,0,'nether_drake SAY_NIHIL_3'),
(-1000172,'No doubt the fools that banished me are long dead. I shall take wing survey my demense. Pray to whatever gods you hold dear that we do not meet again.',0,1,0,0,'nether_drake SAY_NIHIL_4'),
(-1000173,'NOOOOooooooo!',0,1,0,0,'nether_drake SAY_NIHIL_INTERRUPT'),

(-1000174,'Good $N, you are under the spell\'s influence. I must analyze it quickly, then we can talk.',0,0,7,0,'daranelle SAY_SPELL_INFLUENCE'),

(-1000175,'Thank you, mortal.',0,0,11,0,' SAY_JUST_EATEN'),

(-1000176,'The last thing I remember is the ship falling and us getting into the pods. I\'ll go see how I can help. Thank you!',0,0,7,0,'draenei_survivor SAY_HEAL1'),
(-1000177,'$C, Where am I? Who are you? Oh no! What happened to the ship?',0,0,7,0,'draenei_survivor SAY_HEAL2'),
(-1000178,'$C You saved me! I owe you a debt that I can never repay. I\'ll go see if I can help the others.',0,0,7,0,'draenei_survivor SAY_HEAL3'),
(-1000179,'Ugh... what is this place? Is that all that\'s left of the ship over there?',0,0,7,0,'draenei_survivor SAY_HEAL4'),
(-1000180,'Oh, the pain...',0,0,7,0,'draenei_survivor SAY_HELP1'),
(-1000181,'Everything hurts, Please make it stop...',0,0,7,0,'draenei_survivor SAY_HELP2'),
(-1000182,'Ughhh... I hurt. Can you help me?',0,0,7,0,'draenei_survivor SAY_HELP3'),
(-1000183,'I don\'t know if I can make it, please help me...',0,0,7,0,'draenei_survivor SAY_HELP4'),

(-1000184,'Yes Master, all goes along as planned.',0,0,7,0,'engineer_spark SAY_TEXT'),
(-1000185,'%s puts the shell to his ear.',0,2,7,0,'engineer_spark EMOTE_SHELL'),
(-1000186,'Now I cut you!',0,1,7,0,'engineer_spark SAY_ATTACK'),

(-1000187,'Thank you, dear $C, you just saved my life.',0,0,7,0,'faulk SAY_HEAL'),

(-1000188,'Deployment sucessful. Trespassers will be neutralized.',0,0,0,0,'converted_sentry SAY_CONVERTED_1'),
(-1000189,'Objective acquired. Initiating security routines.',0,0,0,0,'converted_sentry SAY_CONVERTED_2'),

(-1000190,'In Nagrand, food hunt ogre!',0,0,0,0,' SAY_LUMP_0'),
(-1000191,'You taste good with maybe a little salt and pepper.',0,0,0,0,' SAY_LUMP_1'),
(-1000192,'OK, OK! Lump give up!',0,0,0,0,' SAY_LUMP_DEFEAT'),

(-1000193,'Thank you, dear $C, you just saved my life.',0,0,1,0,'stillblade SAY_HEAL'),

(-1000194,'I give up! Please don\'t kill me!',0,0,0,0,'unkor SAY_SUBMIT'),

(-1000195,'I choose the third option: KILLING YOU!',0,0,0,0,'floon SAY_FLOON_ATTACK'),

(-1000196,'Belore...',0,0,1,0,'lady_sylvanas SAY_LAMENT_END'),
(-1000197,'%s kneels down and pick up the amulet.',0,2,1,0,'lady_sylvanas EMOTE_LAMENT_END'),

(-1000198,'Taste blade, mongrel!',0,0,0,0,'SAY_GUARD_SIL_AGGRO1'),
(-1000199,'Please tell me that you didn\'t just do what I think you just did. Please tell me that I\'m not going to have to hurt you...',0,0,0,0,'SAY_GUARD_SIL_AGGRO2'),
(-1000200,'As if we don\'t have enough problems, you go and create more!',0,0,0,0,'SAY_GUARD_SIL_AGGRO3'),

(-1000201,'I\'m saved! Thank you, doctor!',0,0,0,0,'injured_patient SAY_DOC1'),
(-1000202,'HOORAY! I AM SAVED!',0,0,0,0,'injured_patient SAY_DOC2'),
(-1000203,'Sweet, sweet embrace... take me...',0,0,0,0,'injured_patient SAY_DOC3'),

(-1000204,'%s looks up at you quizzically. Maybe you should inspect it?',0,2,0,0,'cluck EMOTE_A_HELLO'),
(-1000205,'%s looks at you unexpectadly.',0,2,0,0,'cluck EMOTE_H_HELLO'),
(-1000206,'%s starts pecking at the feed.',0,2,0,0,'cluck EMOTE_CLUCK_TEXT2'),

(-1000207,'You have my blessing',0,0,0,0,'ashyen_and_keleth SAY_REWARD_BLESS'),

(-1000208,'Frenzyheart kill you if you come back. You no welcome here no more!',0,0,0,0,'vekjik SAY_TEXTID_VEKJIK1'),

(-1000209,'Very well. Let\'s see what you have to show me, $N.',0,0,1,0,'anvilward SAY_ANVIL1'),
(-1000210,'What manner of trick is this, $R? If you seek to ambush me, I warn you I will not go down quietly!',0,0,1,0,'anvilward SAY_ANVIL2'),

(-1000211,'Warning! %s emergency shutdown process initiated by $N. Shutdown will complete in two minutes.',0,2,0,0,'manaforge_control EMOTE_START'),
(-1000212,'Emergency shutdown will complete in one minute.',0,2,0,0,'manaforge_control EMOTE_60'),
(-1000213,'Emergency shutdown will complete in thirty seconds.',0,2,0,0,'manaforge_control EMOTE_30'),
(-1000214,'Emergency shutdown will complete in ten seconds.',0,2,0,0,'manaforge_control EMOTE_10'),
(-1000215,'Emergency shutdown complete.',0,2,0,0,'manaforge_control EMOTE_COMPLETE'),
(-1000216,'Emergency shutdown aborted.',0,2,0,0,'manaforge_control EMOTE_ABORT'),

(-1000217,'Greetings, $N. I will guide you through the cavern. Please try and keep up.',0,3,0,0,'WHISPER_CUSTODIAN_1'),
(-1000218,'We do not know if the Caverns of Time have always been accessible to mortals. Truly, it is impossible to tell as the Timeless One is in perpetual motion, changing our timeways as he sees fit. What you see now may very well not exist tomorrow. You may wake up and have no memory of this place.',0,3,0,0,'WHISPER_CUSTODIAN_2'),
(-1000219,'It is strange, I know... Most mortals cannot actually comprehend what they see here, as often, what they see is not anchored within their own perception of reality.',0,3,0,0,'WHISPER_CUSTODIAN_3'),
(-1000220,'Follow me, please.',0,3,0,0,'WHISPER_CUSTODIAN_4'),
(-1000221,'There are only two truths to be found here: First, that time is chaotic, always in flux, and completely malleable and second, perception does not dictate reality.',0,3,0,0,'WHISPER_CUSTODIAN_5'),
(-1000222,'As custodians of time, we watch over and care for Nozdormu\'s realm. The master is away at the moment, which means that attempts are being made to dramatically alter time. The master never meddles in the affairs of mortals but instead corrects the alterations made to time by others. He is reactionary in this regard.',0,3,0,0,'WHISPER_CUSTODIAN_6'),
(-1000223,'For normal maintenance of time, the Keepers of Time are sufficient caretakers. We are able to deal with most ordinary disturbances. I speak of little things, such as rogue mages changing something in the past to elevate their status or wealth in the present.',0,3,0,0,'WHISPER_CUSTODIAN_7'),
(-1000224,'These tunnels that you see are called timeways. They are infinite in number. The ones that currently exist in your reality are what the master has deemed as \'trouble spots.\' These trouble spots may differ completely in theme but they always share a cause. That is, their existence is a result of the same temporal disturbance. Remember that should you venture inside one...',0,3,0,0,'WHISPER_CUSTODIAN_8'),
(-1000225,'This timeway is in great disarray! We have agents inside right now attempting to restore order. What information I have indicates that Thrall\'s freedom is in jeopardy. A malevolent organization known as the Infinite Dragonflight is trying to prevent his escape. I fear without outside assistance, all will be lost.',0,3,0,0,'WHISPER_CUSTODIAN_9'),
(-1000226,'We have very little information on this timeway. Sa\'at has been dispatched and is currently inside. The data we have gathered from his correspondence is that the Infinite Dragonflight are once again attempting to alter time. Could it be that the opening of the Dark Portal is being targeted for sabotage? Let us hope not...',0,3,0,0,'WHISPER_CUSTODIAN_10'),
(-1000227,'This timeway is currently collapsing. What that may hold for the past, present and future is currently unknown...',0,3,0,0,'WHISPER_CUSTODIAN_11'),
(-1000228,'The timeways are currently ranked in order from least catastrophic to most catastrophic. Note that they are all classified as catastrophic, meaning that any single one of these timeways collapsing would mean that your world would end. We only classify them in such a way so that the heroes and adventurers that are sent here know which timeway best suits their abilities.',0,3,0,0,'WHISPER_CUSTODIAN_12'),
(-1000229,'All we know of this timeway is that it leads to Mount Hyjal. The Infinite Dragonflight have gone to great lengths to prevent our involvement. We know next to nothing, mortal. Soridormi is currently attempting to break through the timeway\'s defenses but has thus far been unsuccessful. You might be our only hope of breaking through and resolving the conflict.',0,3,0,0,'WHISPER_CUSTODIAN_13'),
(-1000230,'Our time is at an end $N. I would wish you luck, if such a thing existed.',0,3,0,0,'WHISPER_CUSTODIAN_14'),

(-1000231,'Ah, $GPriest:Priestess; you came along just in time. I appreciate it.',0,0,0,20,'garments SAY_COMMON_HEALED'),
(-1000232,'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those gnolls with your power to back me!',0,0,1,4,'garments SAY_DG_KEL_THANKS'),
(-1000233,'Farewell to you, and may shadow always protect you!',0,0,1,3,'garments SAY_DG_KEL_GOODBYE'),

(-1000234,'Follow me, stranger. This won\'t take long.',0,0,0,0,'SAY_KHAD_SERV_0'),
(-1000235,'Shattrath was once the draenei capital of this world. Its name means "dwelling of light."',0,4,0,0,'SAY_KHAD_SERV_1'),
(-1000236,'When the Burning Legion turned the orcs against the draenei, the fiercest battle was fought here. The draenei fought tooth and nail, but in the end the city fell.',0,4,0,0,'SAY_KHAD_SERV_2'),
(-1000237,'The city was left in ruins and darkness... until the Sha\'tar arrived.',0,4,0,0,'SAY_KHAD_SERV_3'),
(-1000238,'Let us go into the Lower City. I will warn you that as one of the only safe havens in Outland, Shattrath has attracted droves of refugees from all wars, current and past.',0,4,0,0,'SAY_KHAD_SERV_4'),
(-1000239,'The Sha\'tar, or "born from light" are the naaru that came to Outland to fight the demons of the Burning Legion.',0,4,0,0,'SAY_KHAD_SERV_5'),
(-1000240,'They were drawn to the ruins of Shattrath City where a small remnant of the draenei priesthood conducted its rites inside a ruined temple on this very spot.',0,4,0,0,'SAY_KHAD_SERV_6'),
(-1000241,'The priesthood, known as the Aldor, quickly regained its strength as word spread that the naaru had returned and reconstruction soon began. The ruined temple is now used as an infirmary for injured refugees.',0,4,0,0,'SAY_KHAD_SERV_7'),
(-1000242,'It wouldn\'t be long, however, before the city came under attack once again. This time, the attack came from Illidan\'s armies. A large regiment of blood elves had been sent by Illidan\'s ally, Kael\'thas Sunstrider, to lay waste to the city.',0,4,0,0,'SAY_KHAD_SERV_8'),
(-1000243,'As the regiment of blood elves crossed this very bridge, the Aldor\'s exarchs and vindicators lined up to defend the Terrace of Light. But then the unexpected happened.',0,4,0,0,'SAY_KHAD_SERV_9'),
(-1000244,'The blood elves laid down their weapons in front of the city\'s defenders; their leader, a blood elf elder known as Voren\'thal, stormed into the Terrace of Light and demanded to speak to A\'dal.',0,4,0,0,'SAY_KHAD_SERV_10'),
(-1000245,'As the naaru approached him, Voren\'thal kneeled before him and uttered the following words: "I\'ve seen you in a vision, naaru. My race\'s only hope for survival lies with you. My followers and I are here to serve you."',0,4,0,0,'SAY_KHAD_SERV_11'),
(-1000246,'The defection of Voren\'thal and his followers was the largest loss ever incurred by Kael\'s forces. And these weren\'t just any blood elves. Many of the best and brightest amongst Kael\'s scholars and magisters had been swayed by Voren\'thal\'s influence.',0,4,0,0,'SAY_KHAD_SERV_12'),
(-1000247,'The naaru accepted the defectors, who would become known as the Scryers; their dwelling lies in the platform above. Only those initiated with the Scryers are allowed there.',0,4,0,0,'SAY_KHAD_SERV_13'),
(-1000248,'The Aldor are followers of the Light and forgiveness and redemption are values they understand. However, they found hard to forget the deeds of the blood elves while under Kael\'s command.',0,4,0,0,'SAY_KHAD_SERV_14'),
(-1000249,'Many of the priesthood had been slain by the same magisters who now vowed to serve the naaru. They were not happy to share the city with their former enemies.',0,4,0,0,'SAY_KHAD_SERV_15'),
(-1000250,'The Aldor\'s most holy temple and its surrounding dwellings lie on the terrace above. As a holy site, only the initiated are welcome inside.',0,4,0,0,'SAY_KHAD_SERV_16'),
(-1000251,'The attacks against Shattrath continued, but the city did not fall\, as you can see. On the contrary, the naaru known as Xi\'ri led a successful incursion into Shadowmoon Valley - Illidan\'s doorstep.',0,4,0,0,'SAY_KHAD_SERV_17'),
(-1000252,'There he continues to wage war on Illidan with the assistance of the Aldor and the Scryers. The two factions have not given up on their old feuds, though.',0,4,0,0,'SAY_KHAD_SERV_18'),
(-1000253,'Such is their animosity that they vie for the honor of being sent to assist the naaru there. Each day, that decision is made here by A\'dal. The armies gather here to receive A\'dal\'s blessing before heading to Shadowmoon.',0,4,0,0,'SAY_KHAD_SERV_19'),
(-1000254,'Khadgar should be ready to see you again. Just remember that to serve the Sha\'tar you will most likely have to ally with the Aldor or the Scryers. And seeking the favor of one group will cause the others\' dislike.',0,4,0,0,'SAY_KHAD_SERV_20'),
(-1000255,'Good luck stranger, and welcome to Shattrath City.',0,4,0,0,'SAY_KHAD_SERV_21'),

(-1000256,'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those murlocs with the Light on my side!',0,0,7,4,'garments SAY_ROBERTS_THANKS'),
(-1000257,'Farewell to you, and may the Light be with you always.',0,0,7,3,'garments SAY_ROBERTS_GOODBYE'),
(-1000258,'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those humans with your power to back me!',0,0,1,4,'garments SAY_KORJA_THANKS'),
(-1000259,'Farewell to you, and may our ancestors be with you always!',0,0,1,3,'garments SAY_KORJA_GOODBYE'),
(-1000260,'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those wendigo with the Light on my side!',0,0,7,4,'garments SAY_DOLF_THANKS'),
(-1000261,'Farewell to you, and may the Light be with you always.',0,0,7,3,'garments SAY_DOLF_GOODBYE'),
(-1000262,'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those corrupt timberlings with Elune\'s power behind me!',0,0,2,4,'garments SAY_SHAYA_THANKS'),
(-1000263,'Farewell to you, and may Elune be with you always.',0,0,2,3,'garments SAY_SHAYA_GOODBYE'),

(-1000264,'Ok, $N. Follow me to the cave where I\'ll attempt to harness the power of the rune stone into these goggles.',0,0,0,1,'phizzlethorpe SAY_PROGRESS_1'),
(-1000265,'I discovered this cave on our first day here. I believe the energy in the stone can be used to our advantage.',0,0,0,1,'phizzlethorpe SAY_PROGRESS_2'),
(-1000266,'I\'ll begin drawing energy from the stone. Your job, $N, is to defend me. This place is cursed... trust me.',0,0,0,1,'phizzlethorpe SAY_PROGRESS_3'),
(-1000267,'%s begins tinkering with the goggles before the stone.',0,2,0,0,'phizzlethorpe EMOTE_PROGRESS_4'),
(-1000268,'Help!!! Get these things off me so I can get my work done!',0,0,0,0,'phizzlethorpe SAY_AGGRO'),
(-1000269,'Almost done! Just a little longer!',0,0,0,1,'phizzlethorpe SAY_PROGRESS_5'),
(-1000270,'I\'ve done it! I have harnessed the power of the stone into the goggles! Let\'s get out of here!',0,0,0,1,'phizzlethorpe SAY_PROGRESS_6'),
(-1000271,'Phew! Glad to be back from that creepy cave.',0,0,0,1,'phizzlethorpe SAY_PROGRESS_7'),
(-1000272,'%s hands one glowing goggles over to Doctor Draxlegauge.',0,2,0,0,'phizzlethorpe EMOTE_PROGRESS_8'),
(-1000273,'Doctor Draxlegauge will give you further instructions, $N. Many thanks for your help!',0,0,0,1,'phizzlethorpe SAY_PROGRESS_9'),

(-1000274,'Time to teach you a lesson in manners, little $Gboy:girl;!',0,0,0,0,'larry SAY_START'),
(-1000275,'Now I\'m gonna give you to the count of \'3\' to get out of here before I sick the dogs on you.',0,0,0,0,'larry SAY_COUNT'),
(-1000276,'1...',0,0,0,0,'larry SAY_COUNT_1'),
(-1000277,'2...',0,0,0,0,'larry SAY_COUNT_2'),
(-1000278,'Time to meet your maker!',0,0,0,0,'larry SAY_ATTACK_5'),
(-1000279,'Alright, we give up! Don\'t hurt us!',0,0,0,0,'larry SAY_GIVEUP'),

(-1000280,'A shadowy, sinister presence has invaded the Emerald Dream. Its power is poised to spill over into our world, $N. We must oppose it! That\'s why I cannot accompany you in person.',0,0,0,1,'clintar SAY_START'),
(-1000281,'The Emerald Dream will never be yours!',0,0,0,0,'clintar SAY_AGGRO_1'),
(-1000282,'Begone from this place!',0,0,0,0,'clintar SAY_AGGRO_2'),
(-1000283,'That\'s the first relic, but there are still two more. Follow me, $N.',0,0,0,0,'clintar SAY_RELIC1'),
(-1000284,'I\'ve recovered the second relic. Take a moment to rest, and then we\'ll continue to the last reliquary.',0,0,0,0,'clintar SAY_RELIC2'),
(-1000285,'We have all three of the relics, but my energy is rapidly fading. We must make our way back to Dreamwarden Lurosa! He will let you know what to do next.',0,0,0,0,'clintar SAY_RELIC3'),
(-1000286,'Lurosa, I am entrusting the Relics of Aviana to $N, who will take them to Morthis Whisperwing. I must return completely to the Emerald Dream now. Do not let $N fail!',0,0,0,1,'clintar SAY_END'),

(-1000287,'Emergency power activated! Initializing ambulanory motor! CLUCK!',0,0,0,0,'oox SAY_OOX_START'),
(-1000288,'Physical threat detected! Evasive action! CLUCK!',0,0,0,0,'oox SAY_OOX_AGGRO1'),
(-1000289,'Thread analyzed! Activating combat plan beta! CLUCK!',0,0,0,0,'oox SAY_OOX_AGGRO2'),
(-1000290,'CLUCK! Sensors detect spatial anomaly - danger imminent! CLUCK!',0,0,0,0,'oox SAY_OOX_AMBUSH'),
(-1000291,'No one challanges the Wastewander nomads - not even robotic chickens! ATTACK!',0,0,0,0,'oox SAY_OOX17_AMBUSH_REPLY'),
(-1000292,'Cloaking systems online! CLUCK! Engaging cloak for transport to Booty Bay!',0,0,0,0,'oox SAY_OOX_END'),

(-1000293,'To the house! Stay close to me, no matter what! I have my gun and ammo there!',0,0,7,0,'stilwell SAY_DS_START'),
(-1000294,'We showed that one!',0,0,7,0,'stilwell SAY_DS_DOWN_1'),
(-1000295,'One more down!',0,0,7,0,'stilwell SAY_DS_DOWN_2'),
(-1000296,'We\'ve done it! We won!',0,0,7,0,'stilwell SAY_DS_DOWN_3'),
(-1000297,'Meet me down by the orchard--I just need to put my gun away.',0,0,7,0,'stilwell SAY_DS_PROLOGUE'),

(-1000298,'Alright, alright I think I can figure out how to operate this thing...',0,0,0,393,'wizzlecrank SAY_START'),
(-1000299,'Arrrgh! This isn\'t right!',0,0,0,0,'wizzlecrank SAY_STARTUP1'),
(-1000300,'Okay, I think I\'ve got it, now. Follow me, $n!',0,0,0,1,'wizzlecrank SAY_STARTUP2'),
(-1000301,'There\'s the stolen shredder! Stop it or Lugwizzle will have our hides!',0,1,0,0,'wizzlecrank SAY_MERCENARY'),
(-1000302,'Looks like we\'re out of woods, eh? Wonder what this does...',0,0,0,0,'wizzlecrank SAY_PROGRESS_1'),
(-1000303,'Come on, don\'t break down on me now!',0,0,0,393,'wizzlecrank SAY_PROGRESS_2'),
(-1000304,'That was a close one! Well, let\'s get going, it\'s still a ways to Ratchet!',0,0,0,0,'wizzlecrank SAY_PROGRESS_3'),
(-1000305,'Hmm... I don\'t think this blinking red light is a good thing...',0,0,0,0,'wizzlecrank SAY_END'),

(-1000306,'Let\'s get to the others, and keep an eye open for those wolves cutside...',0,0,1,0,'erland SAY_START_1'),
(-1000307,'Be careful, $N. Those wolves like to hide among the trees.',0,0,1,0,'erland SAY_START_2'),
(-1000308,'A $C attacks!',0,0,1,0,'erland SAY_AGGRO_1'),
(-1000309,'Beware! I am under attack!',0,0,1,0,'erland SAY_AGGRO_2'),
(-1000310,'Oh no! A $C is upon us!',0,0,1,0,'erland SAY_AGGRO_3'),
(-1000311,'We\'re almost there!',0,0,1,0,'erland SAY_PROGRESS'),
(-1000312,'We made it! Thanks, $N. I couldn\'t have gotten without you.',0,0,1,0,'erland SAY_END'),
(-1000313,'It\'s good to see you again, Erland. What is your report?',0,0,33,1,'erland SAY_RANE'),
(-1000314,'Masses of wolves are to the east, and whoever lived at Malden\'s Orchard is gone.',0,0,1,1,'erland SAY_RANE_REPLY'),
(-1000315,'If I am excused, then I\'d like to check on Quinn...',0,0,1,1,'erland SAY_CHECK_NEXT'),
(-1000316,'Hello, Quinn. How are you faring?',0,0,1,1,'erland SAY_QUINN'),
(-1000317,'I\'ve been better. Ivar the Foul got the better of me...',0,0,33,1,'erland SAY_QUINN_REPLY'),
(-1000318,'Try to take better care of yourself, Quinn. You were lucky this time.',0,0,1,1,'erland SAY_BYE'),

(-1000319,'Let the trial begin, Bloodwrath, attack!',0,1,1,0,'kelerun SayId1'),
(-1000320,'Champion Lightrend, make me proud!',0,1,1,0,'kelerun SayId2'),
(-1000321,'Show this upstart how a real Blood Knight fights, Swiftblade!',0,1,1,0,'kelerun SayId3'),
(-1000322,'Show $n the meaning of pain, Sunstriker!',0,1,1,0,'kelerun SayId4'),

(-1000323,'Mist! I feared I would never see you again! Yes, I am well, do not worry for me. You must rest and recover your health.',0,0,7,0,'mist SAY_AT_HOME'),
(-1000324,'%s growls in acknowledgement before straightening and making her way off into the forest.',0,2,0,0,'mist EMOTE_AT_HOME'),

(-1000325,'"Threshwackonator First Mate unit prepared to follow"',0,2,0,0,'threshwackonator EMOTE_START'),
(-1000326,'YARRR! Swabie, what have ye done?! He\'s gone mad! Baton him down the hatches! Hoist the mast! ARRRR! Every man for hi\'self!',0,0,7,0,'threshwackonator SAY_AT_CLOSE'),

(-1000327,'Ok, $n, let\'s go find where I left that mysterious fossil. Follow me!',0,0,7,0,'remtravel SAY_REM_START'),
(-1000328,'Now where did I put that mysterious fossil? Ah, maybe up there...',0,0,7,0,'remtravel SAY_REM_RAMP1_1'),
(-1000329,'Hrm, nothing up here.',0,0,7,0,'remtravel SAY_REM_RAMP1_2'),
(-1000330,'No mysterious fossil here... Ah, but my copy of Green Hills of Stranglethorn. What a good book!',0,0,7,0,'remtravel SAY_REM_BOOK'),
(-1000331,'I bet you I left it in the tent!',0,0,7,0,'remtravel SAY_REM_TENT1_1'),
(-1000332,'Oh wait, that\'s Hollee\'s tent... and it\'s empty.',0,0,7,0,'remtravel SAY_REM_TENT1_2'),
(-1000333,'Interesting... I hadn\'t noticed this earlier...',0,0,7,0,'remtravel SAY_REM_MOSS'),
(-1000334,'%s inspects the ancient, mossy stone.',0,2,7,0,'remtravel EMOTE_REM_MOSS'),
(-1000335,'Oh wait! I\'m supposed to be looking for that mysterious fossil!',0,0,7,0,'remtravel SAY_REM_MOSS_PROGRESS'),
(-1000336,'Nope. didn\'t leave the fossil back here!',0,0,7,0,'remtravel SAY_REM_PROGRESS'),
(-1000337,'Ah. I remember now! I gave the mysterious fossil to Hollee! Check with her.',0,0,7,0,'remtravel SAY_REM_REMEMBER'),
(-1000338,'%s goes back to work, oblivious to everything around him.',0,2,7,0,'remtravel EMOTE_REM_END'),
(-1000339,'Something tells me this $r wants the mysterious fossil too. Help!',0,0,7,0,'remtravel SAY_REM_AGGRO'),

(-1000340,'%s howls in delight at the sight of his lunch!',0,2,0,0,'kyle EMOTE_SEE_LUNCH'),
(-1000341,'%s eats his lunch.',0,2,0,0,'kyle EMOTE_EAT_LUNCH'),
(-1000342,'%s thanks you with a special dance.',0,2,0,0,'kyle EMOTE_DANCE'),

(-1000343,'Is the way clear? Let\'s get out while we can, $N.',0,0,0,0,'kayra SAY_START'),
(-1000344,'Looks like we won\'t get away so easy. Get ready!',0,0,0,0,'kayra SAY_AMBUSH1'),
(-1000345,'Let\'s keep moving. We\'re not safe here!',0,0,0,0,'kayra SAY_PROGRESS'),
(-1000346,'Look out, $N! Enemies ahead!',0,0,0,0,'kayra SAY_AMBUSH2'),
(-1000347,'We\'re almost to the refuge! Let\'s go.',0,0,0,0,'kayra SAY_END'),

(-1000348,'Ah...the wondrous sound of kodos. I love the way they make the ground shake... inspect the beast for me.',0,0,0,0,'kodo round SAY_SMEED_HOME_1'),
(-1000349,'Hey, look out with that kodo! You had better inspect that beast before i give you credit!',0,0,0,0,'kodo round SAY_SMEED_HOME_2'),
(-1000350,'That kodo sure is a beauty. Wait a minute, where are my bifocals? Perhaps you should inspect the beast for me.',0,0,0,0,'kodo round SAY_SMEED_HOME_3'),

(-1000351,'You, there! Hand over that moonstone and nobody gets hurt!',0,1,0,0,'sprysprocket SAY_START'),
(-1000352,'%s takes the Southfury moonstone and escapes into the river. Follow her!',0,3,0,0,'sprysprocket EMOTE_START'),
(-1000353,'Just chill!',0,4,0,0,'sprysprocket SAY_WHISPER_CHILL'),
(-1000354,'Stupid grenade picked a fine time to backfire! So much for high quality goblin engineering!',0,1,0,0,'sprysprocket SAY_GRENADE_FAIL'),
(-1000355,'All right, you win! I surrender! Just don\'t hurt me!',0,1,0,0,'sprysprocket SAY_END'),

(-1000356,'Okay, okay... gimme a minute to rest now. You gone and beat me up good.',0,0,1,14,'calvin SAY_COMPLETE'),

(-1000357,'Let\'s go before they find out I\'m free!',0,0,0,1,'KAYA_SAY_START'),
(-1000358,'Look out! We\'re under attack!',0,0,0,0,'KAYA_AMBUSH'),
(-1000359,'Thank you for helping me. I know my way back from here.',0,0,0,0,'KAYA_END'),

(-1000360,'The strands of LIFE have been severed! The Dreamers must be avenged!',0,1,0,0,' ysondre SAY_AGGRO'),
(-1000361,'Come forth, ye Dreamers - and claim your vengeance!',0,1,0,0,' ysondre SAY_SUMMONDRUIDS'),

(-1000362,'Let\'s go $N. I am ready to reach Whitereach Post.',0,0,1,0,'paoka SAY_START'),
(-1000363,'Now this looks familiar. If we keep heading east, I think we can... Ahh, Wyvern on the attack!',0,0,1,0,'paoka SAY_WYVERN'),
(-1000364,'Thanks a bunch... I can find my way back to Whitereach Post from here. Be sure to talk with Motega Firemane; perhaps you can keep him from sending me home.',0,0,1,0,'paoka SAY_COMPLETE'),

(-1000365,'Be on guard... Arnak has some strange power over the Grimtotem... they will not be happy to see me escape.',0,0,1,0,'lakota SAY_LAKO_START'),
(-1000366,'Look out, the Grimtotem are upon us!',0,0,1,0,'lakota SAY_LAKO_LOOK_OUT'),
(-1000367,'Here they come.',0,0,1,0,'lakota SAY_LAKO_HERE_COME'),
(-1000368,'More Grimtotems are coming this way!',0,0,1,0,'lakota SAY_LAKO_MORE'),
(-1000369,'Finally, free at last... I must be going now, thanks for helping me escape. I can get back to Freewind Post by myself.',0,0,1,0,'lakota SAY_LAKO_END'),

(-1000370,'Stay close, $n. I\'ll need all the help I can get to break out of here. Let\'s go!',0,0,1,1,'gilthares SAY_GIL_START'),
(-1000371,'At last! Free from Northwatch Hold! I need a moment to catch my breath...',0,0,1,5,'gilthares SAY_GIL_AT_LAST'),
(-1000372,'Now i feel better. Let\'s get back to Ratchet. Come on, $n.',0,0,1,23,'gilthares SAY_GIL_PROCEED'),
(-1000373,'Looks like the Southsea Freeboters are heavily entrenched on the coast. This could get rough.',0,0,1,25,'gilthares SAY_GIL_FREEBOOTERS'),
(-1000374,'Help! $C attacking!',0,0,1,0,'gilthares SAY_GIL_AGGRO_1'),
(-1000375,'$C heading this way fast! Time for revenge!',0,0,1,0,'gilthares SAY_GIL_AGGRO_2'),
(-1000376,'$C coming right at us!',0,0,1,0,'gilthares SAY_GIL_AGGRO_3'),
(-1000377,'Get this $C off of me!',0,0,1,0,'gilthares SAY_GIL_AGGRO_4'),
(-1000378,'Almost back to Ratchet! Let\'s keep up the pace...',0,0,1,0,'gilthares SAY_GIL_ALMOST'),
(-1000379,'Ah, the sweet salt air of Ratchet.',0,0,1,0,'gilthares SAY_GIL_SWEET'),
(-1000380,'Captain Brightsun, $N here has freed me! $N, i am certain the Captain will reward your bravery.',0,0,1,66,'gilthares SAY_GIL_FREED'),

(-1000381,'I sense the tortured spirits, $n. They are this way, come quickly!',0,0,0,1,'wilda SAY_WIL_START'),
(-1000382,'Watch out!',0,0,0,0,'wilda SAY_WIL_AGGRO1'),
(-1000383,'Naga attackers! Defend yourself!',0,0,0,0,'wilda SAY_WIL_AGGRO2'),
(-1000384,'Grant me protection $n, i must break trough their foul magic!',0,0,0,0,'wilda SAY_WIL_PROGRESS1'),
(-1000385,'The naga of Coilskar are exceptionally cruel to their prisoners. It is a miracle that I survived inside that watery prison for as long as I did. Earthmother be praised.',0,0,0,0,'wilda SAY_WIL_PROGRESS2'),
(-1000386,'Now we must find the exit.',0,0,0,0,'wilda SAY_WIL_FIND_EXIT'),
(-1000387,'Lady Vashj must answer for these atrocities. She must be brought to justice!',0,0,0,0,'wilda SAY_WIL_PROGRESS4'),
(-1000388,'The tumultuous nature of the great waterways of Azeroth and Draenor are a direct result of tormented water spirits.',0,0,0,0,'wilda SAY_WIL_PROGRESS5'),
(-1000389,'It shouldn\'t be much further, $n. The exit is just up ahead.',0,0,0,0,'wilda SAY_WIL_JUST_AHEAD'),
(-1000390,'Thank you, $n. Please return to my brethren at the Altar of Damnation, near the Hand of Gul\'dan, and tell them that Wilda is safe. May the Earthmother watch over you...',0,0,0,0,'wilda SAY_WIL_END'),

(-1000391,'I\'m Thirsty.',0,0,0,0,'tooga SAY_TOOG_THIRST'),
(-1000392,'Torta must be so worried.',0,0,0,0,'tooga SAY_TOOG_WORRIED'),
(-1000393,'Torta, my love! I have returned at long last.',0,0,0,0,'tooga SAY_TOOG_POST_1'),
(-1000394,'You have any idea how long I\'ve been waiting here? And where\'s dinner? All that time gone and nothing to show for it?',0,0,0,0,'tooga SAY_TORT_POST_2'),
(-1000395,'My dearest Torta. I have been gone for so long. Finally we are reunited. At long last our love can blossom again.',0,0,0,0,'tooga SAY_TOOG_POST_3'),
(-1000396,'Enough with the rambling. I am starving! Now, get your dusty shell into that ocean and bring momma some grub.',0,0,0,0,'tooga SAY_TORT_POST_4'),
(-1000397,'Yes Torta. Whatever your heart desires...',0,0,0,0,'tooga SAY_TOOG_POST_5'),
(-1000398,'And try not to get lost this time...',0,0,0,0,'tooga SAY_TORT_POST_6'),

(-1000399,'Peace is but a fleeting dream! Let the NIGHTMARE reign!',0,1,0,0,'taerar SAY_AGGRO'),
(-1000400,'Children of Madness - I release you upon this world!',0,1,0,0,'taerar SAY_SUMMONSHADE'),

(-1000401,'Hope is a DISEASE of the soul! This land shall wither and die!',0,1,0,0,'emeriss SAY_AGGRO'),
(-1000402,'Taste your world\'s corruption!',0,1,0,0,'emeriss SAY_CASTCORRUPTION'),

(-1000403,'Rin\'ji is free!',0,0,0,0,'SAY_RIN_FREE'),
(-1000404,'Attack my sisters! The troll must not escape!',0,0,0,0,'SAY_RIN_BY_OUTRUNNER'),
(-1000405,'Rin\'ji needs help!',0,0,1,0,'SAY_RIN_HELP_1'),
(-1000406,'Rin\'ji is being attacked!',0,0,1,0,'SAY_RIN_HELP_2'),
(-1000407,'Rin\'ji can see road now, $n. Rin\'ji knows the way home.',0,0,1,0,'SAY_RIN_COMPLETE'),
(-1000408,'Rin\'ji will tell you secret now... $n, should go to the Overlook Cliffs. Rin\'ji hid something on island  there',0,0,1,0,'SAY_RIN_PROGRESS_1'),
(-1000409,'You find it, you keep it! Don\'t tell no one that Rin\'ji talked to you!',0,0,1,0,'SAY_RIN_PROGRESS_2'),

(-1000410,'Here they come! Defend yourself!',0,0,1,5,'kanati SAY_KAN_START'),

(-1000411,'Why don\'t we deal with you now, Hendel? Lady Proudmoore will speak for you back in the tower.',0,0,7,0,'hendel SAY_PROGRESS_1_TER'),
(-1000412,'Please... please... Miss Proudmore. I didn\'t mean to...',0,0,7,0,'hendel SAY_PROGRESS_2_HEN'),
(-1000413,'I apologize for taking so long to get here. I wanted Lady Proudmoore to be present also.',0,0,7,0,'hendel SAY_PROGRESS_3_TER'),
(-1000414,'We can only stay a few moments before returning to the tower. If you wish to speak to us more you may find us there.',0,0,7,0,'hendel SAY_PROGRESS_4_TER'),
(-1000415,'%s, too injured, gives up the chase.',0,2,0,0,'hendel EMOTE_SURRENDER'),

(-1000416,'Well, I\'m not sure how far I\'ll make it in this state... I\'m feeling kind of faint...',0,0,0,0,'ringo SAY_RIN_START_1'),
(-1000417,'Remember, if I faint again, the water that Spraggle gave you will revive me.',0,0,0,0,'ringo SAY_RIN_START_2'),
(-1000418,'The heat... I can\'t take it...',0,0,0,0,'ringo SAY_FAINT_1'),
(-1000419,'Maybe... you could carry me?',0,0,0,0,'ringo SAY_FAINT_2'),
(-1000420,'Uuuuuuggggghhhhh....',0,0,0,0,'ringo SAY_FAINT_3'),
(-1000421,'I\'m not feeling so well...',0,0,0,0,'ringo SAY_FAINT_4'),
(-1000422,'Where... Where am I?',0,0,0,0,'ringo SAY_WAKE_1'),
(-1000423,'I am feeling a little better now, thank you.',0,0,0,0,'ringo SAY_WAKE_2'),
(-1000424,'Yes, I must go on.',0,0,0,0,'ringo SAY_WAKE_3'),
(-1000425,'How am I feeling? Quite soaked, thank you.',0,0,0,0,'ringo SAY_WAKE_4'),
(-1000426,'Spraggle! I didn\'t think I\'d make it back!',0,0,0,0,'ringo SAY_RIN_END_1'),
(-1000427,'Ringo! You\'re okay!',0,0,0,0,'ringo SAY_SPR_END_2'),
(-1000428,'Oh... I\'m feeling faint...',0,0,0,0,'ringo SAY_RIN_END_3'),
(-1000429,'%s collapses onto the ground.',0,2,0,0,'ringo EMOTE_RIN_END_4'),
(-1000430,'%s stands up after a short pause.',0,2,0,0,'ringo EMOTE_RIN_END_5'),
(-1000431,'Ugh.',0,0,0,0,'ringo SAY_RIN_END_6'),
(-1000432,'Ringo? Wake up! Don\'t worry, I\'ll take care of you.',0,0,0,0,'ringo SAY_SPR_END_7'),
(-1000433,'%s fades away after a long pause.',0,2,0,0,'ringo EMOTE_RIN_END_8'),

(-1000434,'Liladris has been waiting for me at Maestra\'s Post, so we should make haste, $N.',0,0,0,0,'kerlonian SAY_KER_START'),
(-1000435,'%s looks very sleepy...',0,2,0,0,'kerlonian EMOTE_KER_SLEEP_1'),
(-1000436,'%s suddenly falls asleep',0,2,0,0,'kerlonian EMOTE_KER_SLEEP_2'),
(-1000437,'%s begins to drift off...',0,2,0,0,'kerlonian EMOTE_KER_SLEEP_3'),
(-1000438,'This looks like the perfect place for a nap...',0,0,0,0,'kerlonian SAY_KER_SLEEP_1'),
(-1000439,'Yaaaaawwwwwnnnn...',0,0,0,0,'kerlonian SAY_KER_SLEEP_2'),
(-1000440,'Oh, I am so tired...',0,0,0,0,'kerlonian SAY_KER_SLEEP_3'),
(-1000441,'You don\'t mind if I stop here for a moment, do you?',0,0,0,0,'kerlonian SAY_KER_SLEEP_4'),
(-1000442,'Be on the alert! The Blackwood furbolgs are numerous in the area...',0,0,0,0,'kerlonian SAY_KER_ALERT_1'),
(-1000443,'It\'s quiet... Too quiet...',0,0,0,0,'kerlonian SAY_KER_ALERT_2'),
(-1000444,'Oh, I can see Liladris from here... Tell her I\'m here, won\'t you?',0,0,0,0,'kerlonian SAY_KER_END'),
(-1000445,'%s wakes up!',0,2,0,0,'kerlonian EMOTE_KER_AWAKEN'),

(-1000446,'A-Me good. Good, A-Me. Follow... follow A-Me. Home. A-Me go home.',0,0,0,0,'ame01 SAY_AME_START'),
(-1000447,'Good... good, A-Me. A-Me good. Home. Find home.',0,0,0,0,'ame01 SAY_AME_PROGRESS'),
(-1000448,'A-Me home! A-Me good! Good A-Me. Home. Home. Home.',0,0,0,0,'ame01 SAY_AME_END'),
(-1000449,'$c, no hurt A-Me. A-Me good.',0,0,0,0,'ame01 SAY_AME_AGGRO1'),
(-1000450,'Danger. Danger! $c try hurt A-Me.',0,0,0,0,'ame01 SAY_AME_AGGRO2'),
(-1000451,'Bad, $c. $c, bad!',0,0,0,0,'ame01 SAY_AME_AGGRO3'),

(-1000452,'I noticed some fire on that island over there. A human, too. Let\'s go check it out, $n.',0,0,1,0,'ogron SAY_OGR_START'),
(-1000453,'That\'s Reethe alright. Let\'s go see what he has to say, yeah?',0,0,1,1,'ogron SAY_OGR_SPOT'),
(-1000454,'W-what do you want? Just leave me alone...',0,0,0,6,'ogron SAY_OGR_RET_WHAT'),
(-1000455,'I swear. I didn\'t steal anything from you! Here, take some of my supplies, just go away!',0,0,0,27,'ogron SAY_OGR_RET_SWEAR'),
(-1000456,'Just tell us what you know about the Shady Rest Inn, and I won\'t bash your skull in.',0,0,1,0,'ogron SAY_OGR_REPLY_RET'),
(-1000457,'I... Well, I may of taken a little thing or two from the inn... but what would an ogre care about that?',0,0,0,6,'ogron SAY_OGR_RET_TAKEN'),
(-1000458,'Look here, if you don\'t tell me about the fire--',0,0,1,0,'ogron SAY_OGR_TELL_FIRE'),
(-1000459,'Not one step closer, ogre!',0,0,0,27,'ogron SAY_OGR_RET_NOCLOSER'),
(-1000460,'And I don\'t know anything about this fire of yours...',0,0,0,0,'ogron SAY_OGR_RET_NOFIRE'),
(-1000461,'What was that? Did you hear something?',0,0,0,0,'ogron SAY_OGR_RET_HEAR'),
(-1000462,'Paval Reethe! Found you at last. And consorting with ogres now? No fear, even deserters and traitors are afforded some mercy.',0,0,0,0,'ogron SAY_OGR_CAL_FOUND'),
(-1000463,'Private, show Lieutenant Reethe some mercy.',0,0,0,29,'ogron SAY_OGR_CAL_MERCY'),
(-1000464,'Gladly, sir.',0,0,0,0,'ogron SAY_OGR_HALL_GLAD'),
(-1000465,'%s staggers backwards as the arrow lodges itself deeply in his chest.',0,2,0,0,'ogron EMOTE_OGR_RET_ARROW'),
(-1000466,'Ugh... Hallan, didn\'t think you had it in you...',0,0,0,34,'ogron SAY_OGR_RET_ARROW'),
(-1000467,'Now, let\'s clean up the rest of the trash, men!',0,0,0,0,'ogron SAY_OGR_CAL_CLEANUP'),
(-1000468,'Damn it! You\'d better not die on me, human!',0,0,1,0,'ogron SAY_OGR_NODIE'),
(-1000469,'Still with us, Reethe?',0,0,1,0,'ogron SAY_OGR_SURVIVE'),
(-1000470,'Must be your lucky day. Alright, I\'ll talk. Just leave me alone. Look, you\'re not going to believe me, but it wa... oh, Light, looks like the girl could shoot...',0,0,0,0,'ogron SAY_OGR_RET_LUCKY'),
(-1000471,'By the way, thanks for watching my back.',0,0,1,0,'ogron SAY_OGR_THANKS'),

(-1000472,'1...',0,3,0,0,'mana bomb SAY_COUNT_1'),
(-1000473,'2...',0,3,0,0,'mana bomb SAY_COUNT_2'),
(-1000474,'3...',0,3,0,0,'mana bomb SAY_COUNT_3'),
(-1000475,'4...',0,3,0,0,'mana bomb SAY_COUNT_4'),
(-1000476,'5...',0,3,0,0,'mana bomb SAY_COUNT_5'),

(-1000477,'Let us leave this place. I\'ve had enough of these madmen!',0,0,0,0,'akuno SAY_AKU_START'),
(-1000478,'You\'ll go nowhere, fool!',0,0,0,0,'akuno SAY_AKU_AMBUSH_A'),
(-1000479,'Beware! More cultists come!',0,0,0,0,'akuno SAY_AKU_AMBUSH_B'),
(-1000480,'You will not escape us so easily!',0,0,0,0,'akuno SAY_AKU_AMBUSH_B_REPLY'),
(-1000481,'I can find my way from here. My friend Mekeda will reward you for your kind actions.',0,0,0,0,'akuno SAY_AKU_COMPLETE'),

(-1000482,'Look out!',0,0,0,0,'maghar captive SAY_MAG_START'),
(-1000483,'Don\'t let them escape! Kill the strong one first!',0,0,0,0,'maghar captive SAY_MAG_NO_ESCAPE'),
(-1000484,'More of them coming! Watch out!',0,0,0,0,'maghar captive SAY_MAG_MORE'),
(-1000485,'Where do you think you\'re going? Kill them all!',0,0,0,0,'maghar captive SAY_MAG_MORE_REPLY'),
(-1000486,'Ride the lightning, filth!',0,0,0,0,'maghar captive SAY_MAG_LIGHTNING'),
(-1000487,'FROST SHOCK!!!',0,0,0,0,'maghar captive SAY_MAG_SHOCK'),
(-1000488,'It is best that we split up now, in case they send more after us. Hopefully one of us will make it back to Garrosh. Farewell stranger.',0,0,0,0,'maghar captive SAY_MAG_COMPLETE'),

(-1000489,'Show our guest around Shattrath, will you? Keep an eye out for pickpockets in the lower city.',0,0,0,0,'SAY_KHAD_START'),
(-1000490,'A newcomer to Shattrath! Make sure to drop by later. We can always use a hand with the injured.',0,0,0,0,'SAY_KHAD_INJURED'),
(-1000491,'Be mindful of what you say, this one\'s being shown around by Khadgar\'s pet.',0,0,0,0,'SAY_KHAD_MIND_YOU'),
(-1000492,'Are you joking? I\'m a Scryer, I always watch what i say. More enemies than allies in this city, it seems.',0,0,0,0,'SAY_KHAD_MIND_ALWAYS'),
(-1000493,'Light be with you, $n. And welcome to Shattrath.',0,0,0,0,'SAY_KHAD_ALDOR_GREET'),
(-1000494,'We\'re rather selective of who we befriend, $n. You think you have what it takes?',0,0,0,0,'SAY_KHAD_SCRYER_GREET'),
(-1000495,'Khadgar himself is showing you around? You must have made a good impression, $n.',0,0,0,0,'SAY_KHAD_HAGGARD'),

(-1000496,'%s lifts its head into the air, as if listening for something.',0,2,0,0,'ancestral wolf EMOTE_WOLF_LIFT_HEAD'),
(-1000497,'%s lets out a howl that rings across the mountains to the north and motions for you to follow.',0,2,0,0,'ancestral wolf EMOTE_WOLF_HOWL'),
(-1000498,'Welcome, kind spirit. What has brought you to us?',0,0,0,0,'ancestral wolf SAY_WOLF_WELCOME'),

(-1000499,'Puny $r wanna fight %s? Me beat you! Me boss here!',0,0,1,0,'morokk SAY_MOR_CHALLENGE'),
(-1000500,'Me scared! Me run now!',0,1,0,0,'morokk SAY_MOR_SCARED'),

(-1000501,'Are you sure that you are ready? If we do not have a group of your allies to aid us, we will surely fail.',0,0,1,0,'muglash SAY_MUG_START1'),
(-1000502,'This will be a though fight, $n. Follow me closely.',0,0,1,0,'muglash SAY_MUG_START2'),
(-1000503,'This is the brazier, $n. Put it out. Vorsha is a beast, worthy of praise from no one!',0,0,1,0,'muglash SAY_MUG_BRAZIER'),
(-1000504,'Now we must wait. It won\'t be long before the naga realize what we have done.',0,0,1,0,'muglash SAY_MUG_BRAZIER_WAIT'),
(-1000505,'Be on your guard, $n!',0,0,1,0,'muglash SAY_MUG_ON_GUARD'),
(-1000506,'Perhaps we will get a moment to rest. But i will not give up until we have faced off against Vorsha!',0,0,1,0,'muglash SAY_MUG_REST'),
(-1000507,'We have done it!',0,0,1,0,'muglash SAY_MUG_DONE'),
(-1000508,'You have my deepest gratitude. I thank you.',0,0,1,0,'muglash SAY_MUG_GRATITUDE'),
(-1000509,'I am going to patrol the area for a while longer and ensure that things are truly safe.',0,0,1,0,'muglash SAY_MUG_PATROL'),
(-1000510,'Please return to Zoram\'gar and report our success to the Warsong runner.',0,0,1,0,'muglash SAY_MUG_RETURN'),

(-1000511,'Aright, listen up! Form a circle around me and move out!',0,0,0,0,'letoll SAY_LE_START'),
(-1000512,'Aright, $r, just keep us safe from harm while we work. We\'ll pay you when we return.',0,0,0,0,'letoll SAY_LE_KEEP_SAFE'),
(-1000513,'The dig site is just north of here.',0,0,0,0,'letoll SAY_LE_NORTH'),
(-1000514,'We\'re here! Start diggin\'!',0,0,0,0,'letoll SAY_LE_ARRIVE'),
(-1000515,'I think there\'s somethin\' buried here, beneath the sand!',0,0,0,0,'letoll SAY_LE_BURIED'),
(-1000516,'Almost got it!',0,0,0,0,'letoll SAY_LE_ALMOST'),
(-1000517,'By brann\'s brittle bananas! What is it!? It... It looks like a drum.',0,0,0,0,'letoll SAY_LE_DRUM'),
(-1000518,'Wow... a drum.',0,0,0,0,'letoll SAY_LE_DRUM_REPLY'),
(-1000519,'This discovery will surely rock the foundation of modern archaeology.',0,0,0,0,'letoll SAY_LE_DISCOVERY'),
(-1000520,'Yea, great. Can we leave now? This desert is giving me hives.',0,0,0,0,'letoll SAY_LE_DISCOVERY_REPLY'),
(-1000521,'Have ye gone mad? You expect me to leave behind a drum without first beatin\' on it? Not this son of Ironforge! No sir!',0,0,0,0,'letoll SAY_LE_NO_LEAVE'),
(-1000522,'This reminds me of that one time where you made us search Silithus for evidence of sand gnomes.',0,0,0,0,'letoll SAY_LE_NO_LEAVE_REPLY1'),
(-1000523,'Or that time when you told us that you\'d discovered the cure for the plague of the 20th century. What is that even? 20th century?',0,0,0,0,'letoll SAY_LE_NO_LEAVE_REPLY2'),
(-1000524,'I don\'t think it can top the one time where he told us that he\'d heard that Artha\'s "cousin\'s" skeleton was frozen beneath a glacier in Winterspring. I\'ll never forgive you for that one, Letoll. I mean honestly... Artha\'s cousin?',0,0,0,0,'letoll SAY_LE_NO_LEAVE_REPLY3'),
(-1000525,'I dunno. It can\'t possibly beat the time he tried to convince us that we\'re all actually a figment of some being\'s imagination and that they only use us for their own personal amusement. That went over well during dinner with the family.',0,0,0,0,'letoll SAY_LE_NO_LEAVE_REPLY4'),
(-1000526,'Shut yer yaps! I\'m gonna bang on this drum and that\'s that!',0,0,0,0,'letoll SAY_LE_SHUT'),
(-1000527,'Say, do you guys hear that?',0,0,0,0,'letoll SAY_LE_REPLY_HEAR'),
(-1000528,'IN YOUR FACE! I told you there was somethin\' here!',0,0,0,0,'letoll SAY_LE_IN_YOUR_FACE'),
(-1000529,'Don\'t just stand there! Help him out!',0,0,0,0,'letoll SAY_LE_HELP_HIM'),
(-1000530,'%s picks up the drum.',0,2,0,0,'letoll EMOTE_LE_PICK_UP'),
(-1000531,'You\'ve been a tremendous help, $r! Let\'s get out of here before more of those things show up! I\'ll let Dwarfowitz know you did the job asked of ya\' admirably.',0,0,0,0,'letoll SAY_LE_THANKS'),

(-1000532,'At your command, my liege...',0,0,0,0,'torloth TORLOTH_DIALOGUE1'),
(-1000533,'As you desire, Lord Illidan.',0,0,0,0,'torloth TORLOTH_DIALOGUE2'),
(-1000534,'Yes, Lord Illidan, I would sacrifice to you this magnificent physique. On this day you will fall - another victim of Torloth...',0,0,0,0,'torloth TORLOTH_DIALOGUE3'),
(-1000535,'Destroy them, Torloth. Let lose their blood like a river upon this hallowed ground.',0,0,0,0,'lordillidan ILLIDAN_DIALOGUE'),
(-1000536,'What manner of fool dares stand before Illidan Stormrage? Soldiers, destroy these insects!',0,1,0,0,'lordillidan ILLIDAN_SUMMON1'),
(-1000537,'You are no challenge for the Crimson Sigil. Mind breakers, end this nonsense.',0,1,0,0,'lordillidan ILLIDAN_SUMMON2'),
(-1000538,'Run while you still can. The highlords come soon...',0,1,0,0,'lordillidan ILLIDAN_SUMMON3'),
(-1000539,'Torloth your master calls!',0,1,0,0,'lordillidan ILLIDAN_SUMMON4'),
(-1000540,'So you have defeated the Crimson Sigil. You now seek to challenge my rule? Not even Arthas could defeat me, yet you dare to even harbor such thoughts? Then I say to you, come! Come $N! The Black Temple awaits...',0,1,0,0,'lordillidan EVENT_COMPLETED'),

(-1000541,'%s jumps into the moonwell and goes underwater...',0,2,0,0,'kitten EMOTE_SAB_JUMP'),
(-1000542,'%s follows $n obediertly.',0,2,0,0,'kitten EMOTE_SAB_FOLLOW'),

(-1000543,'Why have you come here, outsider? You will only find pain! Our fate will be yours...',0,0,0,25,'restless app SAY_RAND_1'),
(-1000544,'It was ... terrible... the demon...',0,0,0,25,'restless app SAY_RAND_2'),
(-1000545,'The darkness... the corruption... they came too quickly for anyone to know...',0,0,0,25,'restless app SAY_RAND_3'),
(-1000546,'The darkness will consume all... all the living...',0,0,0,25,'restless app SAY_RAND_4'),
(-1000547,'It is too late for us, living one. Take yourself and your friend away from here before you both are... claimed...',0,0,0,25,'restless app SAY_RAND_5'),
(-1000548,'It is too late for Jarl... its hold is too strong...',0,0,0,25,'restless app SAY_RAND_6'),
(-1000549,'Go away, whoever you are! Witch Hill is mine... mine!',0,0,0,25,'restless app SAY_RAND_7'),
(-1000550,'The manor... someone else... will soon be consumed...',0,0,0,25,'restless app SAY_RAND_8'),

(-1000551,'The %s is angered by your request and attacks!',0,2,0,0,'woodlands EMOTE_AGGRO'),
(-1000552,'Breaking off a piece of its bark, the %s hands it to you before departing.',0,2,0,0,'woodlands EMOTE_CREATE'),

(-1000553,'Be ready, $N. I hear the council returning. Prepare to ambush!',0,0,0,0,'deathstalker_faerleia SAY_START'),
(-1000554,'Well done. A blow to Arugal no doubt!',0,0,0,0,'deathstalker_faerleia SAY_END'),

(-1000555,'Back... to work...',0,0,0,0,'exhausted vrykul SAY_RAND_WORK1'),
(-1000556,'You treat us worse than animals!',0,0,0,0,'exhausted vrykul SAY_RAND_WORK2'),
(-1000557,'We will have revenge...some day.',0,0,0,0,'exhausted vrykul SAY_RAND_WORK3'),
(-1000558,'Curse you! You will not treat me like a beast!',0,0,0,0,'exhausted vrykul SAY_RAND_ATTACK1'),
(-1000559,'I\'d rather die fighting than live like a slave.',0,0,0,0,'exhausted vrykul SAY_RAND_ATTACK2'),
(-1000560,'Enough! I will teach you some manners, wench!',0,0,0,0,'exhausted vrykul SAY_RAND_ATTACK3'),

(-1000561,'My wounds are grave. Forgive my slow pace but my injuries won''t allow me to walk any faster.',0,0,0,0,'SAY_CORPORAL_KEESHAN_1'),
(-1000562,'Ah, fresh air, at last! I need a moment to rest.',0,0,0,0,'SAY_CORPORAL_KEESHAN_2'),
(-1000563,'The Blackrock infestation is thick in these parts. I will do my best to keep the pace. Let''s go!',0,0,0,0,'SAY_CORPORAL_KEESHAN_3'),
(-1000564,'Marshal Marris, sir. Corporal Keeshan of the 12th Sabre Regiment returned from battle and reporting for duty!',0,0,0,0,'SAY_CORPORAL_KEESHAN_4'),
(-1000565,'Brave adventurer, thank you for rescuing me! I am sure Marshal Marris will reward your kind deed.',0,0,0,0,'SAY_CORPORAL_KEESHAN_5'),

(-1000566,'Stand back! Stand clear! The infernal will need to be given a wide berth!',0,0,0,0,'SAY_NIBY_1'),
(-1000567,'BOW DOWN TO THE ALMIGHTY! BOW DOWN BEFORE MY INFERNAL DESTRO... chicken?',0,0,0,0,'SAY_NIBY_2'),
(-1000568,'%s rolls on the floor laughing.',0,2,0,0,'EMOTE_IMPSY_1'),
(-1000569,'Niby, you\' re an idiot.',0,0,0,0,'SAY_IMPSY_1'),
(-1000570,'Silence, servant! Vengeance will be mine! Death to Stormwind! Death by chicken!',0,0,0,0,'SAY_NIBY_3'),

(-1000571,'Help! I\'ve only one hand to defend myself with.',0,0,0,0,'SAY_MIRAN_1'),
(-1000572,'Feel the power of the Dark Iron Dwarves!',0,0,0,0,'SAY_DARK_IRON_DWARF'),
(-1000573,'Send them on! I\'m not afraid of some scrawny beasts!',0,0,0,0,'SAY_MIRAN_2'),
(-1000574,'Ah, here at last! It\'s going to feel so good to get rid of these barrels.',0,0,0,0,'SAY_MIRAN_3'),

(-1000575,'Together we will fight our way out of here. Are you ready?',0,0,0,0,'Lurgglbr - SAY_START_1'),
(-1000576,'Then we leave.',0,0,0,0,'Lurgglbr - SAY_START_2'),
(-1000577,'This is far enough. I can make it on my own from here.',0,0,0,0,'Lurgglbr - SAY_END_1'),
(-1000578,'Thank you for helping me $r. Please tell the king I am back.',0,0,0,0,'Lurgglbr - SAY_END_2'),

(-1000579,'Insolent fool! You thought to steal Zelemar\'s blood? You shall pay with your own!',0,1,0,0,'Zelemar the Wrathful - Aggro'),

(-1000580,'Sleep now, young one ...',0,0,0,0,'Raelorasz SAY_SLEEP'),
(-1000581,'A wonderful specimen.',0,0,0,0,'Raeloarsz SAY_SPECIMEN'),

(-1000582,'Help! Please, You must help me!',0,0,0,0,'Galen - periodic say'),
(-1000583,'Let us leave this place.',0,0,0,0,'Galen - quest accepted'),
(-1000584,'Look out! The $c attacks!',0,0,0,0,'Galen - aggro 1'),
(-1000585,'Help! I\'m under attack!',0,0,0,0,'Galen - aggro 2'),
(-1000586,'Thank you $N. I will remember you always. You can find my strongbox in my camp, north of Stonard.',0,0,0,0,'Galen - quest complete'),
(-1000587,'%s whispers to $N the secret to opening his strongbox.',0,2,0,0,'Galen - emote whisper'),
(-1000588,'%s disappears into the swamp.',0,2,0,0,'Galen - emote disapper');

-- -1 033 000 SHADOWFANG KEEP
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1033000,'Follow me and I\'ll open the courtyard door for you.',0,0,7,1,'prisoner ashcrombe SAY_FREE_AS'),
(-1033001,'I have just the spell to get this door open. Too bad the cell doors weren\'t locked so haphazardly.',0,0,7,1,'prisoner ashcrombe SAY_OPEN_DOOR_AS'),
(-1033002,'There it is! Wide open. Good luck to you conquering what lies beyond. I must report back to the Kirin Tor at once!',0,0,7,1,'prisoner ashcrombe SAY_POST_DOOR_AS'),

(-1033003,'Free from this wretched cell at last! Let me show you to the courtyard....',0,0,1,1,'prisoner adamant SAY_FREE_AD'),
(-1033004,'You are indeed courageous for wanting to brave the horrors that lie beyond this door.',0,0,1,1,'prisoner adamant SAY_OPEN_DOOR_AD'),
(-1033005,'There we go!',0,0,1,1,'prisoner adamant SAY_POST1_DOOR_AD'),
(-1033006,'Good luck with Arugal. I must hurry back to Hadrec now.',0,0,1,1,'prisoner adamant SAY_POST2_DOOR_AD'),

(-1033007,'About time someone killed the wretch.',0,0,1,1,'prisoner adamant SAY_BOSS_DIE_AD'),
(-1033008,'For once I agree with you... scum.',0,0,7,1,'prisoner ashcrombe SAY_BOSS_DIE_AS'),

(-1033009,'I have changed my mind loyal servants, you do not need to bring the prisoner all the way to my study, I will deal with him here and now.',0,0,0,1,'arugal SAY_INTRO_1'),
(-1033010,'Vincent!  You and your pathetic ilk will find no more success in routing my sons and I than those beggardly remnants of the Kirin Tor.',0,0,0,0,'arugal SAY_INTRO_2'),
(-1033011,'If you will not serve my Master with your sword and knowledge of his enemies...',0,0,0,1,'arugal SAY_INTRO_3'),
(-1033012,'Your moldering remains will serve ME as a testament to what happens when one is foolish enough to trespass in my domain!\n',0,0,0,0,'arugal SAY_INTRO_4'),

(-1033013,'Who dares interfere with the Sons of Arugal?',0,1,0,0,'boss_arugal YELL_FENRUS'),
(-1033014,'%s vanishes.',0,2,0,0,'prisoner ashcrombe EMOTE_VANISH_AS'),
(-1033015,'%s fumbles with the rusty lock on the courtyard door.',0,2,0,432,'prisoner adamant EMOTE_UNLOCK_DOOR_AD'),
(-1033016,'Arrrgh!',0,0,0,0,'deathstalker vincent SAY_VINCENT_DIE'),
(-1033017,'You, too, shall serve!',5793,1,0,0,'boss_arugal YELL_AGGRO'),
(-1033018,'Another Falls!',5795,1,0,0,'boss_arugal YELL_KILLED_PLAYER'),
(-1033019,'Release your rage!',5797,1,0,0,'boss_arugal YELL_COMBAT');

-- -1 034 000 STOCKADES

-- -1 036 000 DEADMINES
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1036000,'You there, check out that noise!',5775,1,7,0,'smite INST_SAY_ALARM1'),
(-1036001,'We\'re under attack! A vast, ye swabs! Repel the invaders!',5777,1,7,0,'smite INST_SAY_ALARM2');

-- -1 043 000 WAILING CAVERNS

-- -1 047 000 RAZORFEN KRAUL

-- -1 048 000 BLACKFATHOM DEEPS

-- -1 070 000 ULDAMAN
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1070000,'None may steal the secrets of the makers!',5851,1,0,0,'ironaya SAY_AGGRO');

-- -1 090 000 GNOMEREGAN

-- -1 109 000 SUNKEN TEMPLE
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1109000,'The walls of the chamber tremble. Something is happening...',0,2,0,0,'malfurion stormrage EMOTE_MALFURION'),
(-1109001,'Be steadfast, champion. I know why it is that you are here and I know what it is that you seek. Eranikus will not give up the shard freely. He has been twisted... twisted by the same force that you seek to destroy.',0,0,0,0,'malfurion stormrge SAY_MALFURION1'),
(-1109002,'Are you really surprised? Is it hard to believe that the power of an Old God could reach even inside the Dream? It is true - Eranikus, Tyrant of the Dream, wages a battle against us all. The Nightmare follows in his wake of destruction.',0,0,0,0,'malfurion stormrge SAY_MALFURION2'),
(-1109003,'Understand this, Eranikus wants nothing more than to be brought to Azeroth from the Dream. Once he is out, he will stop at nothing to destroy my physical manifestation. This, however, is the only way in which you could recover the scepter shard.',0,0,0,0,'malfurion stormrge SAY_MAFLURION3'),
(-1109004,'You will bring him back into this world, champion.',0,0,0,0,'malfurion Stormrge SAY_MALFURION4');

-- -1 129 000 RAZORFEN DOWNS
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1129000,'You\'ll never leave this place... alive.',5825,1,0,0,'amnennar SAY_AGGRO'),
(-1129001,'To me, my servants!',5828,1,0,0,'amnennar SAY_SUMMON60'),
(-1129002,'Come, spirits, attend your master!',5829,1,0,0,'amnennar SAY_SUMMON30'),
(-1129003,'I am the hand of the Lich King!',5827,1,0,0,'amnennar SAY_HP'),
(-1129004,'Too...easy!',5826,1,0,0,'amnennar SAY_KILL');

-- -1 189 000 SCARLET MONASTERY
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1189000,'Ah, I have been waiting for a real challenge!',5830,1,0,0,'herod SAY_AGGRO'),
(-1189001,'Blades of Light!',5832,1,0,0,'herod SAY_WHIRLWIND'),
(-1189002,'Light, give me strength!',5833,1,0,0,'herod SAY_ENRAGE'),
(-1189003,'Hah, is that all?',5831,1,0,0,'herod SAY_KILL'),
(-1189004,'%s becomes enraged!',0,2,0,0,'herod EMOTE_ENRAGE'),

(-1189005,'Infidels! They must be purified!',5835,1,0,0,'mograine SAY_MO_AGGRO'),
(-1189006,'Unworthy!',5836,1,0,0,'mograine SAY_MO_KILL'),
(-1189007,'At your side, milady!',5837,1,0,0,'mograine SAY_MO_RESSURECTED'),

(-1189008,'What, Mograine has fallen? You shall pay for this treachery!',5838,1,0,0,'whitemane SAY_WH_INTRO'),
(-1189009,'The Light has spoken!',5839,1,0,0,'whitemane SAY_WH_KILL'),
(-1189010,'Arise, my champion!',5840,1,0,0,'whitemane SAY_WH_RESSURECT'),

(-1189011,'Tell me... tell me everything!',5847,1,0,0,'vishas SAY_AGGRO'),
(-1189012,'Naughty secrets!',5849,1,0,0,'vishas SAY_HEALTH1'),
(-1189013,'I\'ll rip the secrets from your flesh!',5850,1,0,0,'vishas SAY_HEALTH2'),
(-1189014,'Purged by pain!',5848,1,0,0,'vishas SAY_KILL'),
(-1189015,'The monster got what he deserved.',0,0,1,0,'vishas SAY_TRIGGER_VORREL'),

(-1189016,'We hunger for vengeance.',5844,1,0,0,'thalnos SAY_AGGRO'),
(-1189017,'No rest, for the angry dead.',5846,1,0,0,'thalnos SAY_HEALTH'),
(-1189018,'More... More souls.',5845,1,0,0,'thalnos SAY_KILL'),

(-1189019,'You will not defile these mysteries!',5842,1,0,0,'doan SAY_AGGRO'),
(-1189020,'Burn in righteous fire!',5843,1,0,0,'doan SAY_SPECIALAE'),

(-1189021,'Release the hounds!',5841,1,0,0,'loksey SAY_AGGRO'),

(-1189022,'It is over, your search is done! Let fate choose now, the righteous one.',11961,1,0,0,'horseman SAY_ENTRANCE'),
(-1189023,'Here\'s my body, fit and pure! Now, your blackened souls I\'ll cure!',12567,1,0,0,'horseman SAY_REJOINED'),
(-1189024,'So eager you are for my blood to spill, yet to vanquish me this my head you must kill!',11969,1,0,0,'horseman SAY_BODY_DEFEAT'),
(-1189025,'Over here, you idiot!',12569,1,0,0,'horseman SAY_LOST_HEAD'),
(-1189026,'Harken, cur! Tis you I spurn! Now, $N, feel the burn!',12573,1,0,0,'horseman SAY_CONFLAGRATION'),
(-1189027,'Soldiers arise, stand and fight! Bring victory at last to this fallen knight!',11963,1,0,0,'horseman SAY_SPROUTING_PUMPKINS'),
(-1189028,'Your body lies beaten, battered and broken. Let my curse be your own, fate has spoken.',11962,1,0,0,'horseman SAY_SLAY'),
(-1189029,'This end have I reached before. What new adventure lies in store?',11964,1,0,0,'horseman SAY_DEATH'),
(-1189030,'%s laughs.',0,2,0,0,'horseman EMOTE_LAUGH'),
(-1189031,'Horseman rise...',0,0,0,0,'horseman SAY_PLAYER1'),
(-1189032,'Your time is night...',0,0,0,0,'horseman SAY_PLAYER2'),
(-1189033,'You felt death once...',0,0,0,0,'horseman SAY_PLAYER3'),
(-1189034,'Now, know demise!',0,0,0,0,'horseman SAY_PLAYER4'),

(-1189035,'The master has fallen! Avenge him my brethren!',5834,1,0,0,'trainee SAY_TRAINEE_SPAWN');

-- -1 209 000 ZUL'FARRAK

-- -1 229 000 BLACKROCK SPIRE

-- -1 230 000 BLACKROCK DEPTHS
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1230000,'Ah, hits the spot!',0,0,0,0,'rocknot SAY_GOT_BEER'),
(-1230001,'Come to aid the Throne!',0,1,0,0,'dagran SAY_AGGRO'),
(-1230002,'Hail to the king, baby!',0,1,0,0,'dagran SAY_SLAY'),
(-1230003,'You have challenged the Seven, and now you will die!',0,0,0,0,'doomrel SAY_DOOMREL_START_EVENT');

-- -1 249 000 ONYXIA'S LAIR
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1249000,'How fortuitous. Usually, I must leave my lair to feed.',0,1,0,0,'onyxia SAY_AGGRO'),
(-1249001,'Learn your place mortal!',0,1,0,0,'onyxia SAY_KILL'),
(-1249002,'This meaningless exertion bores me. I\'ll incinerate you all from above!',0,1,0,254,'onyxia SAY_PHASE_2_TRANS'),
(-1249003,'It seems you\'ll need another lesson, mortals!',0,1,0,293,'onyxia SAY_PHASE_3_TRANS'),
(-1249004,'%s takes in a deep breath...',0,3,0,0,'onyxia EMOTE_BREATH');

-- -1 269 000 OPENING OF THE DARK PORTAL (BLACK MORASS)
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1269000,'Why do you persist? Surely you can see the futility of it all. It is not too late! You may still leave with your lives ...',10442,1,0,0,'temporus SAY_ENTER'),
(-1269001,'So be it ... you have been warned.',10444,1,0,0,'temporus SAY_AGGRO'),
(-1269002,'Time... sands of time is run out for you.',10443,1,0,0,'temporus SAY_BANISH'),
(-1269003,'You should have left when you had the chance.',10445,1,0,0,'temporus SAY_SLAY1'),
(-1269004,'Your days are done.',10446,1,0,0,'temporus SAY_SLAY2'),
(-1269005,'My death means ... little.',10447,1,0,0,'temporus SAY_DEATH'),

(-1269006,'Why do you aid the Magus? Just think of how many lives could be saved if the portal is never opened, if the resulting wars could be erased ...',10412,1,0,0,'chrono_lord_deja SAY_ENTER'),
(-1269007,'If you will not cease this foolish quest, then you will die!',10414,1,0,0,'chrono_lord_deja SAY_AGGRO'),
(-1269008,'You have outstayed your welcome, Timekeeper. Begone!',10413,1,0,0,'chrono_lord_deja SAY_BANISH'),
(-1269009,'I told you it was a fool\'s quest!',10415,1,0,0,'chrono_lord_deja SAY_SLAY1'),
(-1269010,'Leaving so soon?',10416,1,0,0,'chrono_lord_deja SAY_SLAY2'),
(-1269011,'Time ... is on our side.',10417,1,0,0,'chrono_lord_deja SAY_DEATH'),

(-1269012,'The time has come to shatter this clockwork universe forever! Let us no longer be slaves of the hourglass! I warn you: those who do not embrace the greater path shall become victims of its passing!',10400,1,0,0,'aeonus SAY_ENTER'),
(-1269013,'Let us see what fate lays in store...',10402,1,0,0,'aeonus SAY_AGGRO'),
(-1269014,'Your time is up, slave of the past!',10401,1,0,0,'aeonus SAY_BANISH'),
(-1269015,'One less obstacle in our way!',10403,1,0,0,'aeonus SAY_SLAY1'),
(-1269016,'No one can stop us! No one!',10404,1,0,0,'aeonus SAY_SLAY2'),
(-1269017,'It is only a matter...of time.',10405,1,0,0,'aeonus SAY_DEATH'),
(-1269018,'REUSE ME',0,0,0,0,'REUSE ME'),

(-1269019,'Stop! Do not go further, mortals. You are ill-prepared to face the forces of the Infinite Dragonflight. Come, let me help you.',0,0,0,0,'saat SAY_SAAT_WELCOME'),

(-1269020,'The time has come! Gul\'dan, order your warlocks to double their efforts! Moments from now the gateway will open, and your Horde will be released upon this ripe, unsuspecting world!',10435,1,0,0,'medivh SAY_ENTER'),
(-1269021,'What is this? Champions, coming to my aid? I sense the hand of the dark one in this. Truly this sacred event bears his blessing?',10436,1,0,0,'medivh SAY_INTRO'),
(-1269022,'Champions, my shield grows weak!',10437,1,0,0,'medivh SAY_WEAK75'),
(-1269023,'My powers must be concentrated on the portal! I do not have time to hold the shield!',10438,1,0,0,'medivh SAY_WEAK50'),
(-1269024,'The shield is nearly gone! All that I have worked for is in danger!',10439,1,0,0,'medivh SAY_WEAK25'),
(-1269025,'No... damn this feeble mortal coil...',10441,1,0,0,'medivh SAY_DEATH'),
(-1269026,'I am grateful for your aid, champions. Now, Gul\'dan\'s Horde will sweep across this world, like a locust swarm, and all my designs, all my carefully laid plans will at last fall into place.',10440,1,0,0,'medivh SAY_WIN'),
(-1269027,'Orcs of the Horde! This portalis the gateway to your new destiny! Azeroth lies before you, ripe for the taking!',0,1,0,0,'medivh SAY_ORCS_ENTER'),
(-1269028,'Gul\'dan speaks the truth! We should return at once to tell our brothers of the news! Retreat back trought the portal!',0,1,0,0,'medivh SAY_ORCS_ANSWER');

-- -1 289 000 SCHOLOMANCE

-- -1 309 000 ZUL'GURUB
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1309000,'Let the coils of hate unfurl!',8421,1,0,0,'venoxis SAY_TRANSFORM'),
(-1309001,'Ssserenity..at lassst!',0,1,0,0,'venoxis SAY_DEATH'),

(-1309002,'Lord Hir\'eek, grant me wings of vengance!',8417,1,0,0,'jeklik SAY_AGGRO'),
(-1309003,'I command you to rain fire down upon these invaders!',0,1,0,0,'jeklik SAY_RAIN_FIRE'),
(-1309004,'Finally ...death. Curse you Hakkar! Curse you!',8422,1,0,0,'jeklik SAY_DEATH'),

(-1309005,'Draw me to your web mistress Shadra. Unleash your venom!',8418,1,0,0,'marli SAY_AGGRO'),
(-1309006,'Shadra, make of me your avatar!',0,1,0,0,'marli SAY_TRANSFORM'),
(-1309007,'Aid me my brood!',0,1,0,0,'marli SAY_SPIDER_SPAWN'),
(-1309008,'Bless you mortal for this release. Hakkar controls me no longer...',8423,1,0,0,'marli SAY_DEATH'),

(-1309009,'Shirvallah, fill me with your RAGE!',8419,1,0,0,'thekal SAY_AGGRO'),
(-1309010,'Hakkar binds me no more! Peace at last!',8424,1,0,0,'thekal SAY_DEATH'),

(-1309011,'Bethekk, your priestess calls upon your might!',8416,1,0,0,'arlokk SAY_AGGRO'),
(-1309012,'Feast on $n, my pretties!',0,1,0,0,'arlokk SAY_FEAST_PANTHER'),
(-1309013,'At last, I am free of the Soulflayer!',8412,1,0,0,'arlokk SAY_DEATH'),

(-1309014,'Welcome to da great show friends! Step right up to die!',8425,1,0,0,'jindo SAY_AGGRO'),

(-1309015,'I\'ll feed your souls to Hakkar himself!',8413,1,0,0,'mandokir SAY_AGGRO'),
(-1309016,'DING!',0,1,0,0,'mandokir SAY_DING_KILL'),
(-1309017,'GRATS!',0,1,0,0,'mandokir SAY_GRATS_JINDO'),
(-1309018,'$N! I\'m watching you!',0,1,0,0,'mandokir SAY_WATCH'),
(-1309019,'Don\'t make me angry. You won\'t like it when I\'m angry.',0,4,0,0,'mandokir SAY_WATCH_WHISPER'),

(-1309020,'PRIDE HERALDS THE END OF YOUR WORLD. COME, MORTALS! FACE THE WRATH OF THE SOULFLAYER!',8414,1,0,0,'hakkar SAY_AGGRO'),
(-1309021,'Fleeing will do you no good, mortals!',0,1,0,0,'hakkar SAY_FLEEING'),
(-1309022,'You dare set foot upon Hakkari holy ground? Minions of Hakkar, destroy the infidels!',0,1,0,0,'hakkar SAY_MINION_DESTROY'),
(-1309023,'Minions of Hakkar, hear your God. The sanctity of this temple has been compromised. Invaders encroach upon holy ground! The Altar of Blood must be protected. Kill them all!',0,1,0,0,'hakkar SAY_PROTECT_ALTAR'),

(-1309024,'%s goes into a rage after seeing his raptor fall in battle!',0,2,0,0,'mandokir EMOTE_RAGE');

-- -1 329 000 STRATHOLME
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1329000,'Thanks to Egan',0,0,0,0,'freed_soul SAY_ZAPPED0'),
(-1329001,'Rivendare must die',0,0,0,0,'freed_soul SAY_ZAPPED1'),
(-1329002,'Who you gonna call?',0,0,0,0,'freed_soul SAY_ZAPPED2'),
(-1329003,'Don\'t cross those beams!',0,0,0,0,'freed_soul SAY_ZAPPED3');

-- -1 349 000 MARAUDON

-- -1 389 000 RAGEFIRE CHASM

-- -1 409 000 MOLTEN CORE
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1409000,'%s performs one last service for Ragnaros.',0,2,0,0,'geddon EMOTE_SERVICE'),
(-1409001,'REUSE ME',0,0,0,0,'REUSE ME'),
(-1409002,'%s refuses to die while its master is in trouble.',0,2,0,0,'core rager EMOTE_LOWHP'),

(-1409003,'Reckless mortals, none may challenge the sons of the living flame!',8035,1,0,0,'majordomo SAY_AGGRO'),
(-1409004,'The runes of warding have been destroyed! Hunt down the infedels my bretheren.',8039,1,0,0,'majordomo SAY_SPAWN'),
(-1409005,'Ashes to Ashes!',8037,1,0,0,'majordomo SAY_SLAY'),
(-1409006,'Burn mortals! Burn for this transgression!',8036,1,0,0,'majordomo SAY_SPECIAL'),
(-1409007,'Impossible! Stay your attack mortals! I submitt! I submitt! Brashly you have come to rest the secrets of the living flame. You will soon regret the recklessness of your quest. I go now to summon the lord whos house this is. Should you seek an audiance with him your paltry lives will surly be forfit. Nevertheless seek out his lair if you dare!',8038,1,0,0,'majordomo SAY_DEFEAT'),

(-1409008,'Behold Ragnaros, the Firelord! He who was ancient when this world was young! Bow before him, mortals! Bow before your ending!',8040,1,0,0,'ragnaros SAY_SUMMON_MAJ'),
(-1409009,'TOO SOON! YOU HAVE AWAKENED ME TOO SOON, EXECUTUS! WHAT IS THE MEANING OF THIS INTRUSION?',8043,1,0,0,'ragnaros SAY_ARRIVAL1_RAG'),
(-1409010,'These mortal infidels, my lord! They have invaded your sanctum, and seek to steal your secrets!',8041,1,0,0,'ragnaros SAY_ARRIVAL2_MAJ'),
(-1409011,'FOOL! YOU ALLOWED THESE INSECTS TO RUN RAMPANT THROUGH THE HALLOWED CORE, AND NOW YOU LEAD THEM TO MY VERY LAIR? YOU HAVE FAILED ME, EXECUTUS! JUSTICE SHALL BE MET, INDEED!',8044,1,0,0,'ragnaros SAY_ARRIVAL3_RAG'),
(-1409012,'NOW FOR YOU, INSECTS. BOLDLY YOU SAUGHT THE POWER OF RAGNAROS NOW YOU SHALL SEE IT FIRST HAND.',8045,1,0,0,'ragnaros SAY_ARRIVAL5_RAG'),

(-1409013,'COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!',8049,1,0,0,'ragnaros SAY_REINFORCEMENTS1'),
(-1409014,'YOU CANNOT DEFEAT THE LIVING FLAME! COME YOU MINIONS OF FIRE! COME FORTH YOU CREATURES OF HATE! YOUR MASTER CALLS!',8050,1,0,0,'ragnaros SAY_REINFORCEMENTS2'),
(-1409015,'BY FIRE BE PURGED!',8046,1,0,0,'ragnaros SAY_HAND'),
(-1409016,'TASTE THE FLAMES OF SULFURON!',8047,1,0,0,'ragnaros SAY_WRATH'),
(-1409017,'DIE INSECT!',8051,1,0,0,'ragnaros SAY_KILL'),
(-1409018,'MY PATIENCE IS DWINDILING! COME NATS TO YOUR DEATH!',8048,1,0,0,'ragnaros SAY_MAGMABURST');

-- -1 429 000 DIRE MAUL

-- -1 469 000 BLACKWING LAIR
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1469000,'None of your kind should be here! You\'ve doomed only yourselves!',8286,1,0,0,'broodlord SAY_AGGRO'),
(-1469001,'Clever Mortals but I am not so easily lured away from my sanctum!',8287,1,0,0,'broodlord SAY_LEASH'),

(-1469002,'REUSE ME',0,0,0,0,'REUSE ME'),
(-1469003,'%s flinches as its skin shimmers.',0,2,0,0,'chromaggus EMOTE_SHIMMER'),

(-1469004,'In this world where time is your enemy, it is my greatest ally. This grand game of life that you think you play in fact plays you. To that I say...',0,0,0,0,'victor_nefarius SAY_GAMESBEGIN_1'),
(-1469005,'Let the games begin!',8280,1,0,0,'victor_nefarius SAY_GAMESBEGIN_2'),
(-1469006,'Ah, the heroes. You are persistent, aren\'t you. Your allied attempted to match his power against mine, and had to pay the price. Now he shall serve me, by slaughtering you. Get up little red wyrm and destroy them!',8279,1,0,0,'victor_nefarius SAY_VAEL_INTRO'),

(-1469007,'Well done, my minions. The mortals\' courage begins to wane! Now, let\'s see how they contend with the true Lord of Blackrock Spire!',8288,1,0,0,'nefarian SAY_AGGRO'),
(-1469008,'Enough! Now you vermin shall feel the force of my birthright, the fury of the earth itself.',8289,1,0,0,'nefarian SAY_XHEALTH'),
(-1469009,'Burn, you wretches! Burn!',8290,1,0,0,'nefarian SAY_SHADOWFLAME'),
(-1469010,'Impossible! Rise my minions! Serve your master once more!',8291,1,0,0,'nefarian SAY_RAISE_SKELETONS'),
(-1469011,'Worthless $N! Your friends will join you soon enough!',8293,1,0,0,'nefarian SAY_SLAY'),
(-1469012,'This cannot be! I am the Master here! You mortals are nothing to my kind! DO YOU HEAR? NOTHING!',8292,1,0,0,'nefarian SAY_DEATH'),
(-1469013,'Mages too? You should be more careful when you play with magic...',0,1,0,0,'nefarian SAY_MAGE'),
(-1469014,'Warriors, I know you can hit harder than that! Let\'s see it!',0,1,0,0,'nefarian SAY_WARRIOR'),
(-1469015,'Druids and your silly shapeshifting. Let\'s see it in action!',0,1,0,0,'nefarian SAY_DRUID'),
(-1469016,'Priests! If you\'re going to keep healing like that, we might as well make it a little more interesting!',0,1,0,0,'nefarian SAY_PRIEST'),
(-1469017,'Paladins, I\'ve heard you have many lives. Show me.',0,1,0,0,'nefarian SAY_PALADIN'),
(-1469018,'Shamans, show me what your totems can do!',0,1,0,0,'nefarian SAY_SHAMAN'),
(-1469019,'Warlocks, you shouldn\'t be playing with magic you don\'t understand. See what happens?',0,1,0,0,'nefarian SAY_WARLOCK'),
(-1469020,'Hunters and your annoying pea-shooters!',0,1,0,0,'nefarian SAY_HUNTER'),
(-1469021,'Rogues? Stop hiding and face me!',0,1,0,0,'nefarian SAY_ROGUE'),

(-1469022,'You\'ll pay for forcing me to do this.',8275,1,0,0,'razorgore SAY_EGGS_BROKEN1'),
(-1469023,'Fools! These eggs are more precious than you know.',8276,1,0,0,'razorgore SAY_EGGS_BROKEN2'),
(-1469024,'No! Not another one! I\'ll have your heads for this atrocity.',8277,1,0,0,'razorgore SAY_EGGS_BROKEN3'),
(-1469025,'If I fall into the abyss I\'ll take all of you mortals with me...',8278,1,0,0,'razorgore SAY_DEATH'),

(-1469026,'Too late...friends. Nefarius\' corruption has taken hold. I cannot...control myself.',8281,1,0,0,'vaelastrasz SAY_LINE1'),
(-1469027,'I beg you Mortals, flee! Flee before I lose all control. The Black Fire rages within my heart. I must release it!',8282,1,0,0,'vaelastrasz SAY_LINE2'),
(-1469028,'FLAME! DEATH! DESTRUCTION! COWER MORTALS BEFORE THE WRATH OF LORD....NO! I MUST FIGHT THIS!',8283,1,0,0,'vaelastrasz SAY_LINE3'),
(-1469029,'Nefarius\' hate has made me stronger than ever before. You should have fled, while you could, mortals! The fury of Blackrock courses through my veins!',8285,1,0,0,'vaelastrasz SAY_HALFLIFE'),
(-1469030,'Forgive me $N, your death only adds to my failure.',8284,1,0,0,'vaelastrasz SAY_KILLTARGET'),

(-1469031,'REUSE ME',0,0,0,0,'REUSE ME');

-- -1 509 000 RUINS OF AHN'QIRAJ
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1509000,'%s senses your fear.',0,2,0,0,'moam EMOTE_AGGRO'),
(-1509001,'%s bristles with energy!',0,2,0,0,'moan EMOTE_MANA_FULL'),
(-1509028,'%s drains your mana and turns to stone.',0,2,0,0,'moam EMOTE_ENERGIZING'),

(-1509002,'%s sets eyes on $N!',0,2,0,0,'buru EMOTE_TARGET'),

(-1509003,'They come now. Try not to get yourself killed, young blood.',0,1,0,0,'andorov SAY_ANDOROV_INTRO'),
(-1509004,'Remember, Rajaxx, when I said I\'d kill you last? I lied...',0,1,0,0,'andorov SAY_ANDOROV_ATTACK'),

(-1509005,'The time of our retribution is at hand! Let darkness reign in the hearts of our enemies!',8612,1,0,0,'rajaxx SAY_WAVE3'),
(-1509006,'No longer will we wait behind barred doors and walls of stone! No longer will our vengeance be denied! The dragons themselves will tremble before our wrath!',8610,1,0,0,'rajaxx SAY_WAVE4'),
(-1509007,'Fear is for the enemy! Fear and death!',8608,1,0,0,'rajaxx SAY_WAVE5'),
(-1509008,'Staghelm will whimper and beg for his life, just as his whelp of a son did! One thousand years of injustice will end this day!',8611,1,0,0,'rajaxx SAY_WAVE6'),
(-1509009,'Fandral! Your time has come! Go and hide in the Emerald Dream and pray we never find you!',8607,1,0,0,'rajaxx SAY_WAVE7'),
(-1509010,'Impudent fool! I will kill you myself!',8609,1,0,0,'rajaxx SAY_INTRO'),
(-1509011,'Attack and make them pay dearly!',8603,1,0,0,'rajaxx SAY_UNK1'),
(-1509012,'Crush them! Drive them out!',8605,1,0,0,'rajaxx SAY_UNK2'),
(-1509013,'Do not hesitate! Destroy them!',8606,1,0,0,'rajaxx SAY_UNK3'),
(-1509014,'Warriors! Captains! Continue the fight!',8613,1,0,0,'rajaxx SAY_UNK4'),
(-1509015,'You are not worth my time $N!',8614,1,0,0,'rajaxx SAY_DEAGGRO'),
(-1509016,'Breath your last!',8604,1,0,0,'rajaxx SAY_KILLS_ANDOROV'),
(-1509017,'Soon you will know the price of your meddling, mortals... The master is nearly whole... And when he rises, your world will be cease!',0,1,0,0,'rajaxx SAY_COMPLETE_QUEST'),

(-1509018,'I am rejuvinated!',8593,1,0,0,'ossirian SAY_SURPREME1'),
(-1509019,'My powers are renewed!',8595,1,0,0,'ossirian SAY_SURPREME2'),
(-1509020,'My powers return!',8596,1,0,0,'ossirian SAY_SURPREME3'),
(-1509021,'Protect the city at all costs!',8597,1,0,0,'ossirian SAY_RAND_INTRO1'),
(-1509022,'The walls have been breached!',8599,1,0,0,'ossirian SAY_RAND_INTRO2'),
(-1509023,'To your posts. Defend the city.',8600,1,0,0,'ossirian SAY_RAND_INTRO3'),
(-1509024,'Tresspassers will be terminated.',8601,1,0,0,'ossirian SAY_RAND_INTRO4'),
(-1509025,'Sands of the desert rise and block out the sun!',8598,1,0,0,'ossirian SAY_AGGRO'),
(-1509026,'You are terminated.',8602,1,0,0,'ossirian SAY_SLAY'),
(-1509027,'I...have...failed.',8594,1,0,0,'ossirian SAY_DEATH');

-- -1 531 000 TEMPLE OF AHN'QIRAJ
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1531000,'Are you so eager to die? I would be happy to accomodate you.',8615,1,0,0,'skeram SAY_AGGRO1'),
(-1531001,'Cower mortals! The age of darkness is at hand.',8616,1,0,0,'skeram SAY_AGGRO2'),
(-1531002,'Tremble! The end is upon you.',8621,1,0,0,'skeram SAY_AGGRO3'),
(-1531003,'Let your death serve as an example!',8617,1,0,0,'skeram SAY_SLAY1'),
(-1531004,'Spineless wretches! You will drown in rivers of blood!',8619,1,0,0,'skeram SAY_SLAY2'),
(-1531005,'The screams of the dying will fill the air. A symphony of terror is about to begin!',8620,1,0,0,'skeram SAY_SLAY3'),
(-1531006,'Prepare for the return of the ancient ones!',8618,1,0,0,'skeram SAY_SPLIT'),
(-1531007,'You only delay... the inevetable.',8622,1,0,0,'skeram SAY_DEATH'),

(-1531008,'You will be judged for defiling these sacred grounds! The laws of the Ancients will not be challenged! Trespassers will be annihilated!',8646,1,0,0,'sartura SAY_AGGRO'),
(-1531009,'I sentence you to death!',8647,1,0,0,'sartura SAY_SLAY'),
(-1531010,'I serve to the last!',8648,1,0,0,'sartura SAY_DEATH'),

(-1531011,'%s is weakened!',0,2,0,0,'cthun EMOTE_WEAKENED');

-- -1 532 000 KARAZHAN
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1532000,'Well done Midnight!',9173,1,0,0,'attumen SAY_MIDNIGHT_KILL'),
(-1532001,'Cowards! Wretches!',9167,1,0,0,'attumen SAY_APPEAR1'),
(-1532002,'Who dares attack the steed of the Huntsman?',9298,1,0,0,'attumen SAY_APPEAR2'),
(-1532003,'Perhaps you would rather test yourselves against a more formidable opponent?!',9299,1,0,0,'attumen SAY_APPEAR3'),
(-1532004,'Come, Midnight, let\'s disperse this petty rabble!',9168,1,0,0,'attumen SAY_MOUNT'),
(-1532005,'It was... inevitable.',9169,1,0,0,'attumen SAY_KILL1'),
(-1532006,'Another trophy to add to my collection!',9300,1,0,0,'attumen SAY_KILL2'),
(-1532007,'Weapons are merely a convenience for a warrior of my skill!',9166,1,0,0,'attumen SAY_DISARMED'),
(-1532008,'I always knew... someday I would become... the hunted.',9165,1,0,0,'attumen SAY_DEATH'),
(-1532009,'Such easy sport.',9170,1,0,0,'attumen SAY_RANDOM1'),
(-1532010,'Amateurs! Do not think you can best me! I kill for a living.',9304,1,0,0,'attumen SAY_RANDOM2'),

(-1532011,'Hmm, unannounced visitors? Preparations must be made.',9211,1,0,0,'moroes SAY_AGGRO'),
(-1532012,'Now, where was I? Oh yes...',9215,1,0,0,'moroes SAY_SPECIAL_1'),
(-1532013,'You rang?',9316,1,0,0,'moroes SAY_SPECIAL_2'),
(-1532014,'One more for dinner this evening.',9214,1,0,0,'moroes SAY_KILL_1'),
(-1532015,'Time... Never enough time.',9314,1,0,0,'moroes SAY_KILL_2'),
(-1532016,'I\'ve gone and made a mess.',9315,1,0,0,'moroes SAY_KILL_3'),
(-1532017,'How terribly clumsy of me...',9213,1,0,0,'moroes SAY_DEATH'),

(-1532018,'Your behavior will not be tolerated!',9204,1,0,0,'maiden SAY_AGGRO'),
(-1532019,'Ah ah ah...',9207,1,0,0,'maiden SAY_SLAY1'),
(-1532020,'This is for the best.',9312,1,0,0,'maiden SAY_SLAY2'),
(-1532021,'Impure thoughts lead to profane actions.',9311,1,0,0,'maiden SAY_SLAY3'),
(-1532022,'Cast out your corrupt thoughts.',9313,1,0,0,'maiden SAY_REPENTANCE1'),
(-1532023,'Your impurity must be cleansed.',9208,1,0,0,'maiden SAY_REPENTANCE2'),
(-1532024,'Death comes. Will your conscience be clear?',9206,1,0,0,'maiden SAY_DEATH'),

(-1532025,'Oh at last, at last. I can go home.',9190,1,0,0,'dorothee SAY_DOROTHEE_DEATH'),
(-1532026,'Don\'t let them hurt us, Tito! Oh, you won\'t, will you?',9191,1,0,0,'dorothee SAY_DOROTHEE_SUMMON'),
(-1532027,'Tito, oh Tito, no!',9192,1,0,0,'dorothee SAY_DOROTHEE_TITO_DEATH'),
(-1532028,'Oh dear, we simply must find a way home! The old wizard could be our only hope! Strawman, Roar, Tinhead, will you... wait! Oh golly, look! We have visitors!',9195,1,0,0,'dorothee SAY_DOROTHEE_AGGRO'),

(-1532029,'Wanna fight? Huh? Do ya? C\'mon, I\'ll fight you with both claws behind my back!',9227,1,0,0,'roar SAY_ROAR_AGGRO'),
(-1532030,'You didn\'t have to go and do that.',9229,1,0,0,'roar SAY_ROAR_DEATH'),
(-1532031,'I think I\'m going to go take fourty winks.',9230,1,0,0,'roar SAY_ROAR_SLAY'),

(-1532032,'Now what should I do with you? I simply can\'t make up my mind.',9254,1,0,0,'strawman SAY_STRAWMAN_AGGRO'),
(-1532033,'Don\'t let them make a mattress... out of me.',9256,1,0,0,'strawman SAY_STRAWMAN_DEATH'),
(-1532034,'I guess I\'m not a failure after all.',9257,1,0,0,'strawman SAY_STRAWMAN_SLAY'),

(-1532035,'I could really use a heart. Say, can I have yours?',9268,1,0,0,'tinhead SAY_TINHEAD_AGGRO'),
(-1532036,'Back to being an old rustbucket.',9270,1,0,0,'tinhead SAY_TINHEAD_DEATH'),
(-1532037,'Guess I\'m not so rusty, after all.',9271,1,0,0,'tinhead SAY_TINHEAD_SLAY'),
(-1532038,'%s begins to rust.',0,2,0,0,'tinhead EMOTE_RUST'),

(-1532039,'Woe to each and every one of you my pretties! <cackles>',9179,1,0,0,'crone SAY_CRONE_AGGRO'),
(-1532040,'It will all be over soon! <cackles>',9307,1,0,0,'crone SAY_CRONE_AGGRO2'),
(-1532041,'How could you? What a cruel, cruel world!',9178,1,0,0,'crone SAY_CRONE_DEATH'),
(-1532042,'Fixed you, didn\'t I? <cackles>',9180,1,0,0,'crone SAY_CRONE_SLAY'),

(-1532043,'All the better to own you with!',9276,1,0,0,'wolf SAY_WOLF_AGGRO'),
(-1532044,'Mmmm... delicious.',9277,1,0,0,'wolf SAY_WOLF_SLAY'),
(-1532045,'Run away little girl, run away!',9278,1,0,0,'wolf SAY_WOLF_HOOD'),

(-1532046,'What devil art thou, that dost torment me thus?',9196,1,0,0,'julianne SAY_JULIANNE_AGGRO'),
(-1532047,'Where is my lord? Where is my Romulo?',9199,1,0,0,'julianne SAY_JULIANNE_ENTER'),
(-1532048,'Romulo, I come! Oh... this do I drink to thee!',9198,1,0,0,'julianne SAY_JULIANNE_DEATH01'),
(-1532049,'Where is my Lord? Where is my Romulo? Ohh, happy dagger! This is thy sheath! There rust, and let me die!',9310,1,0,0,'julianne SAY_JULIANNE_DEATH02'),
(-1532050,'Come, gentle night; and give me back my Romulo!',9200,1,0,0,'julianne SAY_JULIANNE_RESURRECT'),
(-1532051,'Parting is such sweet sorrow.',9201,1,0,0,'julianne SAY_JULIANNE_SLAY'),

(-1532052,'Wilt thou provoke me? Then have at thee, boy!',9233,1,0,0,'romulo SAY_ROMULO_AGGRO'),
(-1532053,'Thou smilest... upon the stroke that... murders me.',9235,1,0,0,'romulo SAY_ROMULO_DEATH'),
(-1532054,'This day\'s black fate on more days doth depend. This but begins the woe. Others must end.',9236,1,0,0,'romulo SAY_ROMULO_ENTER'),
(-1532055,'Thou detestable maw, thou womb of death; I enforce thy rotten jaws to open!',9237,1,0,0,'romulo SAY_ROMULO_RESURRECT'),
(-1532056,'How well my comfort is revived by this!',9238,1,0,0,'romulo SAY_ROMULO_SLAY'),

(-1532057,'The Menagerie is for guests only.',9183,1,0,0,'curator SAY_AGGRO'),
(-1532058,'Gallery rules will be strictly enforced.',9188,1,0,0,'curator SAY_SUMMON1'),
(-1532059,'This curator is equipped for gallery protection.',9309,1,0,0,'curator SAY_SUMMON2'),
(-1532060,'Your request cannot be processed.',9186,1,0,0,'curator SAY_EVOCATE'),
(-1532061,'Failure to comply will result in offensive action.',9185,1,0,0,'curator SAY_ENRAGE'),
(-1532062,'Do not touch the displays.',9187,1,0,0,'curator SAY_KILL1'),
(-1532063,'You are not a guest.',9308,1,0,0,'curator SAY_KILL2'),
(-1532064,'This Curator is no longer op... er... ation... al.',9184,1,0,0,'curator SAY_DEATH'),

(-1532065,'Your blood will anoint my circle.',9264,1,0,0,'terestian SAY_SLAY1'),
(-1532066,'The great one will be pleased.',9329,1,0,0,'terestian SAY_SLAY2'),
(-1532067,'My life, is yours. Oh great one.',9262,1,0,0,'terestian SAY_DEATH'),
(-1532068,'Ah, you\'re just in time. The rituals are about to begin.',9260,1,0,0,'terestian SAY_AGGRO'),
(-1532069,'Please, accept this humble offering, oh great one.',9263,1,0,0,'terestian SAY_SACRIFICE1'),
(-1532070,'Let the sacrifice serve his testament to my fealty.',9330,1,0,0,'terestian SAY_SACRIFICE2'),
(-1532071,'Come, you dwellers in the dark. Rally to my call!',9265,1,0,0,'terestian SAY_SUMMON1'),
(-1532072,'Gather, my pets. There is plenty for all.',9331,1,0,0,'terestian SAY_SUMMON2'),

(-1532073,'Please, no more. My son... he\'s gone mad!',9241,1,0,0,'aran SAY_AGGRO1'),
(-1532074,'I\'ll not be tortured again!',9323,1,0,0,'aran SAY_AGGRO2'),
(-1532075,'Who are you? What do you want? Stay away from me!',9324,1,0,0,'aran SAY_AGGRO3'),
(-1532076,'I\'ll show you this beaten dog still has some teeth!',9245,1,0,0,'aran SAY_FLAMEWREATH1'),
(-1532077,'Burn you hellish fiends!',9326,1,0,0,'aran SAY_FLAMEWREATH2'),
(-1532078,'I\'ll freeze you all!',9246,1,0,0,'aran SAY_BLIZZARD1'),
(-1532079,'Back to the cold dark with you!',9327,1,0,0,'aran SAY_BLIZZARD2'),
(-1532080,'Yes, yes, my son is quite powerful... but I have powers of my own!',9242,1,0,0,'aran SAY_EXPLOSION1'),
(-1532081,'I am not some simple jester! I am Nielas Aran!',9325,1,0,0,'aran SAY_EXPLOSION2'),
(-1532082,'Surely you would not deny an old man a replenishing drink? No, no I thought not.',9248,1,0,0,'aran SAY_DRINK'),
(-1532083,'I\'m not finished yet! No, I have a few more tricks up me sleeve.',9251,1,0,0,'aran SAY_ELEMENTALS'),
(-1532084,'I want this nightmare to be over!',9250,1,0,0,'aran SAY_KILL1'),
(-1532085,'Torment me no more!',9328,1,0,0,'aran SAY_KILL2'),
(-1532086,'You\'ve wasted enough of my time. Let these games be finished!',9247,1,0,0,'aran SAY_TIMEOVER'),
(-1532087,'At last... The nightmare is.. over...',9244,1,0,0,'aran SAY_DEATH'),
(-1532088,'Where did you get that?! Did HE send you?!',9249,1,0,0,'aran SAY_ATIESH'),

(-1532089,'%s cries out in withdrawal, opening gates to the warp.',0,2,0,0,'netherspite EMOTE_PHASE_PORTAL'),
(-1532090,'%s goes into a nether-fed rage!',0,2,0,0,'netherspite EMOTE_PHASE_BANISH'),

(-1532091,'Madness has brought you here to me. I shall be your undoing!',9218,1,0,0,'malchezaar SAY_AGGRO'),
(-1532092,'Simple fools! Time is the fire in which you\'ll burn!',9220,1,0,0,'malchezaar SAY_AXE_TOSS1'),
(-1532093,'I see the subtlety of conception is beyond primitives such as you.',9317,1,0,0,'malchezaar SAY_AXE_TOSS2'),
(-1532094,'Who knows what secrets hide in the dark.',9223,1,0,0,'malchezaar SAY_SPECIAL1'),
(-1532095,'The cerestial forces are mine to manipulate.',9320,1,0,0,'malchezaar SAY_SPECIAL2'),
(-1532096,'How can you hope to withstand against such overwhelming power?',9321,1,0,0,'malchezaar SAY_SPECIAL3'),
(-1532097,'Surely you did not think you could win.',9222,1,0,0,'malchezaar SAY_SLAY1'),
(-1532098,'Your greed, your foolishness has brought you to this end.',9318,1,0,0,'malchezaar SAY_SLAY2'),
(-1532099,'You are, but a plaything, unfit even to amuse.',9319,1,0,0,'malchezaar SAY_SLAY3'),
(-1532100,'All realities, all dimensions are open to me!',9224,1,0,0,'malchezaar SAY_SUMMON1'),
(-1532101,'You face not Malchezaar alone, but the legions I command!',9322,1,0,0,'malchezaar SAY_SUMMON2'),
(-1532102,'I refuse to concede defeat. I am a prince of the Eredar! I am...',9221,1,0,0,'malchezaar SAY_DEATH'),

(-1532103,'Welcome Ladies and Gentlemen, to this evening\'s presentation!',9174,1,0,0,'barnes OZ1'),
(-1532104,'Tonight we plumb the depths of the human soul as we join a lost, lonely girl trying desperately -- with the help of her loyal companions -- to find her way home!',9338,1,0,0,'barnes OZ2'),
(-1532105,'But she is pursued... by a wicked malevolent crone!',9339,1,0,0,'barnes OZ3'),
(-1532106,'Will she survive? Will she prevail? Only time will tell. And now ... on with the show!',9340,1,0,0,'barnes OZ4'),
(-1532107,'Good evening, Ladies and Gentlemen! Welcome to this evening\'s presentation!',9175,1,0,0,'barnes HOOD1'),
(-1532108,'Tonight, things are not what they seem. For tonight, your eyes may not be trusted',9335,1,0,0,'barnes HOOD2'),
(-1532109,'Take for instance, this quiet, elderly woman, waiting for a visit from her granddaughter. Surely there is nothing to fear from this sweet, grey-haired, old lady.',9336,1,0,0,'barnes HOOD3'),
(-1532110,'But don\'t let me pull the wool over your eyes. See for yourself what lies beneath those covers! And now... on with the show!',9337,1,0,0,'barnes HOOD4'),
(-1532111,'Welcome, Ladies and Gentlemen, to this evening\'s presentation!',9176,1,0,0,'barnes RAJ1'),
(-1532112,'Tonight, we explore a tale of forbidden love!',9341,1,0,0,'barnes RAJ2'),
(-1532113,'But beware, for not all love stories end happily, as you may find out. Sometimes, love pricks like a thorn.',9342,1,0,0,'barnes RAJ3'),
(-1532114,'But don\'t take it from me, see for yourself what tragedy lies ahead when the paths of star-crossed lovers meet. And now...on with the show!',9343,1,0,0,'barnes RAJ4');

-- -1 533 000 NAXXRAMAS
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1533000,'Ahh... welcome to my parlor.',8788,1,0,0,'anubrekhan SAY_GREET'),
(-1533001,'Just a little taste...',8785,1,0,0,'anubrekhan SAY_AGGRO1'),
(-1533002,'There is no way out.',8786,1,0,0,'anubrekhan SAY_AGGRO2'),
(-1533003,'Yes, Run! It makes the blood pump faster!',8787,1,0,0,'anubrekhan SAY_AGGRO3'),
(-1533004,'I hear little hearts beating. Yesss... beating faster now. Soon the beating will stop.',8790,1,0,0,'anubrekhan SAY_TAUNT1'),
(-1533005,'Where to go? What to do? So many choices that all end in pain, end in death.',8791,1,0,0,'anubrekhan SAY_TAUNT2'),
(-1533006,'Which one shall I eat first? So difficult to choose... the all smell so delicious.',8792,1,0,0,'anubrekhan SAY_TAUNT3'),
(-1533007,'Closer now... tasty morsels. I\'ve been too long without food. Without blood to drink.',8793,1,0,0,'anubrekhan SAY_TAUNT4'),
(-1533008,'Shh... it will all be over soon.',8789,1,0,0,'anubrekhan SAY_SLAY'),

(-1533009,'Your old lives, your mortal desires, mean nothing. You are acolytes of the master now, and you will serve the cause without question! The greatest glory is to die in the master\'s service!',8799,1,0,0,'faerlina SAY_GREET'),
(-1533010,'Slay them in the master\'s name!',8794,1,0,0,'faerlina SAY_AGGRO1'),
(-1533011,'You cannot hide from me!',8795,1,0,0,'faerlina SAY_AGGRO2'),
(-1533012,'Kneel before me, worm!',8796,1,0,0,'faerlina SAY_AGGRO3'),
(-1533013,'Run while you still can!',8797,1,0,0,'faerlina SAY_AGGRO4'),
(-1533014,'You have failed!',8800,1,0,0,'faerlina SAY_SLAY1'),
(-1533015,'Pathetic wretch!',8801,1,0,0,'faerlina SAY_SLAY2'),
(-1533016,'The master... will avenge me!',8798,1,0,0,'faerlina SAY_DEATH'),

(-1533017,'Patchwerk want to play!',8909,1,0,0,'patchwerk SAY_AGGRO1'),
(-1533018,'Kel\'Thuzad make Patchwerk his Avatar of War!',8910,1,0,0,'patchwerk SAY_AGGRO2'),
(-1533019,'No more play?',8912,1,0,0,'patchwerk SAY_SLAY'),
(-1533020,'What happened to... Patch...',8911,1,0,0,'patchwerk SAY_DEATH'),
(-1533021,'%s goes into a berserker rage!',0,2,0,0,'patchwerk EMOTE_BERSERK'),
(-1533022,'%s becomes enraged!',0,2,0,0,'patchwerk EMOTE_ENRAGE'),

(-1533023,'Stalagg crush you!',8864,1,0,0,'stalagg SAY_STAL_AGGRO'),
(-1533024,'Stalagg kill!',8866,1,0,0,'stalagg SAY_STAL_SLAY'),
(-1533025,'Master save me...',8865,1,0,0,'stalagg SAY_STAL_DEATH'),
(-1533026,'Feed you to master!',8802,1,0,0,'feugen SAY_FEUG_AGGRO'),
(-1533027,'Feugen make master happy!',8804,1,0,0,'feugen SAY_FEUG_SLAY'),
(-1533028,'No... more... Feugen...',8803,1,0,0,'feugen SAY_FEUG_DEATH'),

(-1533029,'You are too late... I... must... OBEY!',8872,1,0,0,'thaddius SAY_GREET'),
(-1533030,'KILL!',8867,1,0,0,'thaddius SAY_AGGRO1'),
(-1533031,'EAT YOUR BONES!',8868,1,0,0,'thaddius SAY_AGGRO2'),
(-1533032,'BREAK YOU!',8869,1,0,0,'thaddius SAY_AGGRO3'),
(-1533033,'You die now!',8877,1,0,0,'thaddius SAY_SLAY'),
(-1533034,'Now YOU feel pain!',8871,1,0,0,'thaddius SAY_ELECT'),
(-1533035,'Thank... you...',8870,1,0,0,'thaddius SAY_DEATH'),
(-1533036,'Pleeease!',8873,1,0,0,'thaddius SAY_SCREAM1'),
(-1533037,'Stop, make it stop!',8874,1,0,0,'thaddius SAY_SCREAM2'),
(-1533038,'Help me! Save me!',8875,1,0,0,'thaddius SAY_SCREAM3'),
(-1533039,'Please, nooo!',8876,1,0,0,'thaddius SAY_SCREAM4'),

(-1533040,'Foolishly you have sought your own demise.',8807,1,0,0,'gothik SAY_SPEECH_1'),
(-1533041,'Death is the only escape.',8806,1,0,0,'gothik SAY_KILL'),
(-1533042,'I... am... undone!',8805,1,0,0,'gothik SAY_DEATH'),
(-1533043,'I have waited long enough! Now, you face the harvester of souls!',8808,1,0,0,'gothik SAY_TELEPORT'),

(-1533044,'Defend youself!',8892,1,0,0,'blaumeux SAY_BLAU_AGGRO'),
(-1533045,'Come, Zeliek, do not drive them out. Not before we\'ve had our fun.',8896,1,0,0,'blaumeux SAY_BLAU_TAUNT1'),
(-1533046,'I do hope they stay alive long enough for me to... introduce myself.',8897,1,0,0,'blaumeux SAY_BLAU_TAUNT2'),
(-1533047,'The first kill goes to me! Anyone care to wager?',8898,1,0,0,'blaumeux SAY_BLAU_TAUNT3'),
(-1533048,'Your life is mine!',8895,1,0,0,'blaumeux SAY_BLAU_SPECIAL'),
(-1533049,'Who\'s next?',8894,1,0,0,'blaumeux SAY_BLAU_SLAY'),
(-1533050,'Tou... che!',8893,1,0,0,'blaumeux SAY_BLAU_DEATH'),

(-1533051,'Come out and fight, ye wee ninny!',8899,1,0,0,'korthazz SAY_KORT_AGGRO'),
(-1533052,'To arms, ye roustabouts! We\'ve got company!',8903,1,0,0,'korthazz SAY_KORT_TAUNT1'),
(-1533053,'I heard about enough of yer sniveling. Shut yer fly trap \'afore I shut it for ye!',8904,1,0,0,'korthazz SAY_KORT_TAUNT2'),
(-1533054,'I\'m gonna enjoy killin\' these slack-jawed daffodils!',8905,1,0,0,'korthazz SAY_KORT_TAUNT3'),
(-1533055,'I like my meat extra crispy!',8902,1,0,0,'korthazz SAY_KORT_SPECIAl'),
(-1533056,'Next time, bring more friends!',8901,1,0,0,'korthazz SAY_KORT_SLAY'),
(-1533057,'What a bloody waste this is!',8900,1,0,0,'korthazz SAY_KORT_DEATH'),

(-1533058,'Flee, before it\'s too late!',8913,1,0,0,'zeliek SAY_ZELI_AGGRO'),
(-1533059,'Invaders, cease this foolish venture at once! Turn away while you still can!',8917,1,0,0,'zeliek SAY_ZELI_TAUNT1'),
(-1533060,'Perhaps they will come to their senses, and run away as fast as they can!',8918,1,0,0,'zeliek SAY_ZELI_TAUNT2'),
(-1533061,'Do not continue! Turn back while there\'s still time!',8919,1,0,0,'zeliek SAY_ZELI_TAUNT3'),
(-1533062,'I- I have no choice but to obey!',8916,1,0,0,'zeliek SAY_ZELI_SPECIAL'),
(-1533063,'Forgive me!',8915,1,0,0,'zeliek SAY_ZELI_SLAY'),
(-1533064,'It is... as it should be.',8914,1,0,0,'zeliek SAY_ZELI_DEATH'),

(-1533065,'You seek death?',14571,1,0,0,'rivendare_naxx SAY_RIVE_AGGRO1'),
(-1533066,'None shall pass!',14572,1,0,0,'rivendare_naxx SAY_RIVE_AGGRO2'),
(-1533067,'Be still!',14573,1,0,0,'rivendare_naxx SAY_RIVE_AGGRO3'),
(-1533068,'You will find no peace in death.',14574,1,0,0,'rivendare_naxx SAY_RIVE_SLAY1'),
(-1533069,'The master\'s will is done.',14575,1,0,0,'rivendare_naxx SAY_RIVE_SLAY2'),
(-1533070,'Bow to the might of the scourge!',14576,1,0,0,'rivendare_naxx SAY_RIVE_SPECIAL'),
(-1533071,'Enough prattling. Let them come! We shall grind their bones to dust.',14577,1,0,0,'rivendare_naxx SAY_RIVE_TAUNT1'),
(-1533072,'Conserve your anger! Harness your rage! You will all have outlets for your frustration soon enough.',14578,1,0,0,'rivendare_naxx SAY_RIVE_TAUNT2'),
(-1533073,'Life is meaningless. It is in death that we are truly tested.',14579,1,0,0,'rivendare_naxx SAY_RIVE_TAUNT3'),
(-1533074,'Death... will not stop me...',14580,1,0,0,'rivendare_naxx SAY_RIVE_DEATH'),

(-1533075,'Glory to the master!',8845,1,0,0,'noth SAY_AGGRO1'),
(-1533076,'Your life is forfeit!',8846,1,0,0,'noth SAY_AGGRO2'),
(-1533077,'Die, trespasser!',8847,1,0,0,'noth SAY_AGGRO3'),
(-1533078,'Rise, my soldiers! Rise and fight once more!',8851,1,0,0,'noth SAY_SUMMON'),
(-1533079,'My task is done!',8849,1,0,0,'noth SAY_SLAY1'),
(-1533080,'Breathe no more!',8850,1,0,0,'noth SAY_SLAY2'),
(-1533081,'I will serve the master... in... death!',8848,1,0,0,'noth SAY_DEATH'),

(-1533082,'%s takes in a deep breath...',0,2,0,0,'sapphiron EMOTE_BREATH'),
(-1533083,'%s enrages!',0,2,0,0,'sapphiron EMOTE_ENRAGE'),

(-1533084,'Our preparations continue as planned, master.',14467,1,0,0,'kelthuzad SAY_SAPP_DIALOG1'),
(-1533085,'It is good that you serve me so faithfully. Soon, all will serve the Lich King and in the end, you shall be rewarded...so long as you do not falter.',8881,1,0,0,'kelthuzad SAY_SAPP_DIALOG2_LICH'),
(-1533086,'I see no complications... Wait... What is this?',14468,1,0,0,'kelthuzad SAY_SAPP_DIALOG3'),
(-1533087,'Your security measures have failed! See to this interruption immediately!',8882,1,0,0,'kelthuzad SAY_SAPP_DIALOG4_LICH'),
(-1533088,'Yes, master!',14469,1,0,0,'kelthuzad SAY_SAPP_DIALOG5'),
(-1533089,'No!!! A curse upon you, interlopers! The armies of the Lich King will hunt you down. You will not escape your fate...',14484,1,0,0,'kelthuzad SAY_CAT_DIED'),
(-1533090,'Who dares violate the sanctity of my domain? Be warned, all who trespass here are doomed.',14463,6,0,0,'kelthuzad SAY_TAUNT1'),
(-1533091,'Fools, you think yourselves triumphant? You have only taken one step closer to the abyss! ',14464,6,0,0,'kelthuzad SAY_TAUNT2'),
(-1533092,'I grow tired of these games. Proceed, and I will banish your souls to oblivion!',14465,6,0,0,'kelthuzad SAY_TAUNT3'),
(-1533093,'You have no idea what horrors lie ahead. You have seen nothing! The frozen heart of Naxxramas awaits you!',14466,6,0,0,'kelthuzad SAY_TAUNT4'),
(-1533094,'Pray for mercy!',14475,1,0,0,'kelthuzad SAY_AGGRO1'),
(-1533095,'Scream your dying breath!',14476,1,0,0,'kelthuzad SAY_AGGRO2'),
(-1533096,'The end is upon you!',14477,1,0,0,'kelthuzad SAY_AGGRO3'),
(-1533097,'The dark void awaits you!',14478,1,0,0,'kelthuzad SAY_SLAY1'),
(-1533098,'<Kel\'Thuzad cackles maniacally!>',14479,1,0,0,'kelthuzad SAY_SLAY2'),
(-1533099,'AAAAGHHH!... Do not rejoice... your victory is a hollow one... for I shall return with powers beyond your imagining!',14480,1,0,0,'kelthuzad SAY_DEATH'),
(-1533100,'Your soul, is bound to me now!',14472,1,0,0,'kelthuzad SAY_CHAIN1'),
(-1533101,'There will be no escape!',14473,1,0,0,'kelthuzad SAY_CHAIN2'),
(-1533102,'I will freeze the blood in your veins!',14474,1,0,0,'kelthuzad SAY_FROST_BLAST'),
(-1533103,'Master! I require aid! ',14470,1,0,0,'kelthuzad SAY_REQUEST_AID'),
(-1533104,'Very well... warriors of the frozen wastes, rise up! I command you to fight, kill, and die for your master. Let none survive...',0,1,0,0,'kelthuzad SAY_ANSWER_REQUEST'),
(-1533105,'Minions, servants, soldiers of the cold dark, obey the call of Kel\'Thuzad!',14471,1,0,0,'kelthuzad SAY_SUMMON_MINIONS'),
(-1533106,'Your petty magics are no challenge to the might of the Scourge! ',14481,1,0,0,'kelthuzad SAY_SPECIAL1_MANA_DET'),
(-1533107,'Enough! I grow tired of these distractions! ',14483,1,0,0,'kelthuzad SAY_SPECIAL3_MANA_DET'),
(-1533108,'Fools, you have spread your powers too thin. Be free, my minions!',14482,1,0,0,'kelthuzad SAY_SPECIAL2_DISPELL'),

(-1533109,'You are mine now!',8825,1,0,0,'heigan SAY_AGGRO1'),
(-1533110,'I see you!',8826,1,0,0,'heigan SAY_AGGRO2'),
(-1533111,'You...are next!',8827,1,0,0,'heigan SAY_AGGRO3'),
(-1533112,'Close your eyes... sleep!',8829,1,0,0,'heigan SAY_SLAY'),
(-1533113,'The races of the world will perish. It is only a matter of time.',8830,1,0,0,'heigan SAY_TAUNT1'),
(-1533114,'I see endless suffering, I see torment, I see rage. I see... everything!',8831,1,0,0,'heigan SAY_TAUNT2'),
(-1533115,'Soon... the world will tremble!',8832,1,0,0,'heigan SAY_TAUNT3'),
(-1533116,'The end is upon you.',8833,1,0,0,'heigan SAY_CHANNELING'),
(-1533117,'Hungry worms will feast on your rotten flesh!',8834,1,0,0,'heigan SAY_TAUNT4'),
(-1533118,'Noo... o...',8828,1,0,0,'heigan SAY_DEATH'),

(-1533119,'%s spots a nearby Zombie to devour!',0,3,0,0,'gluth EMOTE_ZOMBIE'),

(-1533120,'Hah hah, I\'m just getting warmed up!',8852,1,0,0,'razuvious SAY_AGGRO1'),
(-1533121,'Stand and fight!',8853,1,0,0,'razuvious SAY_AGGRO2'),
(-1533122,'Show me what you\'ve got!',8854,1,0,0,'razuvious SAY_AGGRO3'),
(-1533123,'Sweep the leg! Do you have a problem with that?',8861,1,0,0,'razuvious SAY_SLAY1'),
(-1533124,'You should have stayed home!',8862,1,0,0,'razuvious SAY_SLAY2'),
(-1533125,'Do as I taught you!',8855,1,0,0,'razuvious SAY_COMMAND1'),
(-1533126,'Show them no mercy!',8856,1,0,0,'razuvious SAY_COMMAND2'),
(-1533127,'You disappoint me, students!',8858,1,0,0,'razuvious SAY_COMMAND3'),
(-1533128,'The time for practice is over! Show me what you\'ve learned!',8859,1,0,0,'razuvious SAY_COMMAND4'),
(-1533129,'An honorable... death...',8860,1,0,0,'razuvious SAY_DEATH'),

(-1533130,'%s summons forth Skeletal Warriors!',0,3,0,0,'noth EMOTE_WARRIOR'),
(-1533131,'%s raises more skeletons!',0,3,0,0,'noth EMOTE_SKELETON'),
(-1533132,'%s teleports to the balcony above!',0,3,0,0,'noth EMOTE_TELEPORT'),
(-1533133,'%s teleports back into the battle!',0,3,0,0,'noth EMOTE_TELEPORT_RETURN'),

(-1533134,'A Guardian of Icecrown enters the fight!',0,3,0,0,'kelthuzad EMOTE_GUARDIAN'),
(-1533135,'%s strikes!',0,3,0,0,'kelthuzad EMOTE_PHASE2'),

(-1533136,'%s teleports and begins to channel a spell!',0,3,0,0,'heigan EMOTE_TELEPORT'),
(-1533137,'%s rushes to attack once more!',0,3,0,0,'heigan EMOTE_RETURN'),

(-1533138,'%s teleports into the fray!',0,3,0,0,'gothik EMOTE_TO_FRAY'),
(-1533139,'The central gate opens!',0,3,0,0,'gothik EMOTE_GATE'),
(-1533140,'Brazenly you have disregarded powers beyond your understanding.',0,1,0,0,'gothik SAY_SPEECH_2'),
(-1533141,'You have fought hard to invade the realm of the harvester.',0,1,0,0,'gothik SAY_SPEECH_3'),
(-1533142,'Now there is only one way out - to walk the lonely path of the damned.',0,1,0,0,'gothik SAY_SPEECH_4'),

(-1533143,'An aura of necrotic energy blocks all healing!',0,3,0,0,'Loatheb EMOTE_AURA_BLOCKING'),
(-1533144,'The power of Necrotic Aura begins to wane!',0,3,0,0,'Loatheb EMOTE_AURA_WANE'),
(-1533145,'The aura fades away, allowing healing once more!',0,3,0,0,'Loatheb EMOTE_AURA_FADING'),

(-1533146,'%s spins her web into a cocoon!',0,3,0,0,'maexxna EMOTE_SPIN_WEB'),
(-1533147,'Spiderlings appear on the web!',0,3,0,0,'maexxna EMOTE_SPIDERLING'),
(-1533148,'%s sprays strands of web everywhere!',0,3,0,0,'maexxna EMOTE_SPRAY');

-- -1 534 000 THE BATTLE OF MT. HYJAL
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1534000,'I\'m in jeopardy, help me if you can!',11007,1,0,0,'jaina hyjal ATTACKED 1'),
(-1534001,'They\'ve broken through!',11049,1,0,0,'jaina hyjal ATTACKED 2'),
(-1534002,'Stay alert! Another wave approaches.',11008,1,0,0,'jaina hyjal INCOMING'),
(-1534003,'Don\'t give up! We must prevail!',11006,1,0,0,'jaina hyjal BEGIN'),
(-1534004,'Hold them back as long as possible.',11050,1,0,0,'jaina hyjal RALLY 1'),
(-1534005,'We must hold strong!',11051,1,0,0,'jaina hyjal RALLY 2'),
(-1534006,'We are lost. Fall back!',11009,1,0,0,'jaina hyjal FAILURE'),
(-1534007,'We have won valuable time. Now we must pull back!',11011,1,0,0,'jaina hyjal SUCCESS'),
(-1534008,'I did... my best.',11010,1,0,0,'jaina hyjal DEATH'),

(-1534009,'I will lie down for no one!',11031,1,0,0,'thrall hyjal ATTACKED 1'),
(-1534010,'Bring the fight to me and pay with your lives!',11061,1,0,0,'thrall hyjal ATTACKED 2'),
(-1534011,'Make ready for another wave! LOK-TAR OGAR!',11032,1,0,0,'thrall hyjal INCOMING'),
(-1534012,'Hold them back! Do not falter!',11030,1,0,0,'thrall hyjal BEGIN'),
(-1534013,'Victory or death!',11059,1,0,0,'thrall hyjal RALLY 1'),
(-1534014,'Do not give an inch of ground!',11060,1,0,0,'thrall hyjal RALLY 2'),
(-1534015,'It is over. Withdraw! We have failed.',11033,1,0,0,'thrall hyjal FAILURE'),
(-1534016,'We have played our part and done well. It is up to the others now.',11035,1,0,0,'thrall hyjal SUCCESS'),
(-1534017,'Uraaa...',11034,1,0,0,'thrall hyjal DEATH'),

(-1534018,'All of your efforts have been in vain, for the draining of the World Tree has already begun. Soon the heart of your world will beat no more.',10986,1,0,0,'archimonde SAY_PRE_EVENTS_COMPLETE'),
(-1534019,'Your resistance is insignificant.',10987,1,0,0,'archimonde SAY_AGGRO'),
(-1534020,'This world will burn!',10990,1,0,0,'archimonde SAY_DOOMFIRE1'),
(-1534021,'Manach sheek-thrish!',11041,1,0,0,'archimonde SAY_DOOMFIRE2'),
(-1534022,'A-kreesh!',10989,1,0,0,'archimonde SAY_AIR_BURST1'),
(-1534023,'Away vermin!',11043,1,0,0,'archimonde SAY_AIR_BURST2'),
(-1534024,'All creation will be devoured!',11044,1,0,0,'archimonde SAY_SLAY1'),
(-1534025,'Your soul will languish for eternity.',10991,1,0,0,'archimonde SAY_SLAY2'),
(-1534026,'I am the coming of the end!',11045,1,0,0,'archimonde SAY_SLAY3'),
(-1534027,'At last it is here. Mourn and lament the passing of all you have ever known and all that would have been! Akmin-kurai!',10993,1,0,0,'archimonde SAY_ENRAGE'),
(-1534028,'No, it cannot be! Nooo!',10992,1,0,0,'archimonde SAY_DEATH'),
(-1534029,'You are mine now.',10988,1,0,0,'archimonde SAY_SOUL_CHARGE1'),
(-1534030,'Bow to my will.',11042,1,0,0,'archimonde SAY_SOUL_CHARGE2');

-- -1 540 000 SHATTERED HALLS
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1540000,'You wish to fight us all at once? This should be amusing!',10262,1,0,0,'nethekurse SAY_INTRO'),
(-1540001,'You can have that one. I no longer need him.',10263,1,0,0,'nethekurse PEON_ATTACK_1'),
(-1540002,'Yes, beat him mercilessly. His skull is a thick as an ogres.',10264,1,0,0,'nethekurse PEON_ATTACK_2'),
(-1540003,'Don\'t waste your time on that one. He\'s weak!',10265,1,0,0,'nethekurse PEON_ATTACK_3'),
(-1540004,'You want him? Very well, take him!',10266,1,0,0,'nethekurse PEON_ATTACK_4'),
(-1540005,'One pitiful wretch down. Go on, take another one.',10267,1,0,0,'nethekurse PEON_DIE_1'),
(-1540006,'Ahh, what a waste... Next!',10268,1,0,0,'nethekurse PEON_DIE_2'),
(-1540007,'I was going to kill him anyway!',10269,1,0,0,'nethekurse PEON_DIE_3'),
(-1540008,'Thank you for saving me the trouble! Now it\'s my turn to have some fun...',10270,1,0,0,'nethekurse PEON_DIE_4'),
(-1540009,'Beg for your pittyfull life!',10259,1,0,0,'nethekurse SAY_TAUNT_1'),
(-1540010,'Run covad, ruun!',10260,1,0,0,'nethekurse SAY_TAUNT_2'),
(-1540011,'Your pain amuses me.',10261,1,0,0,'nethekurse SAY_TAUNT_3'),
(-1540012,'I\'m already bored.',10271,1,0,0,'nethekurse SAY_AGGRO_1'),
(-1540013,'Come on! ... Show me a real fight.',10272,1,0,0,'nethekurse SAY_AGGRO_2'),
(-1540014,'I had more fun torturing the peons.',10273,1,0,0,'nethekurse SAY_AGGRO_3'),
(-1540015,'You Loose.',10274,1,0,0,'nethekurse SAY_SLAY_1'),
(-1540016,'Ohh! Just die.',10275,1,0,0,'nethekurse SAY_SLAY_2'),
(-1540017,'What a ... a shame.',10276,1,0,0,'nethekurse SAY_DIE'),

(-1540018,'Smash!',10306,1,0,0,'omrogg GoCombat_1'),
(-1540019,'If you nice me let you live.',10308,1,0,0,'omrogg GoCombat_2'),
(-1540020,'Me hungry!',10309,1,0,0,'omrogg GoCombat_3'),
(-1540021,'Why don\'t you let me do the talking?',10317,1,0,0,'omrogg GoCombatDelay_1'),
(-1540022,'No, we will NOT let you live!',10318,1,0,0,'omrogg GoCombatDelay_2'),
(-1540023,'You always hungry. That why we so fat!',10319,1,0,0,'omrogg GoCombatDelay_3'),
(-1540024,'You stay here. Me go kill someone else!',10303,1,0,0,'omrogg Threat_1'),
(-1540025,'What are you doing!',10315,1,0,0,'omrogg Threat_2'),
(-1540026,'Me kill someone else...',10302,1,0,0,'omrogg Threat_3'),
(-1540027,'Me not like this one...',10300,1,0,0,'omrogg Threat_4'),
(-1540028,'That\'s not funny!',10314,1,0,0,'omrogg ThreatDelay1_1'),
(-1540029,'Me get bored...',10305,1,0,0,'omrogg ThreatDelay1_2'),
(-1540030,'I\'m not done yet, idiot!',10313,1,0,0,'omrogg ThreatDelay1_3'),
(-1540031,'Hey you numbskull!',10312,1,0,0,'omrogg ThreatDelay1_4'),
(-1540032,'Ha ha ha.',10304,1,0,0,'omrogg ThreatDelay2_1'),
(-1540033,'Whhy! He almost dead!',10316,1,0,0,'omrogg ThreatDelay2_2'),
(-1540034,'H\'ey...',10307,1,0,0,'omrogg ThreatDelay2_3'),
(-1540035,'We kill his friend!',10301,1,0,0,'omrogg ThreatDelay2_4'),
(-1540036,'This one die easy!',10310,1,0,0,'omrogg Killing_1'),
(-1540037,'I\'m tired. You kill next one!',10320,1,0,0,'omrogg Killing_2'),
(-1540038,'That\'s because I do all the hard work!',10321,1,0,0,'omrogg KillingDelay_1'),
(-1540039,'This all...your fault!',10311,1,0,0,'omrogg YELL_DIE_L'),
(-1540040,'I...hate...you...',10322,1,0,0,'omrogg YELL_DIE_R'),
(-1540041,'%s enrages!',0,2,0,0,'omrogg EMOTE_ENRAGE'),

(-1540042,'Ours is the true Horde! The only Horde!',10323,1,0,0,'kargath SAY_AGGRO1'),
(-1540043,'I\'ll carve the meat from your bones!',10324,1,0,0,'kargath SAY_AGGRO2'),
(-1540044,'I am called Bladefist for a reason, as you will see!',10325,1,0,0,'kargath SAY_AGGRO3'),
(-1540045,'For the real Horde!',10326,1,0,0,'kargath SAY_SLAY1'),
(-1540046,'I am the only Warchief!',10327,1,0,0,'kargath SAY_SLAY2'),
(-1540047,'The true Horde... will.. prevail...',10328,1,0,0,'kargath SAY_DEATH');

-- -1 542 000 BLOOD FURNACE
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1542000,'Who dares interrupt... What is this? What have you done? You ruin everything!',10164,1,0,0,'kelidan SAY_WAKE'),
(-1542001,'You mustn\'t let him loose!',10166,1,0,0,'kelidan SAY_ADD_AGGRO_1'),
(-1542002,'Ignorant whelps!',10167,1,0,0,'kelidan SAY_ADD_AGGRO_2'),
(-1542003,'You fools! He\'ll kill us all!',10168,1,0,0,'kelidan SAY_ADD_AGGRO_3'),
(-1542004,'Just as you deserve!',10169,1,0,0,'kelidan SAY_KILL_1'),
(-1542005,'Your friends will soon be joining you.',10170,1,0,0,'kelidan SAY_KILL_2'),
(-1542006,'Closer... Come closer.. and burn!',10165,1,0,0,'kelidan SAY_NOVA'),
(-1542007,'Good luck... you\'ll need it..',10171,1,0,0,'kelidan SAY_DIE'),

(-1542008,'Come intruders....',0,1,0,0,'broggok SAY_AGGRO'),

(-1542009,'My work must not be interrupted.',10286,1,0,0,'the_maker SAY_AGGRO_1'),
(-1542010,'Perhaps I can find a use for you.',10287,1,0,0,'the_maker SAY_AGGRO_2'),
(-1542011,'Anger... Hate... These are tools I can use.',10288,1,0,0,'the_maker SAY_AGGRO_3'),
(-1542012,'Let\'s see what I can make of you.',10289,1,0,0,'the_maker SAY_KILL_1'),
(-1542013,'It is pointless to resist.',10290,1,0,0,'the_maker SAY_KILL_2'),
(-1542014,'Stay away from... me.',10291,1,0,0,'the_maker SAY_DIE');

-- -1 543 000 HELLFIRE RAMPARTS
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1543000,'Do you smell that? Fresh meat has somehow breached our citadel. Be wary of any intruders.',0,1,0,0,'gargolmar SAY_TAUNT'),
(-1543001,'Heal me! QUICKLY!',10329,1,0,0,'gargolmar SAY_HEAL'),
(-1543002,'Back off, pup!',10330,1,0,0,'gargolmar SAY_SURGE'),
(-1543003,'What have we here...?',10331,1,0,0,'gargolmar SAY_AGGRO_1'),
(-1543004,'Heh... this may hurt a little.',10332,1,0,0,'gargolmar SAY_AGGRO_2'),
(-1543005,'I\'m gonna enjoy this.',10333,1,0,0,'gargolmar SAY_AGGRO_3'),
(-1543006,'Say farewell!',10334,1,0,0,'gargolmar SAY_KILL_1'),
(-1543007,'Much too easy...',10335,1,0,0,'gargolmar SAY_KILL_2'),
(-1543008,'Hahah.. <cough> ..argh!',10336,1,0,0,'gargolmar SAY_DIE'),

(-1543009,'You dare stand against me?!',10280,1,0,0,'omor SAY_AGGRO_1'),
(-1543010,'I will not be defeated!',10279,1,0,0,'omor SAY_AGGRO_2'),
(-1543011,'Your insolence will be your death.',10281,1,0,0,'omor SAY_AGGRO_3'),
(-1543012,'Achor-she-ki! Feast my pet! Eat your fill!',10277,1,0,0,'omor SAY_SUMMON'),
(-1543013,'A-Kreesh!',10278,1,0,0,'omor SAY_CURSE'),
(-1543014,'Die, weakling!',10282,1,0,0,'omor SAY_KILL_1'),
(-1543015,'It is... not over.',10284,1,0,0,'omor SAY_DIE'),
(-1543016,'I am victorious!',10283,1,0,0,'omor SAY_WIPE'),

(-1543017,'You have faced many challenges, pity they were all in vain. Soon your people will kneel to my lord!',10292,1,0,0,'vazruden SAY_INTRO'),
(-1543018,'Your time is running out!',10294,1,0,0,'vazruden SAY_AGGRO1'),
(-1543019,'You are nothing, I answer a higher call!',10295,1,0,0,'vazruden SAY_AGGRO2'),
(-1543020,'The Dark Lord laughs at you!',10296,1,0,0,'vazruden SAY_AGGRO3'),
(-1543021,'Is there no one left to test me?',10293,1,0,0,'vazruden SAY_TAUNT'),
(-1543022,'It is over. Finished!',10297,1,0,0,'vazruden SAY_KILL1'),
(-1543023,'Your days are done!',10298,1,0,0,'vazruden SAY_KILL2'),
(-1543024,'My lord will be the end you all...',10299,1,0,0,'vazruden SAY_DEATH'),
(-1543025,'%s descends from the sky.',0,3,0,0,'vazruden EMOTE_DESCEND');

-- -1 544 000 MAGTHERIDON'S LAIR
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1544000,'Wretched, meddling insects. Release me and perhaps i will grant you a merciful death!',10247,1,0,0,'magtheridon SAY_TAUNT1'),
(-1544001,'Vermin! Leeches! Take my blood and choke on it!',10248,1,0,0,'magtheridon SAY_TAUNT2'),
(-1544002,'Illidan is an arrogant fool. I will crush him and reclaim Outland as my own.',10249,1,0,0,'magtheridon SAY_TAUNT3'),
(-1544003,'Away, you mindless parasites. My blood is my own!',10250,1,0,0,'magtheridon SAY_TAUNT4'),
(-1544004,'How long do you believe your pathetic sorcery can hold me?',10251,1,0,0,'magtheridon SAY_TAUNT5'),
(-1544005,'My blood will be the end of you!',10252,1,0,0,'magtheridon SAY_TAUNT6'),
(-1544006,'I...am...UNLEASHED!!!',10253,1,0,0,'magtheridon SAY_FREED'),
(-1544007,'Thank you for releasing me. Now...die!',10254,1,0,0,'magtheridon SAY_AGGRO'),
(-1544008,'Not again...NOT AGAIN!',10256,1,0,0,'magtheridon SAY_BANISH'),
(-1544009,'I will not be taken so easily. Let the walls of this prison tremble...and FALL!!!',10257,1,0,0,'magtheridon SAY_CHAMBER_DESTROY'),
(-1544010,'Did you think me weak? Soft? Who is the weak one now?!',10255,1,0,0,'magtheridon SAY_PLAYER_KILLED'),
(-1544011,'The Legion...will consume you...all...',10258,1,0,0,'magtheridon SAY_DEATH'),
(-1544012,'%s becomes enraged!',0,2,0,0,'magtheridon EMOTE_BERSERK'),
(-1544013,'%s begins to cast Blast Nova!',0,3,0,0,'magtheridon EMOTE_BLASTNOVA'),
(-1544014,'%s\'s bonds begin to weaken!',0,2,0,0,'magtheridon EMOTE_BEGIN'),
(-1544015,'%s breaks free!',0,2,0,0,'magtheridon EMOTE_FREED');

-- -1 545 000 THE STEAMVAULT
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1545000,'Surge forth my pets!',10360,1,0,0,'thespia SAY_SUMMON'),
(-1545001,'The depths will consume you!',10361,1,0,0,'thespia SAY_AGGRO_1'),
(-1545002,'Meet your doom, surface dwellers!',10362,1,0,0,'thespia SAY_AGGRO_2'),
(-1545003,'You will drown in blood!',10363,1,0,0,'thespia SAY_AGGRO_3'),
(-1545004,'To the depths of oblivion with you!',10364,1,0,0,'thespia SAY_SLAY_1'),
(-1545005,'For my lady and master!',10365,1,0,0,'thespia SAY_SLAY_2'),
(-1545006,'Our matron will be.. the end of.. you..',10366,1,0,0,'thespia SAY_DEAD'),

(-1545007,'I\'m bringin\' the pain!',10367,1,0,0,'mekgineer SAY_MECHANICS'),
(-1545008,'You\'re in for a world of hurt!',10368,1,0,0,'mekgineer SAY_AGGRO_1'),
(-1545009,'Eat hot metal, scumbag!',10369,1,0,0,'mekgineer SAY_AGGRO_2'),
(-1545010,'I\'ll come over there!',10370,1,0,0,'mekgineer SAY_AGGRO_3'),
(-1545011,'I\'m bringin\' the pain!',10371,1,0,0,'mekgineer SAY_AGGRO_4'),
(-1545012,'You just got served, punk!',10372,1,0,0,'mekgineer SOUND_SLAY_1'),
(-1545013,'I own you!',10373,1,0,0,'mekgineer SOUND_SLAY_2'),
(-1545014,'Have fun dyin\', cupcake!',10374,1,0,0,'mekgineer SOUND_SLAY_3'),
(-1545015,'Mommy!',10375,1,0,0,'mekgineer SAY_DEATH'),

(-1545016,'You deem yourselves worthy simply because you bested my guards? Our work here will not be compromised!',10390,1,0,0,'kalithresh SAY_INTRO'),
(-1545017,'This is not nearly over...',10391,1,0,0,'kalithresh SAY_REGEN'),
(-1545018,'Your head will roll!',10392,1,0,0,'kalithresh SAY_AGGRO1'),
(-1545019,'I despise all of your kind!',10393,1,0,0,'kalithresh SAY_AGGRO2'),
(-1545020,'Ba\'ahntha sol\'dorei!',10394,1,0,0,'kalithresh SAY_AGGRO3'),
(-1545021,'Scram, surface filth!',10395,1,0,0,'kalithresh SAY_SLAY1'),
(-1545022,'Ah ha ha ha ha ha ha!',10396,1,0,0,'kalithresh SAY_SLAY2'),
(-1545023,'For her Excellency... for... Vashj!',10397,1,0,0,'kalithresh SAY_DEATH');

-- -1 546 000 THE UNDERBOG

-- -1 547 000 THE SLAVE PENS

-- -1 548 000 SERPENTSHRINE CAVERN
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1548000,'I cannot allow you to interfere!',11289,1,0,0,'hydross SAY_AGGRO'),
(-1548001,'Better, much better.',11290,1,0,0,'hydross SAY_SWITCH_TO_CLEAN'),
(-1548002,'They have forced me to this...',11291,1,0,0,'hydross SAY_CLEAN_SLAY1'),
(-1548003,'I have no choice.',11292,1,0,0,'hydross SAY_CLEAN_SLAY2'),
(-1548004,'I am... released...',11293,1,0,0,'hydross SAY_CLEAN_DEATH'),
(-1548005,'Aaghh, the poison...',11297,1,0,0,'hydross SAY_SWITCH_TO_CORRUPT'),
(-1548006,'I will purge you from this place.',11298,1,0,0,'hydross SAY_CORRUPT_SLAY1'),
(-1548007,'You are no better than they!',11299,1,0,0,'hydross SAY_CORRUPT_SLAY2'),
(-1548008,'You are the disease, not I',11300,1,0,0,'hydross SAY_CORRUPT_DEATH'),

(-1548009,'Finally, my banishment ends!',11312,1,0,0,'leotheras SAY_AGGRO'),
(-1548010,'Be gone, trifling elf.  I am in control now!',11304,1,0,0,'leotheras SAY_SWITCH_TO_DEMON'),
(-1548011,'We all have our demons...',11305,1,0,0,'leotheras SAY_INNER_DEMONS'),
(-1548012,'I have no equal.',11306,1,0,0,'leotheras SAY_DEMON_SLAY1'),
(-1548013,'Perish, mortal.',11307,1,0,0,'leotheras SAY_DEMON_SLAY2'),
(-1548014,'Yes, YES! Ahahah!',11308,1,0,0,'leotheras SAY_DEMON_SLAY3'),
(-1548015,'Kill! KILL!',11314,1,0,0,'leotheras SAY_NIGHTELF_SLAY1'),
(-1548016,'That\'s right! Yes!',11315,1,0,0,'leotheras SAY_NIGHTELF_SLAY2'),
(-1548017,'Who\'s the master now?',11316,1,0,0,'leotheras SAY_NIGHTELF_SLAY3'),
(-1548018,'No... no! What have you done? I am the master! Do you hear me? I am... aaggh! Can\'t... contain him...',11313,1,0,0,'leotheras SAY_FINAL_FORM'),
(-1548019,'At last I am liberated. It has been too long since I have tasted true freedom!',11309,1,0,0,'leotheras SAY_FREE'),
(-1548020,'You cannot kill me! Fools, I\'ll be back! I\'ll... aarghh...',11317,1,0,0,'leotheras SAY_DEATH'),

(-1548021,'Guards, attention! We have visitors...',11277,1,0,0,'karathress SAY_AGGRO'),
(-1548022,'Your overconfidence will be your undoing! Guards, lend me your strength!',11278,1,0,0,'karathress SAY_GAIN_BLESSING'),
(-1548023,'Go on, kill them! I\'ll be the better for it!',11279,1,0,0,'karathress SAY_GAIN_ABILITY1'),
(-1548024,'I am more powerful than ever!',11280,1,0,0,'karathress SAY_GAIN_ABILITY2'),
(-1548025,'More knowledge, more power!',11281,1,0,0,'karathress SAY_GAIN_ABILITY3'),
(-1548026,'Land-dwelling scum!',11282,1,0,0,'karathress SAY_SLAY1'),
(-1548027,'Alana be\'lendor!',11283,1,0,0,'karathress SAY_SLAY2'),
(-1548028,'I am rid of you.',11284,1,0,0,'karathress SAY_SLAY3'),
(-1548029,'Her ... excellency ... awaits!',11285,1,0,0,'karathress SAY_DEATH'),

(-1548030,'Flood of the deep, take you!',11321,1,0,0,'morogrim SAY_AGGRO'),
(-1548031,'By the Tides, kill them at once!',11322,1,0,0,'morogrim SAY_SUMMON1'),
(-1548032,'Destroy them my subjects!',11323,1,0,0,'morogrim SAY_SUMMON2'),
(-1548033,'There is nowhere to hide!',11324,1,0,0,'morogrim SAY_SUMMON_BUBL1'),
(-1548034,'Soon it will be finished!',11325,1,0,0,'morogrim SAY_SUMMON_BUBL2'),
(-1548035,'It is done!',11326,1,0,0,'morogrim SAY_SLAY1'),
(-1548036,'Strugging only makes it worse.',11327,1,0,0,'morogrim SAY_SLAY2'),
(-1548037,'Only the strong survive.',11328,1,0,0,'morogrim SAY_SLAY3'),
(-1548038,'Great... currents of... Ageon.',11329,1,0,0,'morogrim SAY_DEATH'),
(-1548039,'%s sends his enemies to their watery graves!',0,2,0,0,'morogrim EMOTE_WATERY_GRAVE'),
(-1548040,'The violent earthquake has alerted nearby murlocs!',0,3,0,0,'morogrim EMOTE_EARTHQUAKE'),
(-1548041,'%s summons Watery Globules!',0,2,0,0,'morogrim EMOTE_WATERY_GLOBULES'),

(-1548042,'Water is life. It has become a rare commodity here in Outland. A commodity that we alone shall control. We are the Highborne, and the time has come at last for us to retake our rightful place in the world!',11531,1,0,0,'vashj SAY_INTRO'),
(-1548043,'I\'ll split you from stem to stern!',11532,1,0,0,'vashj SAY_AGGRO1'),
(-1548044,'Victory to Lord Illidan!',11533,1,0,0,'vashj SAY_AGGRO2'),
(-1548045,'I spit on you, surface filth!',11534,1,0,0,'vashj SAY_AGGRO3'),
(-1548046,'Death to the outsiders!',11535,1,0,0,'vashj SAY_AGGRO4'),
(-1548047,'I did not wish to lower myself by engaging your kind, but you leave me little choice!',11538,1,0,0,'vashj SAY_PHASE1'),
(-1548048,'The time is now! Leave none standing!',11539,1,0,0,'vashj SAY_PHASE2'),
(-1548049,'You may want to take cover.',11540,1,0,0,'vashj SAY_PHASE3'),
(-1548050,'Straight to the heart!',11536,1,0,0,'vashj SAY_BOWSHOT1'),
(-1548051,'Seek your mark!',11537,1,0,0,'vashj SAY_BOWSHOT2'),
(-1548052,'Your time ends now!',11541,1,0,0,'vashj SAY_SLAY1'),
(-1548053,'You have failed!',11542,1,0,0,'vashj SAY_SLAY2'),
(-1548054,'Be\'lamere an\'delay',11543,1,0,0,'vashj SAY_SLAY3'),
(-1548055,'Lord Illidan, I... I am... sorry.',11544,1,0,0,'vashj SAY_DEATH');

-- -1 550 000 THE EYE
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1550000,'Alert, you are marked for extermination!',11213,1,0,0,'voidreaver SAY_AGGRO'),
(-1550001,'Extermination, successful.',11215,1,0,0,'voidreaver SAY_SLAY1'),
(-1550002,'Imbecile life form, no longer functional.',11216,1,0,0,'voidreaver SAY_SLAY2'),
(-1550003,'Threat neutralized.',11217,1,0,0,'voidreaver SAY_SLAY3'),
(-1550004,'Systems... shutting... down...',11214,1,0,0,'voidreaver SAY_DEATH'),
(-1550005,'Alternative measure commencing...',11218,1,0,0,'voidreaver SAY_POUNDING1'),
(-1550006,'Calculating force parameters...',11219,1,0,0,'voidreaver SAY_POUNDING2'),

(-1550007,'Tal anu\'men no Sin\'dorei!',11134,1,0,0,'solarian SAY_AGGRO'),
(-1550008,'Ha ha ha! You are hopelessly outmatched!',11139,1,0,0,'solarian SAY_SUMMON1'),
(-1550009,'I will crush your delusions of grandeur!',11140,1,0,0,'solarian SAY_SUMMON2'),
(-1550010,'Your soul belongs to the Abyss!',11136,1,0,0,'solarian SAY_KILL1'),
(-1550011,'By the blood of the Highborne!',11137,1,0,0,'solarian SAY_KILL2'),
(-1550012,'For the Sunwell!',11138,1,0,0,'solarian SAY_KILL3'),
(-1550013,'The warmth of the sun... awaits.',11135,1,0,0,'solarian SAY_DEATH'),
(-1550014,'Enough of this! Now I call upon the fury of the cosmos itself.',0,1,0,0,'solarian SAY_VOIDA'),
(-1550015,'I become ONE... with the VOID!',0,1,0,0,'solarian SAY_VOIDB'),

(-1550016,'Energy. Power. My people are addicted to it... a dependence made manifest after the Sunwell was destroyed. Welcome... to the future. A pity you are too late to stop it. No one can stop me now! Selama ashal\'anore!',11256,1,0,0,'kaelthas SAY_INTRO'),
(-1550017,'Capernian will see to it that your stay here is a short one.',11257,1,0,0,'kaelthas SAY_INTRO_CAPERNIAN'),
(-1550018,'Well done, you have proven worthy to test your skills against my master engineer, Telonicus.',11258,1,0,0,'kaelthas SAY_INTRO_TELONICUS'),
(-1550019,'Let us see how your nerves hold up against the Darkener, Thaladred.',11259,1,0,0,'kaelthas SAY_INTRO_THALADRED'),
(-1550020,'You have persevered against some of my best advisors... but none can withstand the might of the Blood Hammer. Behold, Lord Sanguinar!',11260,1,0,0,'kaelthas SAY_INTRO_SANGUINAR'),
(-1550021,'As you see, I have many weapons in my arsenal...',11261,1,0,0,'kaelthas SAY_PHASE2_WEAPON'),
(-1550022,'Perhaps I underestimated you. It would be unfair to make you fight all four advisors at once, but... fair treatment was never shown to my people. I\'m just returning the favor.',11262,1,0,0,'kaelthas SAY_PHASE3_ADVANCE'),
(-1550023,'Alas, sometimes one must take matters into one\'s own hands. Balamore shanal!',11263,1,0,0,'kaelthas SAY_PHASE4_INTRO2'),
(-1550024,'I have not come this far to be stopped! The future I have planned will not be jeopardized! Now you will taste true power!!',11273,1,0,0,'kaelthas SAY_PHASE5_NUTS'),
(-1550025,'You will not prevail.',11270,1,0,0,'kaelthas SAY_SLAY1'),
(-1550026,'You gambled...and lost.',11271,1,0,0,'kaelthas SAY_SLAY2'),
(-1550027,'This was Child\'s play.',11272,1,0,0,'kaelthas SAY_SLAY3'),
(-1550028,'Obey me.',11268,1,0,0,'kaelthas SAY_MINDCONTROL1'),
(-1550029,'Bow to my will.',11269,1,0,0,'kaelthas SAY_MINDCONTROL2'),
(-1550030,'Let us see how you fare when your world is turned upside down.',11264,1,0,0,'kaelthas SAY_GRAVITYLAPSE1'),
(-1550031,'Having trouble staying grounded?',11265,1,0,0,'kaelthas SAY_GRAVITYLAPSE2'),
(-1550032,'Anara\'nel belore!',11267,1,0,0,'kaelthas SAY_SUMMON_PHOENIX1'),
(-1550033,'By the power of the sun!',11266,1,0,0,'kaelthas SAY_SUMMON_PHOENIX2'),
(-1550034,'For...Quel...thalas!',11274,1,0,0,'kaelthas SAY_DEATH'),

(-1550035,'Prepare yourselves!',11203,1,0,0,'thaladred SAY_THALADRED_AGGRO'),
(-1550036,'Forgive me, my prince! I have... failed.',11204,1,0,0,'thaladred SAY_THALADRED_DEATH'),
(-1550037,'%s sets his gaze on $N!',0,2,0,0,'thaladred EMOTE_THALADRED_GAZE'),

(-1550038,'Blood for blood!',11152,1,0,0,'sanguinar SAY_SANGUINAR_AGGRO'),
(-1550039,'NO! I ...will... not...',11153,1,0,0,'sanguinar SAY_SANGUINAR_DEATH'),

(-1550040,'The sin\'dore reign supreme!',11117,1,0,0,'capernian SAY_CAPERNIAN_AGGRO'),
(-1550041,'This is not over!',11118,1,0,0,'capernian SAY_CAPERNIAN_DEATH'),

(-1550042,'Anar\'alah belore!',11157,1,0,0,'telonicus SAY_TELONICUS_AGGRO'),
(-1550043,'More perils... await',11158,1,0,0,'telonicus SAY_TELONICUS_DEATH');

-- -1 552 000 THE ARCATRAZ
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1552000,'It is a small matter to control the mind of the weak... for I bear allegiance to powers untouched by time, unmoved by fate. No force on this world or beyond harbors the strength to bend our knee... not even the mighty Legion!',11122,1,0,0,'skyriss SAY_INTRO'),
(-1552001,'Bear witness to the agent of your demise!',11123,1,0,0,'skyriss SAY_AGGRO'),
(-1552002,'Your fate is written!',11124,1,0,0,'skyriss SAY_KILL_1'),
(-1552003,'The chaos I have sown here is but a taste...',11125,1,0,0,'skyriss SAY_KILL_2'),
(-1552004,'You will do my bidding, weakling.',11127,1,0,0,'skyriss SAY_MIND_1'),
(-1552005,'Your will is no longer your own.',11128,1,0,0,'skyriss SAY_MIND_2'),
(-1552006,'Flee in terror!',11129,1,0,0,'skyriss SAY_FEAR_1'),
(-1552007,'I will show you horrors undreamed of!',11130,1,0,0,'skyriss SAY_FEAR_2'),
(-1552008,'We span the universe, as countless as the stars!',11131,1,0,0,'skyriss SAY_IMAGE'),
(-1552009,'I am merely one of... infinite multitudes.',11126,1,0,0,'skyriss SAY_DEATH'),

(-1552010,'Where in Bonzo\'s brass buttons am I? And who are-- yaaghh, that\'s one mother of a headache!',11171,1,0,0,'millhouse SAY_INTRO_1'),
(-1552011,'\"Lowly\"? I don\'t care who you are friend, no one refers to the mighty Millhouse Manastorm as \"Lowly\"! I have no idea what goes on here, but I will gladly join your fight against this impudent imbecile! Prepare to defend yourself, cretin!',11172,1,0,0,'millhouse SAY_INTRO_2'),
(-1552012,'I just need to get some things ready first. You guys go ahead and get started. I need to summon up some water...',11173,1,0,0,'millhouse SAY_WATER'),
(-1552013,'Fantastic! Next, some protective spells. Yes! Now we\'re cookin\'',11174,1,0,0,'millhouse SAY_BUFFS'),
(-1552014,'And of course i\'ll need some mana. You guys are gonna love this, just wait.',11175,1,0,0,'millhouse SAY_DRINK'),
(-1552015,'Aaalllriiiight!! Who ordered up an extra large can of whoop-ass?',11176,1,0,0,'millhouse SAY_READY'),
(-1552016,'I didn\'t even break a sweat on that one.',11177,1,0,0,'millhouse SAY_KILL_1'),
(-1552017,'You guys, feel free to jump in anytime.',11178,1,0,0,'millhouse SAY_KILL_2'),
(-1552018,'I\'m gonna light you up, sweet cheeks!',11179,1,0,0,'millhouse SAY_PYRO'),
(-1552019,'Ice, ice, baby!',11180,1,0,0,'millhouse SAY_ICEBLOCK'),
(-1552020,'Heal me! Oh, for the love of all that is holy, HEAL me! I\'m dying!',11181,1,0,0,'millhouse SAY_LOWHP'),
(-1552021,'You\'ll be hearing from my lawyer...',11182,1,0,0,'millhouse SAY_DEATH'),
(-1552022,'Who\'s bad? Who\'s bad? That\'s right: we bad!',11183,1,0,0,'millhouse SAY_COMPLETE'),

(-1552023,'I knew the prince would be angry but, I... I have not been myself. I had to let them out! The great one speaks to me, you see. Wait--outsiders. Kael\'thas did not send you! Good... I\'ll just tell the prince you released the prisoners!',11222,1,0,0,'mellichar YELL_INTRO1'),
(-1552024,'The naaru kept some of the most dangerous beings in existence here in these cells. Let me introduce you to another...',11223,1,0,0,'mellichar YELL_INTRO2'),
(-1552025,'Yes, yes... another! Your will is mine!',11224,1,0,0,'mellichar YELL_RELEASE1'),
(-1552026,'Behold another terrifying creature_spawns of incomprehensible power!',11225,1,0,0,'mellichar YELL_RELEASE2A'),
(-1552027,'What is this? A lowly gnome? I will do better, O\'great one.',11226,1,0,0,'mellichar YELL_RELEASE2B'),
(-1552028,'Anarchy! Bedlam! Oh, you are so wise! Yes, I see it now, of course!',11227,1,0,0,'mellichar YELL_RELEASE3'),
(-1552029,'One final cell remains. Yes, O\'great one, right away!',11228,1,0,0,'mellichar YELL_RELEASE4'),
(-1552030,'Welcome, O\'great one. I am your humble servant.',11229,1,0,0,'mellichar YELL_WELCOME');

-- -1 553 000 THE BOTANICA
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1553000,'What are you doing? These specimens are very delicate!',11144,1,0,0,'freywinn SAY_AGGRO'),
(-1553001,'Your life cycle is now concluded!',11145,1,0,0,'freywinn SAY_KILL_1'),
(-1553002,'You will feed the worms.',11146,1,0,0,'freywinn SAY_KILL_2'),
(-1553003,'Endorel aluminor!',11147,1,0,0,'freywinn SAY_TREE_1'),
(-1553004,'Nature bends to my will!',11148,1,0,0,'freywinn SAY_TREE_2'),
(-1553005,'The specimens...must be preserved.',11149,1,0,0,'freywinn SAY_DEATH'),

(-1553006,'%s emits a strange noise.',0,2,0,0,'laj EMOTE_SUMMON'),

(-1553007,'Who disturbs this sanctuary?',11230,1,0,0,'warp SAY_AGGRO'),
(-1553008,'You must die! But wait: this does not--No, no... you must die!',11231,1,0,0,'warp SAY_SLAY_1'),
(-1553009,'What am I doing? Why do I...',11232,1,0,0,'warp SAY_SLAY_2'),
(-1553010,'Children, come to me!',11233,1,0,0,'warp SAY_SUMMON_1'),
(-1553011,'Maybe this is not--No, we fight! Come to my aid.',11234,1,0,0,'warp SAY_SUMMON_2'),
(-1553012,'So... confused. Do not... belong here!',11235,1,0,0,'warp SAY_DEATH');

-- -1 554 000 THE MECHANAR
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1554000,'I predict a painful death.',11101,1,0,0,'gyro SAY_AGGRO'),
(-1554001,'Measure twice; cut once!',11104,1,0,0,'gyro SAY_SAW_ATTACK1'),
(-1554002,'If my division is correct, you should be quite dead.',11105,1,0,0,'gyro SAY_SAW_ATTACK2'),
(-1554003,'Your strategy was flawed!',11102,1,0,0,'gyro SAY_SLAY1'),
(-1554004,'Yes, the only logical outcome.',11103,1,0,0,'gyro SAY_SLAY2'),
(-1554005,'An unforseen... contingency',11106,1,0,0,'gyro SAY_DEATH'),

(-1554006,'You have approximately five seconds to live.',11109,1,0,0,'ironhand SAY_AGGRO_1'),
(-1554007,'With the precise angle and velocity...',11112,1,0,0,'ironhand SAY_HAMMER_1'),
(-1554008,'Low tech yet quiet effective!',11113,1,0,0,'ironhand SAY_HAMMER_2'),
(-1554009,'A foregone conclusion.',11110,1,0,0,'ironhand SAY_SLAY_1'),
(-1554010,'The processing will continue a schedule!',11111,1,0,0,'ironhand SAY_SLAY_2'),
(-1554011,'My calculations did not...',11114,1,0,0,'ironhand SAY_DEATH_1'),
(-1554012,'%s raises his hammer menacingly...',0,3,0,0,'ironhand EMOTE_HAMMER'),

(-1554013,'Don\'t value your life very much, do you?',11186,1,0,0,'sepethrea SAY_AGGRO'),
(-1554014,'I am not alone.',11191,1,0,0,'sepethrea SAY_SUMMON'),
(-1554015,'Think you can take the heat?',11189,1,0,0,'sepethrea SAY_DRAGONS_BREATH_1'),
(-1554016,'Anar\'endal dracon!',11190,1,0,0,'sepethrea SAY_DRAGONS_BREATH_2'),
(-1554017,'And don\'t come back!',11187,1,0,0,'sepethrea SAY_SLAY1'),
(-1554018,'En\'dala finel el\'dal',11188,1,0,0,'sepethrea SAY_SLAY2'),
(-1554019,'Anu... bala belore...alon.',11192,1,0,0,'sepethrea SAY_DEATH'),

(-1554020,'We are on a strict timetable. You will not interfere!',11193,1,0,0,'pathaleon SAY_AGGRO'),
(-1554021,'I\'m looking for a team player...',11197,1,0,0,'pathaleon SAY_DOMINATION_1'),
(-1554022,'You work for me now!',11198,1,0,0,'pathaleon SAY_DOMINATION_2'),
(-1554023,'Time to supplement my work force.',11196,1,0,0,'pathaleon SAY_SUMMON'),
(-1554024,'I prefeer to be hands-on...',11199,1,0,0,'pathaleon SAY_ENRAGE'),
(-1554025,'A minor inconvenience.',11194,1,0,0,'pathaleon SAY_SLAY_1'),
(-1554026,'Looks like you lose.',11195,1,0,0,'pathaleon SAY_SLAY_2'),
(-1554027,'The project will... continue.',11200,1,0,0,'pathaleon SAY_DEATH');

-- -1 555 000 SHADOW LABYRINTH
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1555000,'Infidels have invaded the sanctuary! Sniveling pests...You have yet to learn the true meaning of agony!',10473,1,0,0,'hellmaw SAY_INTRO'),
(-1555001,'Pathetic mortals! You will pay dearly!',10475,1,0,0,'hellmaw SAY_AGGRO1'),
(-1555002,'I will break you!',10476,1,0,0,'hellmaw SAY_AGGRO2'),
(-1555003,'Finally! Something to relieve the tedium!',10477,1,0,0,'hellmaw SAY_AGGRO3'),
(-1555004,'Aid me, you fools, before it\'s too late!',10474,1,0,0,'hellmaw SAY_HELP'),
(-1555005,'Do you fear death?',10478,1,0,0,'hellmaw SAY_SLAY1'),
(-1555006,'This is the part I enjoy most.',10479,1,0,0,'hellmaw SAY_SLAY2'),
(-1555007,'Do not...grow...overconfident, mortal.',10480,1,0,0,'hellmaw SAY_DEATH'),

(-1555008,'All flesh must burn.',10482,1,0,0,'blackhearth SAY_INTRO1'),
(-1555009,'All creation must be unmade!',10483,1,0,0,'blackhearth SAY_INTRO2'),
(-1555010,'Power will be yours!',10484,1,0,0,'blackhearth SAY_INTRO3'),
(-1555011,'You\'ll be sorry!',10486,1,0,0,'blackhearth SAY_AGGRO1'),
(-1555012,'Time for fun!',10487,1,0,0,'blackhearth SAY_AGGRO2'),
(-1555013,'I see dead people!',10488,1,0,0,'blackhearth SAY_AGGRO3'),
(-1555014,'No comin\' back for you!',10489,1,0,0,'blackhearth SAY_SLAY1'),
(-1555015,'Nice try!',10490,1,0,0,'blackhearth SAY_SLAY2'),
(-1555016,'Help us, hurry!',10485,1,0,0,'blackhearth SAY_HELP'),
(-1555017,'This... no... good...',10491,1,0,0,'blackhearth SAY_DEATH'),

(-1555018,'Be ready for Dark One\'s return.',10492,1,0,0,'blackhearth SAY2_INTRO1'),
(-1555019,'So we have place in new universe.',10493,1,0,0,'blackhearth SAY2_INTRO2'),
(-1555020,'Dark one promise!',10494,1,0,0,'blackhearth SAY2_INTRO3'),
(-1555021,'You\'ll be sorry!',10496,1,0,0,'blackhearth SAY2_AGGRO1'),
(-1555022,'Time to kill!',10497,1,0,0,'blackhearth SAY2_AGGRO2'),
(-1555023,'You be dead people!',10498,1,0,0,'blackhearth SAY2_AGGRO3'),
(-1555024,'Now you gone for good.',10499,1,0,0,'blackhearth SAY2_SLAY1'),
(-1555025,'You failed, haha haha',10500,1,0,0,'blackhearth SAY2_SLAY2'),
(-1555026,'Help us, hurry!',10495,1,0,0,'blackhearth SAY2_HELP'),
(-1555027,'Arrgh, aah...ahhh',10501,1,0,0,'blackhearth SAY2_DEATH'),

(-1555028,'Keep your minds focused for the days of reckoning are close at hand. Soon, the destroyer of worlds will return to make good on his promise. Soon the destruction of all that is will begin!',10522,1,0,0,'vorpil SAY_INTRO'),
(-1555029,'I\'ll make an offering of your blood!',10524,1,0,0,'vorpil SAY_AGGRO1'),
(-1555030,'You\'ll be a fine example, for the others.',10525,1,0,0,'vorpil SAY_AGGRO2'),
(-1555031,'Good, a worthy sacrifice.',10526,1,0,0,'vorpil SAY_AGGRO3'),
(-1555032,'Come to my aid, heed your master now!',10523,1,0,0,'vorpil SAY_HELP'),
(-1555033,'I serve with pride.',10527,1,0,0,'vorpil SAY_SLAY1'),
(-1555034,'Your death is for the greater cause!',10528,1,0,0,'vorpil SAY_SLAY2'),
(-1555035,'I give my life... Gladly.',10529,1,0,0,'vorpil SAY_DEATH'),

(-1555036,'%s draws energy from the air.',0,2,0,0,'murmur EMOTE_SONIC_BOOM');

-- -1 556 000 SETHEKK HALLS
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1556000,'I have pets..<squawk>..of my own!',10502,1,0,0,'syth SAY_SUMMON'),
(-1556001,'Hrrmm.. Time to.. hrrm.. make my move.',10503,1,0,0,'syth SAY_AGGRO_1'),
(-1556002,'Nice pets..hrm.. Yes! <squawking>',10504,1,0,0,'syth SAY_AGGRO_2'),
(-1556003,'Nice pets have.. weapons. No so..<squawk>..nice.',10505,1,0,0,'syth SAY_AGGRO_3'),
(-1556004,'Death.. meeting life is.. <squawking>',10506,1,0,0,'syth SAY_SLAY_1'),
(-1556005,'Uhn.. Be free..<squawk>',10507,1,0,0,'syth SAY_SLAY_2'),
(-1556006,'No more life..hrm. No more pain. <squawks weakly>',10508,1,0,0,'syth SAY_DEATH'),

(-1556007,'<squawk>..Trinkets yes pretty Trinkets..<squawk>..power, great power.<squawk>..power in Trinkets..<squawk>',10557,1,0,0,'ikiss SAY_INTRO'),
(-1556008,'You make war on Ikiss?..<squawk>',10554,1,0,0,'ikiss SAY_AGGRO_1'),
(-1556009,'Ikiss cut you pretty..<squawk>..slice you. Yes!',10555,1,0,0,'ikiss SAY_AGGRO_2'),
(-1556010,'No escape for..<squawk>..for you',10556,1,0,0,'ikiss SAY_AGGRO_3'),
(-1556011,'You die..<squawk>..stay away from Trinkets',10558,1,0,0,'ikiss SAY_SLAY_1'),
(-1556012,'<squawk>',10559,1,0,0,'ikiss SAY_SLAY_2'),
(-1556013,'Ikiss will not..<squawk>..die',10560,1,0,0,'ikiss SAY_DEATH'),
(-1556015,'%s begins to channel arcane energy...',0,3,0,0,'ikiss EMOTE_ARCANE_EXP');

-- -1 557 000 MANA TOMBS
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1557000,'What is this? You must forgive me, but I was not expecting company. As you can see, we are somewhat preoccupied right now. But no matter. As I am a gracious host, I will tend to you... personally.',10539,1,0,0,'shaffar SAY_INTRO'),
(-1557001,'We have not yet been properly introduced.',10541,1,0,0,'shaffar SAY_AGGRO_1'),
(-1557002,'An epic battle. How exciting!',10542,1,0,0,'shaffar SAY_AGGRO_2'),
(-1557003,'I have longed for a good adventure.',10543,1,0,0,'shaffar SAY_AGGRO_3'),
(-1557004,'It has been... entertaining.',10544,1,0,0,'shaffar SAY_SLAY_1'),
(-1557005,'And now we part company.',10545,1,0,0,'shaffar SAY_SLAY_2'),
(-1557006,'I have such fascinating things to show you.',10540,1,0,0,'shaffar SAY_SUMMON'),
(-1557007,'I must bid you... farewell.',10546,1,0,0,'shaffar SAY_DEAD'),

(-1557008,'I will feed on your soul.',10561,1,0,0,'pandemonius SAY_AGGRO_1'),
(-1557009,'So... full of life!',10562,1,0,0,'pandemonius SAY_AGGRO_2'),
(-1557010,'Do not... resist.',10563,1,0,0,'pandemonius SAY_AGGRO_3'),
(-1557011,'Yes! I am... empowered!',10564,1,0,0,'pandemonius SAY_KILL_1'),
(-1557012,'More... I must have more!',10565,1,0,0,'pandemonius SAY_KILL_2'),
(-1557013,'To the void... once... more..',10566,1,0,0,'pandemonius SAY_DEATH'),
(-1557014,'%s shifts into the void...',0,3,0,0,'pandemonius EMOTE_DARK_SHELL');

-- -1 558 000 AUCHENAI CRYPTS
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1558000,'You have defiled the resting place of our ancestors. For this offense, there can be but one punishment. It is fitting that you have come to a place of the dead... for you will soon be joining them.',10509,1,0,0,'maladaar SAY_INTRO'),
(-1558001,'Rise my fallen brothers. Take form and fight!',10512,1,0,0,'maladaar SAY_SUMMON'),
(-1558002,'You will pay with your life!',10513,1,0,0,'maladaar SAY_AGGRO_1'),
(-1558003,'There\'s no turning back now!',10514,1,0,0,'maladaar SAY_AGGRO_2'),
(-1558004,'Serve your penitence!',10515,1,0,0,'maladaar SAY_AGGRO_3'),
(-1558005,'Let your mind be clouded.',10510,1,0,0,'maladaar SAY_ROAR'),
(-1558006,'Stare into the darkness of your soul.',10511,1,0,0,'maladaar SAY_SOUL_CLEAVE'),
(-1558007,'These walls will be your doom.',10516,1,0,0,'maladaar SAY_SLAY_1'),
(-1558008,'<laugh> Now, you\'ll stay for eternity!',10517,1,0,0,'maladaar SAY_SLAY_2'),
(-1558009,'This is... where.. I belong...',10518,1,0,0,'maladaar SAY_DEATH');

-- -1 560 000 ESCAPE FROM DURNHOLDE (OLD HILLSBRAD)
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1560000,'Thrall! You didn\'t really think you would escape did you? You and your allies shall answer to Blackmoore - after I\'ve had my fun!',10406,1,0,0,'skarloc SAY_ENTER'),
(-1560001,'You\'re a slave. That\'s all you\'ll ever be.',10407,1,0,0,'skarloc SAY_TAUNT1'),
(-1560002,'I don\'t know what Blackmoore sees in you. For my money, you\'re just another ignorant savage!',10408,1,0,0,'skarloc SAY_TAUNT2'),
(-1560003,'Thrall will never be free!',10409,1,0,0,'skarloc SAY_SLAY1'),
(-1560004,'Did you really think you would leave here alive?',10410,1,0,0,'skarloc SAY_SLAY2'),
(-1560005,'Guards! Urgh..Guards..!',10411,1,0,0,'skarloc SAY_DEATH'),

(-1560006,'You there, fetch water quickly! Get these flames out before they spread to the rest of the keep! Hurry, damn you!',10428,1,0,0,'lieutenant_drake SAY_ENTER'),
(-1560007,'I know what you\'re up to, and I mean to put an end to it, permanently!',10429,1,0,0,'lieutenant_drake SAY_AGGRO'),
(-1560008,'No more middling for you.',10432,1,0,0,'lieutenant_drake SAY_SLAY1'),
(-1560009,'You will not interfere!',10433,1,0,0,'lieutenant_drake SAY_SLAY2'),
(-1560010,'Time to bleed!',10430,1,0,0,'lieutenant_drake SAY_MORTAL'),
(-1560011,'Run, you blasted cowards!',10431,1,0,0,'lieutenant_drake SAY_SHOUT'),
(-1560012,'Thrall... must not... go free.',10434,1,0,0,'lieutenant_drake SAY_DEATH'),

(-1560013,'Thrall! Come outside and face your fate!',10418,1,0,0,'epoch SAY_ENTER1'),
(-1560014,'Taretha\'s life hangs in the balance. Surely you care for her. Surely you wish to save her...',10419,1,0,0,'epoch SAY_ENTER2'),
(-1560015,'Ah, there you are. I had hoped to accomplish this with a bit of subtlety, but I suppose direct confrontation was inevitable. Your future, Thrall, must not come to pass and so...you and your troublesome friends must die!',10420,1,0,0,'epoch SAY_ENTER3'),
(-1560016,'Enough! I will erase your very existence!',10421,1,0,0,'epoch SAY_AGGRO1'),
(-1560017,'You cannot fight fate!',10422,1,0,0,'epoch SAY_AGGRO2'),
(-1560018,'You are...irrelevant.',10425,1,0,0,'epoch SAY_SLAY1'),
(-1560019,'Thrall will remain a slave. Taretha will die. You have failed.',10426,1,0,0,'epoch SAY_SLAY2'),
(-1560020,'Not so fast!',10423,1,0,0,'epoch SAY_BREATH1'),
(-1560021,'Struggle as much as you like!',10424,1,0,0,'epoch SAY_BREATH2'),
(-1560022,'No!...The master... will not... be pleased.',10427,1,0,0,'epoch SAY_DEATH'),

(-1560023,'Very well then. Let\'s go!',10465,1,0,0,'thrall hillsbrad SAY_TH_START_EVENT_PART1'),
(-1560024,'As long as we\'re going with a new plan, I may aswell pick up a weapon and some armor.',0,0,0,0,'thrall hillsbrad SAY_TH_ARMORY'),
(-1560025,'A rider approaches!',10466,0,0,0,'thrall hillsbrad SAY_TH_SKARLOC_MEET'),
(-1560026,'I\'ll never be chained again!',10467,1,0,0,'thrall hillsbrad SAY_TH_SKARLOC_TAUNT'),
(-1560027,'Very well. Tarren Mill lies just west of here. Since time is of the essence...',10468,1,0,0,'thrall hillsbrad SAY_TH_START_EVENT_PART2'),
(-1560028,'Let\'s ride!',10469,0,0,1,'thrall hillsbrad SAY_TH_MOUNTS_UP'),
(-1560029,'Taretha must be in the inn. Let\'s go.',0,0,0,0,'thrall hillsbrad SAY_TH_CHURCH_END'),
(-1560030,'Taretha! What foul magic is this?',0,0,0,0,'thrall hillsbrad SAY_TH_MEET_TARETHA'),
(-1560031,'Who or what was that?',10470,1,0,1,'thrall hillsbrad SAY_TH_EPOCH_WONDER'),
(-1560032,'No!',10471,1,0,5,'thrall hillsbrad SAY_TH_EPOCH_KILL_TARETHA'),
(-1560033,'Goodbye, Taretha. I will never forget your kindness.',10472,1,0,0,'thrall hillsbrad SAY_TH_EVENT_COMPLETE'),
(-1560034,'Things are looking grim...',10458,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_LOW_HP1'),
(-1560035,'I will fight to the last!',10459,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_LOW_HP2'),
(-1560036,'Taretha...',10460,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_DIE1'),
(-1560037,'A good day...to die...',10461,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_DIE2'),
(-1560038,'I have earned my freedom!',10448,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_AGGRO1'),
(-1560039,'This day is long overdue. Out of my way!',10449,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_AGGRO2'),
(-1560040,'I am a slave no longer!',10450,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_AGGRO3'),
(-1560041,'Blackmoore has much to answer for!',10451,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_AGGRO4'),
(-1560042,'You have forced my hand!',10452,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_KILL1'),
(-1560043,'It should not have come to this!',10453,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_KILL2'),
(-1560044,'I did not ask for this!',10454,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_KILL3'),
(-1560045,'I am truly in your debt, strangers.',10455,1,0,0,'thrall hillsbrad SAY_TH_LEAVE_COMBAT1'),
(-1560046,'Thank you, strangers. You have given me hope.',10456,1,0,0,'thrall hillsbrad SAY_TH_LEAVE_COMBAT2'),
(-1560047,'I will not waste this chance. I will seek out my destiny.',10457,1,0,0,'thrall hillsbrad SAY_TH_LEAVE_COMBAT3'),

(-1560048,'I\'m free! Thank you all!',0,0,0,0,'taretha SAY_TA_FREE'),
(-1560049,'Thrall, you escaped!',0,0,0,0,'taretha SAY_TA_ESCAPED');

-- -1 564 000 BLACK TEMPLE
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1564000,'You will die in the name of Lady Vashj!',11450,1,0,0,'SAY_AGGRO'),
(-1564001,'Stick around!',11451,1,0,0,'SAY_NEEDLE1'),
(-1564002,'I\'ll deal with you later!',11452,1,0,0,'SAY_NEEDLE2'),
(-1564003,'Your success was short lived!',11455,1,0,0,'SAY_SLAY1'),
(-1564004,'Time for you to go!',11456,1,0,0,'SAY_SLAY2'),
(-1564005,'Bel\'anen dal\'lorei!',11453,1,0,0,'SAY_SPECIAL1'),
(-1564006,'Blood will flow!',11454,1,0,0,'SAY_SPECIAL2'),
(-1564007,'Bal\'amer ch\'itah!',11457,1,0,0,'SAY_ENRAGE1'),
(-1564008,'My patience has ran out! Die, DIE!',11458,1,0,0,'SAY_ENRAGE2'),
(-1564009,'Lord Illidan will... crush you.',11459,1,0,0,'SAY_DEATH'),

(-1564010,'%s acquires a new target!',0,3,0,0,'supremus EMOTE_NEW_TARGET'),
(-1564011,'%s punches the ground in anger!',0,3,0,0,'supremus EMOTE_PUNCH_GROUND'),
(-1564012,'The ground begins to crack open!',0,3,0,0,'supremus EMOTE_GROUND_CRACK'),

(-1564013,'No! Not yet...',11385,1,0,0,'akama shade SAY_LOW_HEALTH'),
(-1564014,'I will not last much longer...',11386,1,0,0,'akama shade SAY_DEATH'),
(-1564015,'Come out from the shadows! I\'ve returned to lead you against our true enemy! Shed your chains and raise your weapons against your Illidari masters!',0,1,0,0,'akama shade SAY_FREE'),
(-1564016,'Hail our leader! Hail Akama!',0,1,0,0,'akama shade broken SAY_BROKEN_FREE_01'),
(-1564017,'Hail Akama!',0,1,0,0,'akama shade broken SAY_BROKEN_FREE_02'),

(-1564018,'You play, you pay.',11501,1,0,0,'shahraz SAY_TAUNT1'),
(-1564019,'I\'m not impressed.',11502,1,0,0,'shahraz SAY_TAUNT2'),
(-1564020,'Enjoying yourselves?',11503,1,0,0,'shahraz SAY_TAUNT3'),
(-1564021,'So... business or pleasure?',11504,1,0,0,'shahraz SAY_AGGRO'),
(-1564022,'You seem a little tense.',11505,1,0,0,'shahraz SAY_SPELL1'),
(-1564023,'Don\'t be shy.',11506,1,0,0,'shahraz SAY_SPELL2'),
(-1564024,'I\'m all... yours.',11507,1,0,0,'shahraz SAY_SPELL3'),
(-1564025,'Easy come, easy go.',11508,1,0,0,'shahraz SAY_SLAY1'),
(-1564026,'So much for a happy ending.',11509,1,0,0,'shahraz SAY_SLAY2'),
(-1564027,'Stop toying with my emotions!',11510,1,0,0,'shahraz SAY_ENRAGE'),
(-1564028,'I wasn\'t... finished.',11511,1,0,0,'shahraz SAY_DEATH'),

(-1564029,'Horde will... crush you.',11432,1,0,0,'bloodboil SOUND_AGGRO'),
(-1564030,'Time to feast!',11433,1,0,0,'bloodboil SAY_SLAY1'),
(-1564031,'More! I want more!',11434,1,0,0,'bloodboil SAY_SLAY2'),
(-1564032,'Drink your blood! Eat your flesh!',11435,1,0,0,'bloodboil SAY_SPECIAL1'),
(-1564033,'I hunger!',11436,1,0,0,'bloodboil SAY_SPECIAL2'),
(-1564034,'<babbling>',11437,1,0,0,'bloodboil SAY_ENRAGE1'),
(-1564035,'I\'ll rip the meat from your bones!',11438,1,0,0,'bloodboil SAY_ENRAGE2'),
(-1564036,'Aaaahrg...',11439,1,0,0,'bloodboil SAY_DEATH'),

(-1564037,'I was the first, you know. For me, the wheel of death has spun many times. <laughs> So much time has passed. I have a lot of catching up to do...',11512,1,0,0,'teron SAY_INTRO'),
(-1564038,'Vengeance is mine!',11513,1,0,0,'teron SAY_AGGRO'),
(-1564039,'I have use for you!',11514,1,0,0,'teron SAY_SLAY1'),
(-1564040,'It gets worse...',11515,1,0,0,'teron SAY_SLAY2'),
(-1564041,'What are you afraid of?',11517,1,0,0,'teron SAY_SPELL1'),
(-1564042,'Death... really isn\'t so bad.',11516,1,0,0,'teron SAY_SPELL2'),
(-1564043,'Give in!',11518,1,0,0,'teron SAY_SPECIAL1'),
(-1564044,'I have something for you...',11519,1,0,0,'teron SAY_SPECIAL2'),
(-1564045,'YOU WILL SHOW THE PROPER RESPECT!',11520,1,0,0,'teron SAY_ENRAGE'),
(-1564046,'The wheel...spins...again....',11521,1,0,0,'teron SAY_DEATH'),

(-1564047,'Pain and suffering are all that await you!',11415,1,0,0,'essence SUFF_SAY_FREED'),
(-1564048,'Don\'t leave me alone!',11416,1,0,0,'essence SUFF_SAY_AGGRO'),
(-1564049,'Look at what you make me do!',11417,1,0,0,'essence SUFF_SAY_SLAY1'),
(-1564050,'I didn\'t ask for this!',11418,1,0,0,'essence SUFF_SAY_SLAY2'),
(-1564051,'The pain is only beginning!',11419,1,0,0,'essence SUFF_SAY_SLAY3'),
(-1564052,'I don\'t want to go back!',11420,1,0,0,'essence SUFF_SAY_RECAP'),
(-1564053,'Now what do I do?',11421,1,0,0,'essence SUFF_SAY_AFTER'),
(-1564054,'%s becomes enraged!',0,3,0,0,'essence SUFF_EMOTE_ENRAGE'),

(-1564055,'You can have anything you desire... for a price.',11408,1,0,0,'essence DESI_SAY_FREED'),
(-1564056,'Fulfilment is at hand!',11409,1,0,0,'essence DESI_SAY_SLAY1'),
(-1564057,'Yes... you\'ll stay with us now...',11410,1,0,0,'essence DESI_SAY_SLAY2'),
(-1564058,'Your reach exceeds your grasp.',11412,1,0,0,'essence DESI_SAY_SLAY3'),
(-1564059,'Be careful what you wish for...',11411,1,0,0,'essence DESI_SAY_SPEC'),
(-1564060,'I\'ll be waiting...',11413,1,0,0,'essence DESI_SAY_RECAP'),
(-1564061,'I won\'t be far...',11414,1,0,0,'essence DESI_SAY_AFTER'),

(-1564062,'Beware: I live!',11399,1,0,0,'essence ANGER_SAY_FREED'),
(-1564063,'So... foolish.',11400,1,0,0,'essence ANGER_SAY_FREED2'),
(-1564064,'<maniacal cackle>',11401,1,0,0,'essence ANGER_SAY_SLAY1'),
(-1564065,'Enough. No more.',11402,1,0,0,'essence ANGER_SAY_SLAY2'),
(-1564066,'On your knees!',11403,1,0,0,'essence ANGER_SAY_SPEC'),
(-1564067,'Beware, coward.',11405,1,0,0,'essence ANGER_SAY_BEFORE'),
(-1564068,'I won\'t... be... ignored.',11404,1,0,0,'essence ANGER_SAY_DEATH'),

(-1564069,'You wish to test me?',11524,1,0,0,'council vera AGGRO'),
(-1564070,'I have better things to do...',11422,1,0,0,'council gath AGGRO'),
(-1564071,'Flee or die!',11482,1,0,0,'council mala AGGRO'),
(-1564072,'Common... such a crude language. Bandal!',11440,1,0,0,'council zere AGGRO'),

(-1564073,'Enough games!',11428,1,0,0,'council gath ENRAGE'),
(-1564074,'You wish to kill me? Hahaha, you first!',11530,1,0,0,'council vera ENRAGE'),
(-1564075,'For Quel\'Thalas! For the Sunwell!',11488,1,0,0,'council mala ENRAGE'),
(-1564076,'Sha\'amoor sine menoor!',11446,1,0,0,'council zere ENRAGE'),

(-1564077,'Enjoy your final moments!',11426,1,0,0,'council gath SPECIAL1'),
(-1564078,'You\'re not caught up for this!',11528,1,0,0,'council vera SPECIAL1'),
(-1564079,'No second chances!',11486,1,0,0,'council mala SPECIAL1'),
(-1564080,'Diel fin\'al',11444,1,0,0,'council zere SPECIAL1'),

(-1564081,'You are mine!',11427,1,0,0,'council gath SPECIAL2'),
(-1564082,'Anar\'alah belore!',11529,1,0,0,'council vera SPECIAL2'),
(-1564083,'I\'m full of surprises!',11487,1,0,0,'council mala SPECIAL2'),
(-1564084,'Sha\'amoor ara mashal?',11445,1,0,0,'council zere SPECIAL2'),

(-1564085,'Selama am\'oronor!',11423,1,0,0,'council gath SLAY'),
(-1564086,'Valiant effort!',11525,1,0,0,'council vera SLAY'),
(-1564087,'My work is done.',11483,1,0,0,'council mala SLAY'),
(-1564088,'Shorel\'aran.',11441,1,0,0,'council zere SLAY'),

(-1564089,'Well done!',11424,1,0,0,'council gath SLAY_COMT'),
(-1564090,'A glorious kill!',11526,1,0,0,'council vera SLAY_COMT'),
(-1564091,'As it should be!',11484,1,0,0,'council mala SLAY_COMT'),
(-1564092,'Belesa menoor!',11442,1,0,0,'council zere SLAY_COMT'),

(-1564093,'Lord Illidan... I...',11425,1,0,0,'council gath DEATH'),
(-1564094,'You got lucky!',11527,1,0,0,'council vera DEATH'),
(-1564095,'Destiny... awaits.',11485,1,0,0,'council mala DEATH'),
(-1564096,'Diel ma\'ahn... oreindel\'o',11443,1,0,0,'council zere DEATH'),

(-1564097,'Akama... your duplicity is hardly surprising. I should have slaughtered you and your malformed brethren long ago.',11463,1,0,0,'illidan SAY_CONVO_1'),
(-1564098,'We\'ve come to end your reign, Illidan. My people and all of Outland shall be free!',11389,1,0,25,'illidan SAY_CONVO_2'),
(-1564099,'Boldly said. But I remain unconvinced.',11464,1,0,396,'illidan SAY_CONVO_3'),
(-1564100,'The time has come! The moment is at hand!',11380,1,0,22,'illidan SAY_CONVO_4'),
(-1564101,'You are not prepared!',11466,1,0,406,'illidan SAY_CONVO_5'),
(-1564102,'Is this it, mortals? Is this all the fury you can muster?',11476,1,0,0,'illidan SAY_CONVO_6'),
(-1564103,'Their fury pales before mine, Illidan. We have some unsettled business between us.',11491,1,0,5,'illidan SAY_CONVO_7'),
(-1564104,'Maiev... How is this even possible?',11477,1,0,1,'illidan SAY_CONVO_8'),
(-1564105,'Ah... my long hunt is finally over. Today, Justice will be done!',11492,1,0,15,'illidan SAY_CONVO_9'),
(-1564106,'Feel the hatred of ten thousand years!',11470,1,0,0,'illidan SAY_CONVO_10'),
(-1564107,'Ahh... It is finished. You are beaten.',11496,1,0,0,'illidan SAY_CONVO_11'),
(-1564108,'You have won... Maiev...but the huntress... is nothing...without the hunt... you... are nothing... without me..',11478,1,0,65,'illidan SAY_CONVO_12'),
(-1564109,'He is right. I feel nothing... I am nothing...',11497,1,0,0,'illidan SAY_CONVO_13'),
(-1564110,'Farewell, champions.',11498,1,0,0,'illidan SAY_CONVO_14'),
(-1564111,'The Light will fill these dismal halls once again. I swear it.',11387,1,0,0,'illidan SAY_CONVO_15'),
(-1564112,'I can feel your hatred.',11467,1,0,0,'illidan SAY_TAUNT_1'),
(-1564113,'Give in to your fear!',11468,1,0,0,'illidan SAY_TAUNT_2'),
(-1564114,'You know nothing of power!',11469,1,0,0,'illidan SAY_TAUNT_3'),
(-1564115,'Such... arrogance!',11471,1,0,0,'illidan SAY_TAUNT_4'),
(-1564116,'That is for Naisha!',11493,1,0,0,'illidan SAY_MAIEV_TAUNT_1'),
(-1564117,'Bleed as I have bled!',11494,1,0,0,'illidan SAY_MAIEV_TAUNT_2'),
(-1564118,'There shall be no prison for you this time!',11495,1,0,0,'illidan SAY_MAIEV_TAUNT_3'),
(-1564119,'Meet your end, demon!',11500,1,0,0,'illidan SAY_MAIEV_TAUNT_4'),
(-1564120,'Be wary friends, The Betrayer meditates in the court just beyond.',11388,1,0,0,'illidan SAY_AKAMA_BEWARE'),
(-1564121,'Come, my minions. Deal with this traitor as he deserves!',11465,1,0,0,'illidan SAY_AKAMA_MINION'),
(-1564122,'I\'ll deal with these mongrels. Strike now, friends! Strike at the betrayer!',11390,1,0,0,'illidan SAY_AKAMA_LEAVE'),
(-1564123,'Who shall be next to taste my blades?!',11473,1,0,0,'illidan SAY_KILL1'),
(-1564124,'This is too easy!',11472,1,0,0,'illidan SAY_KILL2'),
(-1564125,'I will not be touched by rabble such as you!',11479,1,0,254,'illidan SAY_TAKEOFF'),
(-1564126,'Behold the flames of Azzinoth!',11480,1,0,0,'illidan SAY_SUMMONFLAMES'),
(-1564127,'Stare into the eyes of the Betrayer!',11481,1,0,0,'illidan SAY_EYE_BLAST'),
(-1564128,'Behold the power... of the demon within!',11475,1,0,0,'illidan SAY_MORPH'),
(-1564129,'You\'ve wasted too much time mortals, now you shall fall!',11474,1,0,0,'illidan SAY_ENRAGE');

-- -1 565 000 GRUUL'S LAIR
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1565000,'Gronn are the real power in outland.',11367,1,0,0,'maulgar SAY_AGGRO'),
(-1565001,'You will not defeat the hand of Gruul!',11368,1,0,0,'maulgar SAY_ENRAGE'),
(-1565002,'You won\'t kill next one so easy!',11369,1,0,0,'maulgar SAY_OGRE_DEATH1'),
(-1565003,'Pah! Does not prove anything!',11370,1,0,0,'maulgar SAY_OGRE_DEATH2'),
(-1565004,'I\'m not afraid of you.',11371,1,0,0,'maulgar SAY_OGRE_DEATH3'),
(-1565005,'Good, now you fight me!',11372,1,0,0,'maulgar SAY_OGRE_DEATH4'),
(-1565006,'You not so tough afterall!',11373,1,0,0,'maulgar SAY_SLAY1'),
(-1565007,'Aha-ha ha ha!',11374,1,0,0,'maulgar SAY_SLAY2'),
(-1565008,'Mulgar is king!',11375,1,0,0,'maulgar SAY_SLAY3'),
(-1565009,'Gruul... will crush you...',11376,1,0,0,'maulgar SAY_DEATH'),

(-1565010,'Come... and die.',11355,1,0,0,'gruul SAY_AGGRO'),
(-1565011,'Scurry',11356,1,0,0,'gruul SAY_SLAM1'),
(-1565012,'No escape',11357,1,0,0,'gruul SAY_SLAM2'),
(-1565013,'Stay',11358,1,0,0,'gruul SAY_SHATTER1'),
(-1565014,'Beg... for life',11359,1,0,0,'gruul SAY_SHATTER2'),
(-1565015,'No more',11360,1,0,0,'gruul SAY_SLAY1'),
(-1565016,'Unworthy',11361,1,0,0,'gruul SAY_SLAY2'),
(-1565017,'Die',11362,1,0,0,'gruul SAY_SLAY3'),
(-1565018,'Aaargh...',11363,1,0,0,'gruul SAY_DEATH'),
(-1565019,'%s grows in size!',0,2,0,0,'gruul EMOTE_GROW');

-- -1 568 000 ZUL'AMAN
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1568000,'Spirits of da wind be your doom!',12031,1,0,0,'janalai SAY_AGGRO'),
(-1568001,'I burn ya now!',12032,1,0,0,'janalai SAY_FIRE_BOMBS'),
(-1568002,'Where ma hatcha? Get to work on dem eggs!',12033,1,0,0,'janalai SAY_SUMMON_HATCHER'),
(-1568003,'I show you strength... in numbers.',12034,1,0,0,'janalai SAY_ALL_EGGS'),
(-1568004,'You done run outta time!',12035,1,0,0,'janalai SAY_BERSERK'),
(-1568005,'It all be over now, mon!',12036,1,0,0,'janalai SAY_SLAY_1'),
(-1568006,'Tazaga-choo!',12037,1,0,0,'janalai SAY_SLAY_2'),
(-1568007,'Zul\'jin... got a surprise for you...',12038,1,0,0,'janalai SAY_DEATH'),
(-1568008,'Come, strangers. The spirit of the dragonhawk hot be hungry for worthy souls.',12039,1,0,0,'janalai SAY_EVENT_STRANGERS'),
(-1568009,'Come, friends. Your bodies gonna feed ma hatchlings, and your souls are going to feed me with power!',12040,1,0,0,'janalai SAY_EVENT_FRIENDS'),

(-1568010,'Get da move on, guards! It be killin\' time!',12066,1,0,0,'nalorakk SAY_WAVE1_AGGRO'),
(-1568011,'Guards, go already! Who you more afraid of, dem... or me?',12067,1,0,0,'nalorakk SAY_WAVE2_STAIR1'),
(-1568012,'Ride now! Ride out dere and bring me back some heads!',12068,1,0,0,'nalorakk SAY_WAVE3_STAIR2'),
(-1568013,'I be losin\' me patience! Go on: make dem wish dey was never born!',12069,1,0,0,'nalorakk SAY_WAVE4_PLATFORM'),
(-1568014,'What could be better than servin\' da bear spirit for eternity? Come closer now. Bring your souls to me!',12078,1,0,0,'nalorakk SAY_EVENT1_SACRIFICE'),
(-1568015,'Don\'t be delayin\' your fate. Come to me now. I make your sacrifice quick.',12079,1,0,0,'nalorakk SAY_EVENT2_SACRIFICE'),
(-1568016,'You be dead soon enough!',12070,1,0,0,'nalorakk SAY_AGGRO'),
(-1568017,'I bring da pain!',12071,1,0,0,'nalorakk SAY_SURGE'),
(-1568018,'You call on da beast, you gonna get more dan you bargain for!',12072,1,0,0,'nalorakk SAY_TOBEAR'),
(-1568019,'Make way for Nalorakk!',12073,1,0,0,'nalorakk SAY_TOTROLL'),
(-1568020,'You had your chance, now it be too late!',12074,1,0,0,'nalorakk SAY_BERSERK'),
(-1568021,'Mua-ha-ha! Now whatchoo got to say?',12075,1,0,0,'nalorakk SAY_SLAY1'),
(-1568022,'Da Amani gonna rule again!',12076,1,0,0,'nalorakk SAY_SLAY2'),
(-1568023,'I... be waitin\' on da udda side....',12077,1,0,0,'nalorakk SAY_DEATH'),

(-1568024,'Da eagles gonna bear your spirits to me. Your sacrifice is not gonna be in vein!',12122,1,0,0,'akilzon SAY_EVENT1'),
(-1568025,'Your death gonna be quick, strangers. You shoulda never have come to this place...',12123,1,0,0,'akilzon SAY_EVENT2'),
(-1568026,'I be da predator! You da prey...',12013,1,0,0,'akilzon SAY_AGGRO'),
(-1568027,'Feed, me bruddahs!',12014,1,0,0,'akilzon SAY_SUMMON'),
(-1568028,'Come, and join me bruddahs!',12015,1,0,0,'akilzon SAY_SUMMON_ALT'),
(-1568029,'All you be doing is wasting my time!',12016,1,0,0,'akilzon SAY_ENRAGE'),
(-1568030,'Ya got nothin\'!',12017,1,0,0,'akilzon SAY_SLAY1'),
(-1568031,'Stop your cryin\'!',12018,1,0,0,'akilzon SAY_SLAY2'),
(-1568032,'You can\'t... kill... me spirit!',12019,1,0,0,'akilzon SAY_DEATH'),
(-1568033,'An Electrical Storm Appears!',0,2,0,0,'akilzon EMOTE_STORM'),

(-1568034,'Get on ya knees and bow.... to da fang and claw!',12020,1,0,0,'halazzi SAY_AGGRO'),
(-1568035,'I fight wit\' untamed spirit....',12021,1,0,0,'halazzi SAY_SPLIT'),
(-1568036,'Spirit, come back to me!',12022,1,0,0,'halazzi SAY_MERGE'),
(-1568037,'Me gonna carve ya now!',12023,1,0,0,'halazzi SAY_SABERLASH1'),
(-1568038,'You gonna leave in pieces!',12024,1,0,0,'halazzi SAY_SABERLASH2'),
(-1568039,'Whatch you be doing? Pissin\' yourselves...',12025,1,0,0,'halazzi SAY_BERSERK'),
(-1568040,'You cant fight the power!',12026,1,0,0,'halazzi SAY_KILL1'),
(-1568041,'You gonna fail!',12027,1,0,0,'halazzi SAY_KILL2'),
(-1568042,'Chaga... choka\'jinn.',12028,1,0,0,'halazzi SAY_DEATH'),
(-1568043,'Come, fools. Fill ma empty cages...',12029,1,0,0,'halazzi SAY_EVENT1'),
(-1568044,'I be waitin, strangers. Your deaths gonna make me stronger!',12030,1,0,0,'halazzi SAY_EVENT2'),

(-1568045,'Da shadow gonna fall on you...',12041,1,0,0,'malacrass SAY_AGGRO'),
(-1568046,'Ya don\'t kill me yet, ya don\'t get another chance!',12042,1,0,0,'malacrass SAY_ENRAGE'),
(-1568047,'Dis a nightmare ya don\' wake up from!',12043,1,0,0,'malacrass SAY_KILL1'),
(-1568048,'Azzaga choogo zinn!',12044,1,0,0,'malacrass SAY_KILL2'),
(-1568049,'Your will belong ta me now!',12045,1,0,0,'malacrass SAY_SOUL_SIPHON'),
(-1568050,'Darkness comin\' for you...',12046,1,0,0,'malacrass SAY_DRAIN_POWER'),
(-1568051,'Your soul gonna bleed!',12047,1,0,0,'malacrass SAY_SPIRIT_BOLTS'),
(-1568052,'It not gonna make no difference.',12048,1,0,0,'malacrass SAY_ADD_DIED1'),
(-1568053,'You gonna die worse dan him.',12049,1,0,0,'malacrass SAY_ADD_DIED2'),
(-1568054,'Dat no bodda me.',12050,1,0,0,'malacrass SAY_ADD_DIED3'),
(-1568055,'Dis not... da end of me...',12051,1,0,0,'malacrass SAY_DEATH'),

(-1568056,'Everybody always wanna take from us. Now we gonna start takin\' back. Anybody who get in our way...gonna drown in dey own blood! Da Amani empire be back now...seekin\' vengeance. And we gonna start wit\' you.',12090,1,0,0,'zuljin SAY_INTRO'),
(-1568057,'Nobody badduh dan me!',12091,1,0,0,'zuljin SAY_AGGRO'),
(-1568058,'Got me some new tricks... like me brudda bear....',12092,1,0,0,'zuljin SAY_BEAR_TRANSFORM'),
(-1568059,'Dere be no hidin\' from da eagle!',12093,1,0,0,'zuljin SAY_EAGLE_TRANSFORM'),
(-1568060,'Let me introduce you to me new bruddas: fang and claw!',12094,1,0,0,'zuljin SAY_LYNX_TRANSFORM'),
(-1568061,'Ya don\' have to look to da sky to see da dragonhawk!',12095,1,0,0,'zuljin SAY_DRAGONHAWK_TRANSFORM'),
(-1568062,'Fire kill you just as quick!',12096,1,0,0,'zuljin SAY_FIRE_BREATH'),
(-1568063,'You too slow! Me too strong!',12097,1,0,0,'zuljin SAY_BERSERK'),
(-1568064,'Da Amani de chuka!',12098,1,0,0,'zuljin SAY_KILL1'),
(-1568065,'Lot more gonna fall like you!',12099,1,0,0,'zuljin SAY_KILL2'),
(-1568066,'Mebbe me fall...but da Amani empire...never gonna die...',12100,1,0,0,'zuljin SAY_DEATH'),

(-1568067,'Zul\'jin got a surprise for ya...',12052,1,0,0,'zulaman SAY_INST_RELEASE'),
(-1568068,'Da spirits gonna feast today! Begin da ceremonies, sacrifice da prisoners... make room for our new guests!',12053,1,0,0,'zulaman SAY_INST_BEGIN'),
(-1568069,'Take your pick, trespassers! Any of ma priests be happy to accommodate ya.',12054,1,0,0,'zulaman SAY_INST_PROGRESS_1'),
(-1568070,'Don\'t be shy. Thousands have come before you. Ya not be alone in your service.',12055,1,0,0,'zulaman SAY_INST_PROGRESS_2'),
(-1568071,'Ya gonna fail, strangers. Many try before you, but dey only make us stronger!',12056,1,0,0,'zulaman SAY_INST_PROGRESS_3'),
(-1568072,'Your efforts was in vain, trespassers. The rituals nearly be complete.',12057,1,0,0,'zulaman SAY_INST_WARN_1'),
(-1568073,'Soon da cages gonna be empty, da sacrifices be complete, and you gonna take dere places.',12058,1,0,0,'zulaman SAY_INST_WARN_2'),
(-1568074,'Time be running low, strangers. Soon you gonna join da souls of dem ya failed to save.',12059,1,0,0,'zulaman SAY_INST_WARN_3'),
(-1568075,'Make haste, ma priests! Da rituals must not be interrupted!',12060,1,0,0,'zulaman SAY_INST_WARN_4'),
(-1568076,'Ya make a good try... but now you gonna join da ones who already fall.',12061,1,0,0,'zulaman SAY_INST_SACRIF1'),
(-1568077,'Ya not do too bad. Ya efforts [...] for a small time. Come to me now. Ya prove yourself worthy offerings.',12062,1,0,0,'zulaman SAY_INST_SACRIF2'),
(-1568078,'Watch now. Every offering gonna strengthen our ties to da spirit world. Soon, we gonna be unstoppable!',12065,1,0,0,'zulaman SAY_INST_COMPLETE'),

(-1568079,'Suit yourself. At least five of you must assist me if we\'re to get inside. Follow me.',0,1,0,0,'harrison SAY_START'),
(-1568080,'According to my calculations, if enough of us bang the gong at once the seal on these doors will break and we can enter.',0,1,0,0,'harrison SAY_AT_GONG'),
(-1568081,'I\'ve researched this site extensively and I won\'t allow any dim-witted treasure hunters to swoop in and steal what belongs to in a museum. I\'ll lead this charge.',0,1,0,0,'harrison SAY_OPEN_ENTRANCE');

-- -1 574 000 UTGARDE KEEP
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1574000,'Your blood is mine!',13221,1,0,0,'keleseth SAY_AGGRO'),
(-1574001,'Not so fast.',13222,1,0,0,'keleseth SAY_FROSTTOMB'),
(-1574002,'Aranal, lidel! Their fate shall be yours!',13224,1,0,0,'keleseth SAY_SKELETONS'),
(-1574003,'Darkness waits!',13223,1,0,0,'keleseth SAY_KILL'),
(-1574004,'I join... the night.',13225,1,0,0,'keleseth SAY_DEATH'),

(-1574005,'I\'ll paint my face with your blood!',13207,1,0,0,'ingvar SAY_AGGRO_FIRST'),
(-1574006,'I return! A second chance to carve out your skull!',13209,1,0,0,'ingvar SAY_AGGRO_SECOND'),
(-1574007,'My life for the... death god!',13213,1,0,0,'ingvar SAY_DEATH_FIRST'),
(-1574008,'No! I can do... better! I can...',13211,1,0,0,'ingvar SAY_DEATH_SECOND'),
(-1574009,'Mjul orm agn gjor!',13212,1,0,0,'ingvar SAY_KILL_FIRST'),
(-1574010,'I am a warrior born!',13214,1,0,0,'ingvar SAY_KILL_SECOND'),

(-1574011,'Dalronn! See if you can muster the nerve to join my attack!',13229,1,0,0,'skarvald SAY_SKA_AGGRO'),
(-1574012,'Not... over... yet.',13230,1,0,0,'skarvald SAY_SKA_DEATH'),
(-1574013,'A warrior\'s death.',13231,1,0,0,'skarvald SAY_SKA_DEATH_REAL'),
(-1574014,'???',13232,1,0,0,'skarvald SAY_SKA_KILL'),
(-1574015,'Pagh! What sort of necromancer lets death stop him? I knew you were worthless!',13233,1,0,0,'skarvald SAY_SKA_DAL_DIES_REPLY'),

(-1574016,'By all means, don\'t assess the situation, you halfwit! Just jump into the fray!',13199,1,0,0,'dalronn SAY_DAL_AGGRO_REPLY'),
(-1574017,'See... you... soon.',13200,1,0,0,'dalronn SAY_DAL_DEATH'),
(-1574018,'There\'s no... greater... glory.',13201,1,0,0,'dalronn SAY_DAL_DEATH_REAL'),
(-1574019,'You may serve me yet.',13202,1,0,0,'dalronn SAY_DAL_KILL'),
(-1574020,'Skarvald, you incompetent slug! Return and make yourself useful!',13203,1,0,0,'dalronn SAY_DAL_SKA_DIES_REPLY'),

(-1574021,'%s casts Frost Tomb on $N',0,3,0,0,'keleseth EMOTE_FROST_TOMB'),

(-1574022,'%s roars!',0,3,0,0,'ingvar EMOTE_ROAR');

-- -1 575 000 UTGARDE PINNACLE
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1575000,'My liege! I have done as you asked, and now beseech you for your blessing!',13856,1,0,0,'svala SAY_INTRO_1'),
(-1575001,'Your sacrifice is a testament to your obedience. Indeed you are worthy of this charge. Arise, and forever be known as Svala Sorrowgrave!',14732,1,0,0,'svala SAY_INTRO_2_ARTHAS'),
(-1575002,'The sensation is... beyond my imagining. I am yours to command, my king.',13857,1,0,0,'svala SAY_INTRO_3'),
(-1575003,'Your first test awaits you. Destroy our uninvited guests.',14733,1,0,0,'svala SAY_INTRO_4_ARTHAS'),
(-1575004,'I will be happy to slaughter them in your name! Come, enemies of the Scourge! I will show you the might of the Lich King!',13858,1,0,0,'svala SAY_INTRO_5'),
(-1575005,'I will vanquish your soul!',13842,1,0,0,'svala SAY_AGGRO'),
(-1575006,'You were a fool to challenge the power of the Lich King!',13845,1,0,0,'svala SAY_SLAY_1'),
(-1575007,'Your will is done, my king.',13847,1,0,0,'svala SAY_SLAY_2'),
(-1575008,'Another soul for my master.',13848,1,0,0,'svala SAY_SLAY_3'),
(-1575009,'Your death approaches.',13850,1,0,0,'svala SAY_SACRIFICE_1'),
(-1575010,'Go now to my master.',13851,1,0,0,'svala SAY_SACRIFICE_2'),
(-1575011,'Your end is inevitable.',13852,1,0,0,'svala SAY_SACRIFICE_3'),
(-1575012,'Yor-guul mak!',13853,1,0,0,'svala SAY_SACRIFICE_4'),
(-1575013,'Any last words?',13854,1,0,0,'svala SAY_SACRIFICE_5'),
(-1575014,'Nooo! I did not come this far... to...',13855,1,0,0,'svala SAY_DEATH'),

(-1575015,'What this place? I will destroy you!',13464,1,0,0,'gortok SAY_AGGRO'),
(-1575016,'You die! That what master wants!',13465,1,0,0,'gortok SAY_SLAY_1'),
(-1575017,'An easy task!',13466,1,0,0,'gortok SAY_SLAY_2'),
(-1575018,' ',13467,1,0,0,'gortok SAY_DEATH'),

(-1575019,'What mongrels dare intrude here? Look alive, my brothers! A feast for the one that brings me their heads!',13497,1,0,0,'skadi SAY_AGGRO'),
(-1575020,'Sear them to the bone!',13498,1,0,0,'skadi SAY_DRAKEBREATH_1'),
(-1575021,'Go now! Leave nothing but ash in your wake!',13499,1,0,0,'skadi SAY_DRAKEBREATH_2'),
(-1575022,'Cleanse our sacred halls with flame!',13500,1,0,0,'skadi SAY_DRAKEBREATH_3'),
(-1575023,'I ask for ... to kill them, yet all I get is feeble whelps! By Ye.. SLAUGHTER THEM!',13501,1,0,0,'skadi SAY_DRAKE_HARPOON_1'),
(-1575024,'If one more harpoon touches my drake I\'ll flae my miserable heins.',13502,1,0,0,'skadi SAY_DRAKE_HARPOON_2'),
(-1575025,'Mjor Na Ul Kaval!',13503,1,0,0,'skadi SAY_KILL_1'),
(-1575026,'Not so brash now, are you?',13504,1,0,0,'skadi SAY_KILL_2'),
(-1575027,'I\'ll mount your skull from the highest tower!',13505,1,0,0,'skadi SAY_KILL_3'),
(-1575028,'ARGH! You call that... an attack? I\'ll... show... aghhhh...',13506,1,0,0,'skadi SAY_DEATH'),
(-1575029,'You motherless knaves! Your corpses will make fine morsels for my new drake!',13507,1,0,0,'skadi SAY_DRAKE_DEATH'),
(-1575030,'%s is within range of the harpoon launchers!',0,3,0,0,'skadi EMOTE_HARPOON_RANGE'),

(-1575031,'You invade my home and then dare to challenge me? I will tear the hearts from your chests and offer them as gifts to the death god! Rualg nja gaborr!',13609,1,0,0,'ymiron SAY_AGGRO'),
(-1575032,'Bjorn of the Black Storm! Honor me now with your presence!',13610,1,0,0,'ymiron SAY_SUMMON_BJORN'),
(-1575033,'Haldor of the rocky cliffs, grant me your strength!',13611,1,0,0,'ymiron SAY_SUMMON_HALDOR'),
(-1575034,'Ranulf of the screaming abyss, snuff these maggots with darkest night!',13612,1,0,0,'ymiron SAY_SUMMON_RANULF'),
(-1575035,'Tor of the Brutal Siege! Bestow your might upon me!',13613,1,0,0,'ymiron SAY_SUMMON_TORGYN'),
(-1575036,'Your death is only the beginning!',13614,1,0,0,'ymiron SAY_SLAY_1'),
(-1575037,'You have failed your people!',13615,1,0,0,'ymiron SAY_SLAY_2'),
(-1575038,'There is a reason I am king!',13616,1,0,0,'ymiron SAY_SLAY_3'),
(-1575039,'Bleed no more!',13617,1,0,0,'ymiron SAY_SLAY_4'),
(-1575040,'What... awaits me... now?',13618,1,0,0,'ymiron SAY_DEATH');

-- -1 576 000 NEXUS
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1576000,'You know what they say about curiosity.',13319,1,0,0,'telestra SAY_AGGRO'),
(-1576001,'I\'ll give you more than you can handle.',13321,1,0,0,'telestra SAY_SPLIT_1'),
(-1576002,'There\'s plenty of me to go around.',13322,1,0,0,'telestra SAY_SPLIT_2'),
(-1576003,'Now to finish the job!',13323,1,0,0,'telestra SAY_MERGE'),
(-1576004,'Death becomes you!',13324,1,0,0,'telestra SAY_KILL'),
(-1576005,'Damn the... luck.',13320,1,0,0,'telestra SAY_DEATH'),

(-1576006,'Chaos beckons.',13186,1,0,0,'anomalus SAY_AGGRO'),
(-1576007,'Reality... unwoven.',13188,1,0,0,'anomalus SAY_RIFT'),
(-1576008,'Indestructible.',13189,1,0,0,'anomalus SAY_SHIELD'),
(-1576009,'Expiration... is necesarry.',13274,1,0,0,'anomalus SAY_KILL'),
(-1576010,'Of course.',13187,1,0,0,'anomalus SAY_DEATH'),

(-1576011,'Noo!',13328,1,0,0,'ormorok SAY_AGGRO'),
(-1576012,'???',13329,1,0,0,'ormorok SAY_KILL'),
(-1576013,'Baaack!',13331,1,0,0,'ormorok SAY_REFLECT'),
(-1576014,'Bleeeed!',13332,1,0,0,'ormorok SAY_ICESPIKE'),
(-1576015,'Aaggh!',13330,1,0,0,'ormorok SAY_DEATH'),

(-1576016,'Preserve? Why? There\'s no truth in it. No no no... only in the taking! I see that now!',13450,1,0,0,'keristrasza SAY_AGGRO'),
(-1576017,'Stay. Enjoy your final moments.',13451,1,0,0,'keristrasza SAY_CRYSTAL_NOVA'),
(-1576018,'Finish it! Finish it! Kill me, or I swear by the Dragonqueen you\'ll never see daylight again!',13452,1,0,0,'keristrasza SAY_ENRAGE'),
(-1576019,'Now we\'ve come to the truth!',13453,1,0,0,'keristrasza SAY_KILL'),
(-1576020,'Dragonqueen... Life-Binder... preserve... me.',13454,1,0,0,'keristrasza SAY_DEATH'),

(-1576021,'%s opens a Chaotic Rift!',0,3,0,0,'anomalus EMOTE_OPEN_RIFT'),
(-1576022,'%s shields himself and divert his power to the rifts!',0,3,0,0,'anomalus EMOTE_SHIELD');

-- -1 578 000 OCULUS

-- -1 580 000 SUNWELL PLATEAU
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1580000,'Aggh! No longer will I be a slave to Malygos! Challenge me and you will be destroyed!',12422,1,0,0,'kalecgos SAY_EVIL_AGGRO'),
(-1580001,'I will purge you!',12423,1,0,0,'kalecgos SAY_EVIL_SPELL1'),
(-1580002,'Your pain has only begun!',12424,1,0,0,'kalecgos SAY_EVIL_SPELL2'),
(-1580003,'In the name of Kil\'jaeden!',12425,1,0,0,'kalecgos SAY_EVIL_SLAY1'),
(-1580004,'You were warned!',12426,1,0,0,'kalecgos SAY_EVIL_SLAY2'),
(-1580005,'My awakening is complete! You shall all perish!',12427,1,0,0,'kalecgos SAY_EVIL_ENRAGE'),
(-1580006,'I need... your help... Cannot... resist him... much longer...',12428,1,0,0,'kalecgos humanoid SAY_GOOD_AGGRO'),
(-1580007,'Aaahhh! Help me, before I lose my mind!',12429,1,0,0,'kalecgos humanoid SAY_GOOD_NEAR_DEATH'),
(-1580008,'Hurry! There is not much of me left!',12430,1,0,0,'kalecgos humanoid SAY_GOOD_NEAR_DEATH2'),
(-1580009,'I am forever in your debt. Once we have triumphed over Kil\'jaeden, this entire world will be in your debt as well.',12431,1,0,0,'kalecgos humanoid SAY_GOOD_PLRWIN'),
(-1580010,'There will be no reprieve. My work here is nearly finished.',12451,1,0,0,'sathrovarr SAY_SATH_AGGRO'),
(-1580011,'I\'m... never on... the losing... side...',12452,1,0,0,'sathrovarr SAY_SATH_DEATH'),
(-1580012,'Your misery is my delight!',12453,1,0,0,'sathrovarr SAY_SATH_SPELL1'),
(-1580013,'I will watch you bleed!',12454,1,0,0,'sathrovarr SAY_SATH_SPELL2'),
(-1580014,'Pitious mortal!',12455,1,0,0,'sathrovarr SAY_SATH_SLAY1'),
(-1580015,'Haven\'t you heard? I always win!',12456,1,0,0,'sathrovarr SAY_SATH_SLAY2'),
(-1580016,'I have toyed with you long enough!',12457,1,0,0,'sathrovarr SAY_SATH_ENRAGE'),

(-1580017,'Puny lizard! Death is the only answer you\'ll find here!',12458,1,0,0,'brutallus YELL_INTRO'),
(-1580018,'Grah! Your magic is weak!',12459,1,0,0,'brutallus YELL_INTRO_BREAK_ICE'),
(-1580019,'I will crush you!',12460,1,0,0,'brutallus YELL_INTRO_CHARGE'),
(-1580020,'That was fun.',12461,1,0,0,'brutallus YELL_INTRO_KILL_MADRIGOSA'),
(-1580021,'Come, try your luck!',12462,1,0,0,'brutallus YELL_INTRO_TAUNT'),
(-1580022,'Ahh! More lambs to the slaughter!',12463,1,0,0,'brutallus YELL_AGGRO'),
(-1580023,'Perish, insect!',12464,1,0,0,'brutallus YELL_KILL1'),
(-1580024,'You are meat!',12465,1,0,0,'brutallus YELL_KILL2'),
(-1580025,'Too easy!',12466,1,0,0,'brutallus YELL_KILL3'),
(-1580026,'Bring the fight to me!',12467,1,0,0,'brutallus YELL_LOVE1'),
(-1580027,'Another day, another glorious battle!',12468,1,0,0,'brutallus YELL_LOVE2'),
(-1580028,'I live for this!',12469,1,0,0,'brutallus YELL_LOVE3'),
(-1580029,'So much for a real challenge... Die!',12470,1,0,0,'brutallus YELL_BERSERK'),
(-1580030,'Gah! Well done... Now... this gets... interesting...',12471,1,0,0,'brutallus YELL_DEATH'),

(-1580031,'Hold, friends! There is information to be had before this devil meets his fate!',12472,1,0,0,'madrigosa YELL_MADR_ICE_BARRIER'),
(-1580032,'Where is Anveena, demon? What has become of Kalec?',12473,1,0,0,'madrigosa YELL_MADR_INTRO'),
(-1580033,'You will tell me where they are!',12474,1,0,0,'madrigosa YELL_MADR_ICE_BLOCK'),
(-1580034,'Speak, I grow weary of asking!',12475,1,0,0,'madrigosa YELL_MADR_TRAP'),
(-1580035,'Malygos, my lord! I did my best!',12476,1,0,0,'madrigosa YELL_MADR_DEATH');

-- -1 585 000 MAGISTER'S TERRACE
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1585000,'You only waste my time!',12378,1,0,0,'selin SAY_AGGRO'),
(-1585001,'My hunger knows no bounds!',12381,1,0,0,'selin SAY_ENERGY'),
(-1585002,'Yes! I am a god!',12382,1,0,0,'selin SAY_EMPOWERED'),
(-1585003,'Enough distractions!',12388,1,0,0,'selin SAY_KILL_1'),
(-1585004,'I am invincible!',12385,1,0,0,'selin SAY_KILL_2'),
(-1585005,'No! More... I must have more!',12383,1,0,0,'selin SAY_DEATH'),
(-1585006,'%s begins to channel from the nearby Fel Crystal...',0,3,0,0,'selin EMOTE_CRYSTAL'),

(-1585007,'Drain...life!',12389,1,0,0,'vexallus SAY_AGGRO'),
(-1585008,'Un...con...tainable.',12392,1,0,0,'vexallus SAY_ENERGY'),
(-1585009,'Un...leash...',12390,1,0,0,'vexallus SAY_OVERLOAD'),
(-1585010,'Con...sume.',12393,1,0,0,'vexallus SAY_KILL'),
(-1585011,'%s discharges pure energy!',0,3,0,0,'vexallus EMOTE_DISCHARGE_ENERGY'),

(-1585012,'Annihilate them!',12395,1,0,0,'delrissa SAY_AGGRO'),
(-1585013,'Oh, the horror.',12398,1,0,0,'delrissa LackeyDeath1'),
(-1585014,'Well, aren\'t you lucky?',12400,1,0,0,'delrissa LackeyDeath2'),
(-1585015,'Now I\'m getting annoyed.',12401,1,0,0,'delrissa LackeyDeath3'),
(-1585016,'Lackies be damned! I\'ll finish you myself!',12403,1,0,0,'delrissa LackeyDeath4'),
(-1585017,'I call that a good start.',12405,1,0,0,'delrissa PlayerDeath1'),
(-1585018,'I could have sworn there were more of you.',12407,1,0,0,'delrissa PlayerDeath2'),
(-1585019,'Not really much of a group, anymore, is it?',12409,1,0,0,'delrissa PlayerDeath3'),
(-1585020,'One is such a lonely number.',12410,1,0,0,'delrissa PlayerDeath4'),
(-1585021,'It\'s been a kick, really.',12411,1,0,0,'delrissa PlayerDeath5'),
(-1585022,'Not what I had... planned...',12397,1,0,0,'delrissa SAY_DEATH'),

(-1585023,'Don\'t look so smug! I know what you\'re thinking, but Tempest Keep was merely a set back. Did you honestly believe I would trust the future to some blind, half-night elf mongrel? Oh no, he was merely an instrument, a stepping stone to a much larger plan! It has all led to this, and this time, you will not interfere!',12413,1,0,0,'kaelthas MT SAY_AGGRO'),
(-1585024,'Vengeance burns!',12415,1,0,0,'kaelthas MT SAY_PHOENIX'),
(-1585025,'Felomin ashal!',12417,1,0,0,'kaelthas MT SAY_FLAMESTRIKE'),
(-1585026,'I\'ll turn your world... upside... down...',12418,1,0,0,'kaelthas MT SAY_GRAVITY_LAPSE'),
(-1585027,'Master... grant me strength.',12419,1,0,0,'kaelthas MT SAY_TIRED'),
(-1585028,'Do not... get too comfortable.',12420,1,0,0,'kaelthas MT SAY_RECAST_GRAVITY'),
(-1585029,'My demise accomplishes nothing! The Master will have you! You will drown in your own blood! This world shall burn! Aaaghh!',12421,1,0,0,'kaelthas MT SAY_DEATH');

-- -1 595 000 CULLING OF STRATHOLME

-- -1 599 000 HALLS OF STONE
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1599000,'Soft, vulnerable shells. Brief, fragile lives. You can not escape the curse of flesh!',14180,1,0,0,'sjonnir SAY_AGGRO'),
(-1599001,'???',14181,1,0,0,'sjonnir SAY_SLAY_1'),
(-1599002,'Flesh is no match for iron!',14182,1,0,0,'sjonnir SAY_SLAY_2'),
(-1599003,'Armies of iron will smother the world!',14183,1,0,0,'sjonnir SAY_SLAY_3'),
(-1599004,'Loken will not rest, until the forge is retaken. You changed nothing!',14184,1,0,0,'sjonnir SAY_DEATH'),

(-1599005,'You shouldn\'t have come...now you will die!',13487,1,0,0,'maiden SAY_AGGRO'),
(-1599006,'Why must it be this way?',13488,1,0,0,'maiden SAY_SLAY_1'),
(-1599007,'You had it coming!',13489,1,0,0,'maiden SAY_SLAY_2'),
(-1599008,'My burden grows heavier.',13490,1,0,0,'maiden SAY_SLAY_3'),
(-1599009,'This is your own fault!',13491,1,0,0,'maiden SAY_SLAY_4'),
(-1599010,'So much lost time... that you\'ll never get back!',13492,1,0,0,'maiden SAY_STUN'),
(-1599011,'I hope you all rot! I never...wanted...this.',13493,1,0,0,'maiden SAY_DEATH'),

(-1599012,'Now that\'s owning your supper!',14244,1,0,0,'brann SAY_KILL_1'),
(-1599013,'Press on, that\'s the way!',14245,1,0,0,'brann SAY_KILL_2'),
(-1599014,'Keep it up now. Plenty of death-dealing for everyone!',14246,1,0,0,'brann SAY_KILL_3'),
(-1599015,'I\'m all kinds of busted up. Might not... make it...',14257,1,0,0,'brann SAY_LOW_HEALTH'),
(-1599016,'Not yet, not... yet-',14258,1,0,0,'brann SAY_DEATH'),
(-1599017,'I\'m doing everything I can!',14260,1,0,0,'brann SAY_PLAYER_DEATH_1'),
(-1599018,'Light preserve you!',14261,1,0,0,'brann SAY_PLAYER_DEATH_2'),
(-1599019,'I hope this is all worth it!',14262,1,0,0,'brann SAY_PLAYER_DEATH_3'),
(-1599020,'Time to get some answers! Let\'s get this show on the road!',14259,1,0,0,'brann SAY_ESCORT_START'),

(-1599021,'Don\'t worry. Old Brann has got your back. Keep that metal monstrosity busy and I\'ll see if I can sweet talk this machine into helping you.',14274,1,0,0,'brann SAY_SPAWN_DWARF'),
(-1599022,'This is a wee bit trickier that before... Oh, bloody--incomin\'!',14275,1,0,0,'brann SAY_SPAWN_TROGG'),
(-1599023,'What in the name o\' Madoran did THAT do? Oh! Wait: I just about got it...',14276,1,0,0,'brann SAY_SPAWN_OOZE'),
(-1599024,'Ha, that did it. Help\'s a-coming. Take this you glow-eying brute!',14277,1,0,0,'brann SAY_SPAWN_EARTHEN'),

(-1599025,'Take a moment and relish this with me! Soon all will be revealed! Okay then, let\'s do this!',14247,1,0,0,'brann SAY_EVENT_INTRO_1'),
(-1599026,'Now keep an eye out! I\'ll have this licked in two shakes of a--',14248,1,0,0,'brann SAY_EVENT_INTRO_2'),
(-1599027,'Warning! Life form pattern not recognized. Archival processing terminated. Continued interference will result in targeted response.',13765,1,0,0,'brann SAY_EVENT_INTRO_3_ABED'),

(-1599028,'Oh, that doesn\'t sound good. We might have a complication or two...',14249,1,0,0,'brann SAY_EVENT_A_1'),
(-1599029,'Security breach in progress. Analysis of historical archives transferred to lower priority queue. Countermeasures engaged.',13756,1,0,0,'brann SAY_EVENT_A_2_KADD'),
(-1599030,'Ah, you want to play hardball, eh? That\'s just my game!',14250,1,0,0,'brann SAY_EVENT_A_3'),

(-1599031,'Couple more minutes and I\'ll--',14251,1,0,0,'brann SAY_EVENT_B_1'),
(-1599032,'Threat index threshold exceeded. Celestial archive aborted. Security level heightened.',13761,1,0,0,'brann SAY_EVENT_B_2_MARN'),
(-1599033,'Heightened? What\'s the good news?',14252,1,0,0,'brann SAY_EVENT_B_3'),

(-1599034,'So that was the problem? Now I\'m makin\' progress...',14253,1,0,0,'brann SAY_EVENT_C_1'),
(-1599035,'Critical threat index. Void analysis diverted. Initiating sanitization protocol.',13767,1,0,0,'brann SAY_EVENT_C_2_ABED'),
(-1599036,'Hang on! Nobody\'s gonna\' be sanitized as long as I have a say in it!',14254,1,0,0,'brann SAY_EVENT_C_3'),

(-1599037,'Ha! The old magic fingers finally won through! Now let\'s get down to-',14255,1,0,0,'brann SAY_EVENT_D_1'),
(-1599038,'Alert! Security fail safes deactivated. Beginning memory purge...',13768,1,0,0,'brann SAY_EVENT_D_2_ABED'),
(-1599039,'Purge? No no no no no! Where did I-- Aha, this should do the trick...',14256,1,0,0,'brann SAY_EVENT_D_3'),
(-1599040,'System online. Life form pattern recognized. Welcome Branbronzan. Query?',13769,1,0,0,'brann SAY_EVENT_D_4_ABED'),

(-1599041,'Query? What do you think I\'m here for? Tea and biscuits? Spill the beans already!',14263,1,0,0,'brann SAY_EVENT_END_01'),
(-1599042,'Tell me how that dwarfs came to be! And start at the beginning!',14264,1,0,0,'brann SAY_EVENT_END_02'),
(-1599043,'Accessing prehistoric data. Retrieved. In the beginning Earthen were created to-',13770,1,0,0,'brann SAY_EVENT_END_03_ABED'),
(-1599044,'Right, right! I know that the Earthen were made of stone to shape the deep reaches of the world but what about the anomalies? Matrix non-stabilizing and whatnot.',14265,1,0,0,'brann SAY_EVENT_END_04'),
(-1599045,'Accessing. In the early stages of its development cycle Azeroth suffered infection by parasitic, necrophotic symbiotes.',13771,1,0,0,'brann SAY_EVENT_END_05_ABED'),
(-1599046,'Necro-what? Speak bloody common will ya?',14266,1,0,0,'brann SAY_EVENT_END_06'),
(-1599047,'Designation: Old Gods. Old Gods rendered all systems, including Earthen defenseless in order to facilitate assimilation. This matrix destabilization has been termed the Curse of Flesh. Effects of destabilization increased over time.',13772,1,0,0,'brann SAY_EVENT_END_07_ABED'),
(-1599048,'Old Gods eh? So they zapped the Earthen with this Curse of Flesh. And then what?',14267,1,0,0,'brann SAY_EVENT_END_08'),
(-1599049,'Accessing. Creators arrived to extirpate symbiotic infection. Assessment revealed that Old God infestation had grown malignant. Excising parasites would result in loss of host.',13757,1,0,0,'brann SAY_EVENT_END_09_KADD'),
(-1599050,'If they killed the Old Gods Azeroth would have been destroyed.',14268,1,0,0,'brann SAY_EVENT_END_10'),
(-1599051,'Correct. Creators neutralized parasitic threat and contained it within the host. Forge of Wills and other systems were instituted to create new Earthen. Safeguards were implemented and protectors were appointed.',13758,1,0,0,'brann SAY_EVENT_END_11_KADD'),
(-1599052,'What protectors?',14269,1,0,0,'brann SAY_EVENT_END_12'),
(-1599053,'Designations: Aesir and Vanir or in common nomenclator Storm and Earth Giants. Sentinel Loken designated supreme. Dragon Aspects appointed to monitor evolution of Azeroth.',13759,1,0,0,'brann SAY_EVENT_END_13_KADD'),
(-1599054,'Aesir and Vanir. Okay. So the Forge of Wills started to make new Earthen. But what happened to the old ones?',14270,1,0,0,'brann SAY_EVENT_END_14'),
(-1599055,'Additional background is relevant to your query. Following global combat between-',13762,1,0,0,'brann SAY_EVENT_END_15_MARN'),
(-1599056,'Hold everything! The Aesir and Vanir went to war? Why?',14271,1,0,0,'brann SAY_EVENT_END_16'),
(-1599057,'Unknown. Data suggests that impetus for global combat originated with prime designate Loken who neutralized all remaining Aesir and Vanir affecting termination of conflict. Prime designate Loken then initiated stasis of several seed races including Earthen, Giant and Vrykul at designated holding facilities.',13763,1,0,0,'brann SAY_EVENT_END_17_MARN'),
(-1599058,'This Loken sounds like a nasty character. Glad we don\'t have to worry about the likes of him anymore. So if I\'m understanding you lads the original Earthen eventually woke up from this statis. And by that time this destabily-whatever had turned them into our brother dwarfs. Or at least dwarf ancestors. Hm?',14272,1,0,0,'brann SAY_EVENT_END_18'),
(-1599059,'Essentially that is correct.',13764,1,0,0,'brann SAY_EVENT_END_19_MARN'),
(-1599060,'Well now. That\'s a lot to digest. I\'m gonna need some time to take all of this in. Thank you!',14273,1,0,0,'brann SAY_EVENT_END_20'),
(-1599061,'Acknowledged Branbronzan. Session terminated.',13773,1,0,0,'brann SAY_EVENT_END_21_ABED'),

(-1599062,'Loken?! That\'s downright bothersome... We might\'ve neutralized the iron dwarves, but I\'d lay odds there\'s another machine somewhere else churnin\' out a whole mess o\' these iron vrykul!',14278,1,0,0,'brann SAY_VICTORY_SJONNIR_1'),
(-1599063,'I\'ll use the forge to make badtches o\' earthen to stand guard... But our greatest challenge still remains: find and stop Loken!',14279,1,0,0,'brann SAY_VICTORY_SJONNIR_2'),

(-1599064,'I think it\'s time to see what\'s behind the door near the entrance. I\'m going to sneak over there, nice and quiet. Meet me at the door and I\'ll get us in.',0,1,0,0,'brann SAY_ENTRANCE_MEET');

-- -1 600 000 DRAK'THARON KEEP
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1600000,'More grunts, more glands, more FOOD!',13181,1,0,0,'trollgore SAY_AGGRO'),
(-1600001,'So hungry! Must feed!',13182,1,0,0,'trollgore SAY_CONSUME'),
(-1600002,'Aaaargh...',13183,1,0,0,'trollgore SAY_DEATH'),
(-1600003,'Corpse go boom!',13184,1,0,0,'trollgore SAY_EXPLODE'),
(-1600004,'You have gone, me gonna eat you!',13185,1,0,0,'trollgore SAY_KILL'),

(-1600005,'The chill that you feel is the herald of your doom!',13173,1,0,0,'novos SAY_AGGRO'),
(-1600006,'Your efforts... are in vain.',13174,1,0,0,'novos SAY_DEATH'),
(-1600007,'Such is the fate of all who oppose the Lich King.',13175,1,0,0,'novos SAY_KILL'),
(-1600008,'Bolster my defenses! Hurry, curse you!',13176,1,0,0,'novos SAY_ADDS'),
(-1600009,'Surely you can see the futility of it all!',13177,1,0,0,'novos SAY_BUBBLE_1'),
(-1600010,'Just give up and die already!',13178,1,0,0,'novos SAY_BUBBLE_2'),
(-1600011,'%s calls for assistance.',0,3,0,0,'novos EMOTE_ASSISTANCE'),

(-1600012,'Tharon\'ja sees all! The work of mortals shall not end the eternal dynasty!',13862,1,0,0,'tharonja SAY_AGGRO'),
(-1600013,'As Tharon\'ja predicted.',13863,1,0,0,'tharonja SAY_KILL_1'),
(-1600014,'As it was written.',13864,1,0,0,'tharonja SAY_KILL_2'),
(-1600015,'Your flesh serves Tharon\'ja now!',13865,1,0,0,'tharonja SAY_FLESH_1'),
(-1600016,'Tharon\'ja has a use for your mortal shell!',13866,1,0,0,'tharonja SAY_FLESH_2'),
(-1600017,'No! A taste... all too brief!',13867,1,0,0,'tharonja SAY_SKELETON_1'),
(-1600018,'Tharon\'ja will have more!',13868,1,0,0,'tharonja SAY_SKELETON_2'),
(-1600019,'Im... impossible! Tharon\'ja is eternal! Tharon\'ja... is...',13869,1,0,0,'tharonja SAY_DEATH');

-- -1 601 000 AZJOL-NERUB
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1601000,'This kingdom belongs to the Scourge! Only the dead may enter.',14075,1,0,0,'krikthir SAY_AGGRO'),
(-1601001,'???',14076,1,0,0,'krikthir SAY_KILL_1'),
(-1601002,'You were foolish to come.',14077,1,0,0,'krikthir SAY_KILL_2'),
(-1601003,'As Anub\'Arak commands!',14078,1,0,0,'krikthir SAY_KILL_3'),
(-1601004,'We are besieged. Strike out and bring back their corpses!',14079,1,0,0,'krikthir SAY_SEND_GROUP_1'),
(-1601005,'We must hold the gate. Attack! Tear them limb from limb!',14080,1,0,0,'krikthir SAY_SEND_GROUP_2'),
(-1601006,'The gate must be protected at all costs. Rip them to shreds!',14081,1,0,0,'krikthir SAY_SEND_GROUP_3'),
(-1601007,'Keep an eye on the tunnel. We must not let anyone through!',14082,1,0,0,'krikthir SAY_PREFIGHT_1'),
(-1601008,'I hear footsteps. Be on your guard.',14083,1,0,0,'krikthir SAY_PREFIGHT_2'),
(-1601009,'I sense the living. Be ready.',14084,1,0,0,'krikthir SAY_PREFIGHT_3'),
(-1601010,'They hunger.',14085,1,0,0,'krikthir SAY_SWARM_1'),
(-1601011,'Dinner time, my pets.',14086,1,0,0,'krikthir SAY_SWARM_2'),
(-1601012,'I should be grateful. But I long ago lost the capacity.',14087,1,0,0,'krikthir SAY_DEATH'),
(-1601013,'REUSE ME',0,0,0,0,'REUSE ME'),

(-1601014,'I was king of this empire once, long ago. In life I stood as champion. In death I returned as conqueror. Now I protect the kingdom once more. Ironic, yes?',14053,1,0,0,'anubarak SAY_INTRO'),
(-1601015,'Eternal agony awaits you!',14054,1,0,0,'anubarak SAY_AGGRO'),
(-1601016,'You shall experience my torment, first-hand!',14055,1,0,0,'anubarak SAY_KILL_1'),
(-1601017,'You have made your choice.',14056,1,0,0,'anubarak SAY_KILL_2'),
(-1601018,'Soon, the Master\'s voice will call to you.',14057,1,0,0,'anubarak SAY_KILL_3'),
(-1601019,'Come forth, my brethren. Feast on their flesh!',14058,1,0,0,'anubarak SAY_SUBMERGE_1'),
(-1601020,'Auum na-l ak-k-k-k, isshhh.',14059,1,0,0,'anubarak SAY_SUBMERGE_2'),
(-1601021,'Your armor is useless against my locusts!',14060,1,0,0,'anubarak SAY_LOCUST_1'),
(-1601022,'The pestilence upon you!',14067,1,0,0,'anubarak SAY_LOCUST_2'),
(-1601023,'Uunak-hissss tik-k-k-k-k!',14068,1,0,0,'anubarak SAY_LOCUST_3'),
(-1601024,'Ahhh... RAAAAAGH! Never thought... I would be free of him...',14069,1,0,0,'anubarak SAY_DEATH');

-- -1 602 000 HALLS OF LIGHTNING
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1602000,'I am the greatest of my father\'s sons! Your end has come!',14149,1,0,0,'bjarngrim SAY_AGGRO'),
(-1602001,'So ends your curse!',14153,1,0,0,'bjarngrim SAY_SLAY_1'),
(-1602002,'Flesh... is... weak!',14154,1,0,0,'bjarngrim SAY_SLAY_2'),
(-1602003,'...',14155,1,0,0,'bjarngrim SAY_SLAY_3'),
(-1602004,'How can it be...? Flesh is not... stronger!',14156,1,0,0,'bjarngrim SAY_DEATH'),
(-1602005,'Defend yourself, for all the good it will do!',14151,1,0,0,'bjarngrim SAY_BATTLE_STANCE'),
(-1602006,'%s switches to Battle Stance!',0,3,0,0,'bjarngrim EMOTE_BATTLE_STANCE'),
(-1602007,'GRAAAAAH! Behold the fury of iron and steel!',14152,1,0,0,'bjarngrim SAY_BERSEKER_STANCE'),
(-1602008,'%s switches to Berserker Stance!',0,3,0,0,'bjarngrim EMOTE_BERSEKER_STANCE'),
(-1602009,'Give me your worst!',14150,1,0,0,'bjarngrim SAY_DEFENSIVE_STANCE'),
(-1602010,'%s switches to Defensive Stance!',0,3,0,0,'bjarngrim EMOTE_DEFENSIVE_STANCE'),

(-1602011,'You wish to confront the master? You must weather the storm!',14453,1,0,0,'ionar SAY_AGGRO'),
(-1602012,'Shocking ... I know!',14456,1,0,0,'ionar SAY_SLAY_1'),
(-1602013,'You atempt the unpossible.',14457,1,0,0,'ionar SAY_SLAY_2'),
(-1602014,'Your spark of light is ... extinguish.',14458,1,0,0,'ionar SAY_SLAY_3'),
(-1602015,'Master... you have guests.',14459,1,0,0,'ionar SAY_DEATH'),
(-1602016,'The slightest spark shall be your undoing.',14454,1,0,0,'ionar SAY_SPLIT_1'),
(-1602017,'No one is safe!',14455,1,0,0,'ionar SAY_SPLIT_2'),

(-1602018,'What hope is there for you? None!',14162,1,0,0,'loken SAY_AGGRO0'),
(-1602019,'I have witnessed the rise and fall of empires. The birth and extinction of entire species. Over countless millennia the foolishness of mortals has remained beyond a constant. Your presence here confirms this.',14160,1,0,0,'loken SAY_INTRO_1'),
(-1602020,'My master has shown me the future, and you have no place in it. Azeroth will be reborn in darkness. Yogg-Saron shall be released! The Pantheon shall fall!',14162,1,0,0,'loken SAY_INTRO_2'),
(-1602021,'Only mortal...',14166,1,0,0,'loken SAY_SLAY_1'),
(-1602022,'I... am... FOREVER!',14167,1,0,0,'loken SAY_SLAY_2'),
(-1602023,'What little time you had, you wasted!',14168,1,0,0,'loken SAY_SLAY_3'),
(-1602024,'My death... heralds the end of this world.',14172,1,0,0,'loken SAY_DEATH'),
(-1602025,'You cannot hide from fate!',14163,1,0,0,'loken SAY_NOVA_1'),
(-1602026,'Come closer. I will make it quick.',14164,1,0,0,'loken SAY_NOVA_2'),
(-1602027,'Your flesh cannot hold out for long.',14165,1,0,0,'loken SAY_NOVA_3'),
(-1602028,'You stare blindly into the abyss!',14169,1,0,0,'loken SAY_75HEALTH'),
(-1602029,'Your ignorance is profound. Can you not see where this path leads?',14170,1,0,0,'loken SAY_50HEALTH'),
(-1602030,'You cross the precipice of oblivion!',14171,1,0,0,'loken SAY_25HEALTH'),
(-1602031,'%s begins to cast Lightning Nova!',0,3,0,0,'loken EMOTE_NOVA'),

(-1602032,'It is you who have destroyed my children? You... shall... pay!',13960,1,0,0,'volkhan SAY_AGGRO'),
(-1602033,'The armies of iron will conquer all!',13965, 1,0,0,'volkhan SAY_SLAY_1'),
(-1602034,'Ha, pathetic!',13966,1,0,0,'volkhan SAY_SLAY_2'),
(-1602035,'You have cost me too much work!',13967,1,0,0,'volkhan SAY_SLAY_3'),
(-1602036,'The master was right... to be concerned.',13968,1,0,0,'volkhan SAY_DEATH'),
(-1602037,'I will crush you beneath my boots!',13963,1,0,0,'volkhan SAY_STOMP_1'),
(-1602038,'All my work... undone!',13964,1,0,0,'volkhan SAY_STOMP_2'),
(-1602039,'Life from the lifelessness... death for you.',13961,1,0,0,'volkhan SAY_FORGE_1'),
(-1602040,'Nothing is wasted in the process. You will see....',13962,1,0,0,'volkhan SAY_FORGE_2'),
(-1602041,'%s runs to his anvil!',0,3,0,0,'volkhan EMOTE_TO_ANVIL'),
(-1602042,'%s prepares to shatter his Brittle Golems!',0,3,0,0,'volkhan EMOTE_SHATTER');

-- -1 603 000 ULDUAR

-- -1 604 000 GUNDRAK
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1604000,'Drakkari gonna kill anybody who trespass on these lands!',14443,1,0,0,'sladran SAY_AGGRO'),
(-1604001,'Minions of the scale, heed my call!',14444,1,0,0,'sladran SAY_SUMMON_SNAKE'),
(-1604002,'Our thousand fangs gonna rend your flesh! ',14445,1,0,0,'sladran SAY_SUMMON_CONSTRICTOR'),
(-1604003,'Ye not breathin\'! Good.',14446,1,0,0,'sladran SAY_SLAY_1'),
(-1604004,'You scared now?',14447,1,0,0,'sladran SAY_SLAY_2'),
(-1604005,'I\'ll eat you next, mon!',14448,1,0,0,'sladran SAY_SLAY_3'),
(-1604006,'I sssee now... Ssscourge wasss not... our greatessst enemy...',14449,1,0,0,'sladran SAY_DEATH'),
(-1604007,'%s begins to cast Poison Nova!',0,3,0,0,'sladran EMOTE_NOVA'),

(-1604008,'%s surges forward!',0,2,0,0,'colossus EMOTE_SURGE'),
(-1604009,'%s seep into the ground.',0,2,0,0,'colossus EMOTE_SEEP'),
(-1604010,'%s begins to glow faintly.',0,2,0,0,'colossus EMOTE_GLOW'),

(-1604011,'We fought back da Scourge. What chance joo be thinkin\' JOO got?',14721,1,0,0,'moorabi SAY_AGGRO'),
(-1604012,'Da ground gonna swallow you up! ',14723,1,0,0,'moorabi SAY_QUAKE'),
(-1604013,'Get ready for somethin\'... much... BIGGAH!',14722,1,0,0,'moorabi SAY_TRANSFORM'),
(-1604014,'I crush you, cockroaches!',14725,1,0,0,'moorabi SAY_SLAY_1'),
(-1604015,'Who gonna stop me; you?',14726,1,0,0,'moorabi SAY_SLAY_2'),
(-1604016,'Not so tough now.',14727,1,0,0,'moorabi SAY_SLAY_3'),
(-1604017,'If our gods can die... den so can we...',14728,1,0,0,'moorabi SAY_DEATH'),
(-1604018,'%s begins to transform!',0,3,0,0,'moorabi EMOTE_TRANSFORM'),

(-1604019,'I\'m gonna spill your guts, mon!',14430,1,0,0,'galdarah SAY_AGGRO'),
(-1604020,'Ain\'t gonna be nottin\' left after this!',14431,1,0,0,'galdarah SAY_TRANSFORM_1'),
(-1604021,'You wanna see power? I\'m gonna show you power!',14432,1,0,0,'galdarah SAY_TRANSFORM_2'),
(-1604022,'Gut them! Impale them!',14433,1,0,0,'galdarah SAY_SUMMON_1'),
(-1604023,'Kill them all!',14434,1,0,0,'galdarah SAY_SUMMON_2'),
(-1604024,'Say hello to my BIG friend!',14435,1,0,0,'galdarah SAY_SUMMON_3'),
(-1604025,'What a rush!',14436,1,0,0,'galdarah SAY_SLAY_1'),
(-1604026,'Who needs gods, when WE ARE GODS!',14437,1,0,0,'galdarah SAY_SLAY_2'),
(-1604027,'I told ya so!',14438,1,0,0,'galdarah SAY_SLAY_3'),
(-1604028,'Even the mighty... can fall.',14439,1,0,0,'galdarah SAY_DEATH'),

(-1604029,'%s transforms into a Mammoth!',14724,2,0,0,'moorabi EMOTE_TRANSFORMED');

-- -1 608 000 VIOLET HOLD
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1608000,'Prison guards, we are leaving! These adventurers are taking over! Go, go, go!',0,1,0,0,'sinclair SAY_BEGIN'),
(-1608001,'I\'m locking the door. Good luck, and thank you for doing this.',0,0,0,0,'sinclair SAY_LOCK_DOOR'),

(-1608002,'Adventurers, the door is beinning to weaken!',0,1,0,0,'sinclair SAY_SEAL_75'),
(-1608003,'Only half of the door seal\'s strength remains! You must fight on!',0,1,0,0,'sinclair SAY_SEAL_50'),
(-1608004,'The door seal is about to collapse! All is lost if the Blue Dragonflight breaks through the door!',0,1,0,0,'sinclair SAY_SEAL_5'),

(-1608005,'A Portal Guardian defends the new portal!',0,3,0,0,'EMOTE_GUARDIAN_PORTAL'),
(-1608006,'An elite Blue Dragonflight squad appears from the portal!',0,3,0,0,'EMOTE_DRAGONFLIGHT_PORTAL'),
(-1608007,'A Guardian Keeper emerges from the portal!',0,3,0,0,'EMOTE_KEEPER_PORTAL');

-- -1 609 000 EBON HOLD (DK START)
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1609000,'You have made a grave error, fiend!',0,0,0,0,'unworthy SAY_START_1'),
(-1609001,'I was a soldier of the Light once... Look at what I have become... ',0,0,0,0,'unworthy SAY_START_2'),
(-1609002,'You are hopelessly outmatched, $R.',0,0,0,0,'unworthy SAY_START_3'),
(-1609003,'They brand me unworthy? I will show them unmorthy!',0,0,0,0,'unworthy SAY_START_4'),
(-1609004,'You will allow me a weapon and armor, yes?',0,0,0,0,'unworthy SAY_START_5'),
(-1609005,'I will win my freedom and leave this cursed place!',0,0,0,0,'unworthy SAY_START_6'),
(-1609006,'I will dismantle this festering hellhole!',0,0,0,0,'unworthy SAY_START_7'),
(-1609007,'There can be only one survivor!',0,0,0,0,'unworthy SAY_START_8'),

(-1609008,'Let your fears consume you!',0,0,0,0,'unworthy SAY_AGGRO_1'),
(-1609009,'HAH! You can barely hold a blade! Yours will be a quick death.',0,0,0,0,'unworthy SAY_AGGRO_2'),
(-1609010,'And now you die',0,0,0,0,'unworthy SAY_AGGRO_3'),
(-1609011,'To battle!',0,0,0,0,'unworthy SAY_AGGRO_4'),
(-1609012,'There is no hope for our future...',0,0,0,0,'unworthy SAY_AGGRO_5'),
(-1609013,'Sate your hunger on cold steel, $R',0,0,0,0,'unworthy SAY_AGGRO_6'),
(-1609014,'It ends here!',0,0,0,0,'unworthy SAY_AGGRO_7'),
(-1609015,'Death is the only cure!',0,0,0,0,'unworthy SAY_AGGRO_8'),

(-1609016,'No potions!',0,0,0,0,'dk_initiate SAY_DUEL_A'),
(-1609017,'Remember this day, $n, for it is the day that you will be thoroughly owned.',0,0,0,0,'dk_initiate SAY_DUEL_B'),
(-1609018,'I\'m going to tear your heart out, cupcake!',0,0,0,0,'dk_initiate SAY_DUEL_C'),
(-1609019,'Don\'t make me laugh.',0,0,0,0,'dk_initiate SAY_DUEL_D'),
(-1609020,'Here come the tears...',0,0,0,0,'dk_initiate SAY_DUEL_E'),
(-1609021,'You have challenged death itself!',0,0,0,0,'dk_initiate SAY_DUEL_F'),
(-1609022,'The Lich King will see his true champion on this day!',0,0,0,0,'dk_initiate SAY_DUEL_G'),
(-1609023,'You\'re going down!',0,0,0,0,'dk_initiate SAY_DUEL_H'),
(-1609024,'You don\'t stand a chance, $n',0,0,0,0,'dk_initiate SAY_DUEL_I'),

(-1609025,'Come to finish the job, have you?',0,0,0,1,'special_surprise SAY_EXEC_START_1'),
(-1609026,'Come to finish the job, have ye?',0,0,0,1,'special_surprise SAY_EXEC_START_2'),
(-1609027,'Come ta finish da job, mon?',0,0,0,1,'special_surprise SAY_EXEC_START_3'),

(-1609028,'You\'ll look me in the eyes when...',0,0,0,25,'special_surprise SAY_EXEC_PROG_1'),
(-1609029,'Well this son o\' Ironforge would like...',0,0,0,25,'special_surprise SAY_EXEC_PROG_2'),
(-1609030,'Ironic, isn\'t it? To be killed...',0,0,0,25,'special_surprise SAY_EXEC_PROG_3'),
(-1609031,'If you\'d allow me just one...',0,0,0,25,'special_surprise SAY_EXEC_PROG_4'),
(-1609032,'I\'d like to stand for...',0,0,0,25,'special_surprise SAY_EXEC_PROG_5'),
(-1609033,'I want to die like an orc...',0,0,0,25,'special_surprise SAY_EXEC_PROG_6'),
(-1609034,'Dis troll gonna stand for da...',0,0,0,25,'special_surprise SAY_EXEC_PROG_7'),

(-1609035,'$N?',0,0,0,1,'special_surprise SAY_EXEC_NAME_1'),
(-1609036,'$N? Mon?',0,0,0,1,'special_surprise SAY_EXEC_NAME_2'),

(-1609037,'$N, I\'d recognize that face anywhere... What... What have they done to you, $N?',0,0,0,1,'special_surprise SAY_EXEC_RECOG_1'),
(-1609038,'$N, I\'d recognize those face tentacles anywhere... What... What have they done to you, $N?',0,0,0,1,'special_surprise SAY_EXEC_RECOG_2'),
(-1609039,'$N, I\'d recognize that face anywhere... What... What have they done to ye, $Glad:lass;?',0,0,0,1,'special_surprise SAY_EXEC_RECOG_3'),
(-1609040,'$N, I\'d recognize that decay anywhere... What... What have they done to you, $N?',0,0,0,1,'special_surprise SAY_EXEC_RECOG_4'),
(-1609041,'$N, I\'d recognize those horns anywhere... What have they done to you, $N?',0,0,0,1,'special_surprise SAY_EXEC_RECOG_5'),
(-1609042,'$N, I\'d recognize dem tusks anywhere... What... What have dey done ta you, mon?',0,0,0,1,'special_surprise SAY_EXEC_RECOG_6'),

(-1609043,'You don\'t remember me, do you? Blasted Scourge... They\'ve tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a draenei!',0,0,0,1,'special_surprise SAY_EXEC_NOREM_1'),
(-1609044,'Ye don\'t remember me, do ye? Blasted Scourge... They\'ve tried to drain ye o\' everything that made ye a righteous force o\' reckoning. Every last ounce o\' good... Everything that made you a $Gson:daughter; of Ironforge!',0,0,0,1,'special_surprise SAY_EXEC_NOREM_2'),
(-1609045,'You don\'t remember me, do you? We were humans once - long, long ago - until Lordaeron fell to the Scourge. Your transformation to a Scourge zombie came shortly after my own. Not long after that, our minds were freed by the Dark Lady.',0,0,0,1,'special_surprise SAY_EXEC_NOREM_3'),
(-1609046,'You don\'t remember me, do you? Blasted Scourge... They\'ve tried to drain you of everything that made you a pint-sized force of reckoning. Every last ounce of good... Everything that made you a gnome!',0,0,0,1,'special_surprise SAY_EXEC_NOREM_4'),
(-1609047,'You don\'t remember me, do you? Blasted Scourge...They\'ve tried to drain of everything that made you a righteous force of reckoning. Every last ounce of good...Everything that made you a human!',0,0,0,1,'special_surprise SAY_EXEC_NOREM_5'),
(-1609048,'You don\'t remember me? When you were a child your mother would leave you in my care while she served at the Temple of the Moon. I held you in my arms and fed you with honey and sheep\'s milk to calm you until she would return. You were my little angel. Blasted Scourge... What have they done to you, $N?',0,0,0,1,'special_surprise SAY_EXEC_NOREM_6'),
(-1609049,'You don\'t recognize me, do you? Blasted Scourge... They\'ve tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you an orc!',0,0,0,1,'special_surprise SAY_EXEC_NOREM_7'),
(-1609050,'You don\'t remember me, do you? Blasted Scourge... They\'ve tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a tauren!',0,0,0,1,'special_surprise SAY_EXEC_NOREM_8'),
(-1609051,'You don\'t remember me, mon? Damn da Scourge! Dey gone ta drain you of everytin dat made ya a mojo masta. Every last ounce of good... Everytin\' dat made ya a troll hero, mon!',0,0,0,1,'special_surprise SAY_EXEC_NOREM_9'),

(-1609052,'A pact was made, $Gbrother:sister;! We vowed vengeance against the Lich King! For what he had done to us! We battled the Scourge as Forsaken, pushing them back into the plaguelands and freeing Tirisfal! You and I were champions of the Forsaken!',0,0,0,1,'special_surprise SAY_EXEC_THINK_1'),
(-1609053,'You must remember the splendor of life, $Gbrother:sister;. You were a champion of the Kaldorei once! This isn\'t you!',0,0,0,1,'special_surprise SAY_EXEC_THINK_2'),
(-1609054,'Think, $N. Think back. Try and remember the majestic halls of Silvermoon City, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the sin\'dorei once! This isn\'t you.',0,0,0,6,'special_surprise SAY_EXEC_THINK_3'),
(-1609055,'Think, $N. Think back. Try and remember the proud mountains of Argus, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the draenei once! This isn\'t you.',0,0,0,6,'special_surprise SAY_EXEC_THINK_4'),
(-1609056,'Think, $N. Think back. Try and remember the snow capped mountains o\' Dun Morogh! Ye were born there, $Glad:lass;. Remember the splendor o\' life, $N! Ye were a champion o\' the dwarves once! This isn\'t ye!',0,0,0,6,'special_surprise SAY_EXEC_THINK_5'),
(-1609057,'Think, $N. Think back. Try and remember Gnomeregan before those damned troggs! Remember the feel of an [arclight spanner] $Gbrother:sister;. You were a champion of gnome-kind once! This isn\'t you.',0,0,0,6,'special_surprise SAY_EXEC_THINK_6'),
(-1609058,'Think, $N. Think back. Try and remember the hills and valleys of Elwynn, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the Alliance once! This isn\'t you.',0,0,0,6,'special_surprise SAY_EXEC_THINK_7'),
(-1609059,'Think, $N. Think back. Try and remember Durotar, $Gbrother:sister;! Remember the sacrifices our heroes made so that we could be free of the blood curse. Harken back to the Valley of Trials, where we were reborn into a world without demonic influence. We found the splendor of life, $N. Together! This isn\'t you. You were a champion of the Horde once!',0,0,0,6,'special_surprise SAY_EXEC_THINK_8'),
(-1609060,'Think, $N. Think back. Try and remember the rolling plains of Mulgore, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the tauren once! This isn\'t you.',0,0,0,6,'special_surprise SAY_EXEC_THINK_9'),
(-1609061,'TINK $N. Tink back, mon! We be Darkspear, mon! Bruddas and sistas! Remember when we fought the Zalazane and done took he head and freed da Echo Isles? MON! TINK! You was a champion of da Darkspear trolls!',0,0,0,6,'special_surprise SAY_EXEC_THINK_10'),

(-1609062,'Listen to me, $N. You must fight against the Lich King\'s control. He is a monster that wants to see this world - our world - in ruin. Don\'t let him use you to accomplish his goals. You were once a hero and you can be again. Fight, damn you! Fight his control!',0,0,0,5,'special_surprise SAY_EXEC_LISTEN_1'),
(-1609063,'Listen to me, $N Ye must fight against the Lich King\'s control. He\'s a monster that wants to see this world - our world - in ruin. Don\'t let him use ye to accomplish his goals. Ye were once a hero and ye can be again. Fight, damn ye! Fight his control!',0,0,0,5,'special_surprise SAY_EXEC_LISTEN_2'),
(-1609064,'Listen to me, $N. You must fight against the Lich King\'s control. He is a monster that wants to see this world - our world - in ruin. Don\'t let him use you to accomplish his goals AGAIN. You were once a hero and you can be again. Fight, damn you! Fight his control!',0,0,0,5,'special_surprise SAY_EXEC_LISTEN_3'),
(-1609065,'Listen ta me, $Gbrudda:sista;. You must fight against da Lich King\'s control. He be a monstar dat want ta see dis world - our world - be ruined. Don\'t let he use you ta accomplish he goals. You be a hero once and you be a hero again! Fight it, mon! Fight he control!',0,0,0,5,'special_surprise SAY_EXEC_LISTEN_4'),

(-1609066,'What\'s going on in there? What\'s taking so long, $N?',0,1,0,0,'special_surprise SAY_PLAGUEFIST'),

(-1609067,'There... There\'s no more time for me. I\'m done for. Finish me off, $N. Do it or they\'ll kill us both. $N... Remember Silvermoon. This world is worth saving!',0,0,0,18,'special_surprise SAY_EXEC_TIME_1'),
(-1609068,'There... There\'s no more time for me. I\'m done for. Finish me off, $N. Do it or they\'ll kill us both. $N... Remember Argus. Don\'t let that happen to this world.',0,0,0,18,'special_surprise SAY_EXEC_TIME_2'),
(-1609069,'There... There\'s no more time for me. I\'m done for. Finish me off, $N. Do it or they\'ll kill us both $N... For KHAAAAAAAAZZZ MODAAAAAANNNNNN!!!',0,0,0,18,'special_surprise SAY_EXEC_TIME_3'),
(-1609070,'There... There\'s no more time for me. I\'m done for. Finish me off, $N. Do it or they\'ll kill us both. $N... Remember Tirisfal! This world is worth saving!',0,0,0,18,'special_surprise SAY_EXEC_TIME_4'),
(-1609071,'There... There\'s no more time for me. I\'m done for. Finish me off, $N. Do it or they\'ll kill us both. $N... Remember Gnomeregan! This world is worth saving.',0,0,0,18,'special_surprise SAY_EXEC_TIME_5'),
(-1609072,'There... There\'s no more time for me. I\'m done for. FInish me off, $N. Do it or they\'ll kill us both. $N...Remember Elwynn. This world is worth saving.',0,0,0,18,'special_surprise SAY_EXEC_TIME_6'),
(-1609073,'There... There\'s no more time for me. I\'m done for. Finish me off, $N. Do it or they\'ll kill us both. $N... Remember Teldrassil, our beloved home. This world is worth saving.',0,0,0,18,'special_surprise SAY_EXEC_TIME_7'),
(-1609074,'There... There\'s no more time for me. I\'m done for. Finish me off, $N. Do it or they\'ll kill us both. $N... For the Horde! This world is worth saving.',0,0,0,18,'special_surprise SAY_EXEC_TIME_8'),
(-1609075,'There... There\'s no more time for me. I\'m done for. Finish me off, $N. Do it or they\'ll kill us both. $N... Remember Mulgore. This world is worth saving.',0,0,0,18,'special_surprise SAY_EXEC_TIME_9'),
(-1609076,'Der... Der\'s no more time for me. I be done for. Finish me off $N. Do it or they\'ll kill us both. $N... Remember Sen\'jin Village, mon! Dis world be worth saving!',0,0,0,18,'special_surprise SAY_EXEC_TIME_10'),

(-1609077,'Do it, $N! Put me out of my misery!',0,0,0,1,'special_surprise SAY_EXEC_WAITING'),
(-1609078,'%s dies from his wounds.',0,2,0,0,'special_surprise EMOTE_DIES'),

(-1609079,'I\'ll need to get my runeblade and armor... Just need a little more time.',0,0,0,399,'koltira SAY_BREAKOUT1'),
(-1609080,'I\'m still weak, but I think I can get an anti-magic barrier up. Stay inside it or you\'ll be destroyed by their spells.',0,0,0,0,'koltira SAY_BREAKOUT2'),
(-1609081,'Maintaining this barrier will require all of my concentration. Kill them all!',0,0,0,16,'koltira SAY_BREAKOUT3'),
(-1609082,'There are more coming. Defend yourself! Don\'t fall out of the anti-magic field! They\'ll tear you apart without its protection!',0,0,0,0,'koltira SAY_BREAKOUT4'),
(-1609083,'I can\'t keep barrier up much longer... Where is that coward?',0,0,0,0,'koltira SAY_BREAKOUT5'),
(-1609084,'The High Inquisitor comes! Be ready, death knight! Do not let him draw you out of the protective bounds of my anti-magic field! Kill him and take his head!',0,0,0,0,'koltira SAY_BREAKOUT6'),
(-1609085,'Stay in the anti-magic field! Make them come to you!',0,0,0,0,'koltira SAY_BREAKOUT7'),
(-1609086,'The death of the High Inquisitor of New Avalon will not go unnoticed. You need to get out of here at once! Go, before more of them show up. I\'ll be fine on my own.',0,0,0,0,'koltira SAY_BREAKOUT8'),
(-1609087,'I\'ll draw their fire, you make your escape behind me.',0,0,0,0,'koltira SAY_BREAKOUT9'),
(-1609088,'Your High Inquisitor is nothing more than a pile of meat, Crusaders! There are none beyond the grasp of the Scourge!',0,1,0,0,'koltira SAY_BREAKOUT10');

-- -1 615 000 OBSIDIAN SANCTUM
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1615000,'I fear nothing! Least of all you!',14111,1,0,0,'shadron SAY_SHADRON_AGGRO'),
(-1615001,'You are insignificant!',14112,1,0,0,'shadron SAY_SHADRON_SLAY_1'),
(-1615002,'Such mediocre resistance!',14113,1,0,0,'shadron SAY_SHADRON_SLAY_2'),
(-1615003,'We...are superior! How could this...be...',14118,1,0,0,'shadron SAY_SHADRON_DEATH'),
(-1615004,'You are easily bested! ',14114,1,0,0,'shadron SAY_SHADRON_BREATH'),
(-1615005,'I will take pity on you Sartharion, just this once.',14117,1,0,0,'shadron SAY_SHADRON_RESPOND'),
(-1615006,'Father tought me well!',14115,1,0,0,'shadron SAY_SHADRON_SPECIAL_1'),
(-1615007,'On your knees!',14116,1,0,0,'shadron SAY_SHADRON_SPECIAL_2'),
(-1615008,'A Shadron Disciple appears in the Twilight!',0,5,0,0,'shadron WHISPER_SHADRON_DICIPLE'),

(-1615009,'You have no place here. Your place is among the departed.',14122,1,0,0,'tenebron SAY_TENEBRON_AGGRO'),
(-1615010,'No contest.',14123,1,0,0,'tenebron SAY_TENEBRON_SLAY_1'),
(-1615011,'Typical... Just as I was having fun.',14124,1,0,0,'tenebron SAY_TENEBRON_SLAY_2'),
(-1615012,'I should not... have held back...', 14129,1,0,0,'tenebron SAY_TENEBRON_DEATH'),
(-1615013,'To darkness I condemn you...',14125,1,0,0,'tenebron SAY_TENEBRON_BREATH'),
(-1615014,'It is amusing to watch you struggle. Very well, witness how it is done.',14128,1,0,0,'tenebron SAY_TENEBRON_RESPOND'),
(-1615015,'Arrogant little creatures! To challenge powers you do not yet understand...',14126,1,0,0,'tenebron SAY_TENEBRON_SPECIAL_1'),
(-1615016,'I am no mere dragon! You will find I am much, much, more...',14127,1,0,0,'tenebron SAY_TENEBRON_SPECIAL_2'),
(-1615017,'%s begins to hatch eggs in the twilight!',0,5,0,0,'tenebron WHISPER_HATCH_EGGS'),

(-1615018,'It is my charge to watch over these eggs. I will see you burn before any harm comes to them!',14093,1,0,0,'sartharion SAY_SARTHARION_AGGRO'),
(-1615019,'This pathetic siege ends NOW!',14103,1,0,0,'sartharion SAY_SARTHARION_BERSERK'),
(-1615020,'Burn, you miserable wretches!',14098, 1,0,0,'sartharion SAY_SARTHARION_BREATH'),
(-1615021,'Shadron! Come to me, all is at risk!',14105,1,0,0,'sartharion SARTHARION_CALL_SHADRON'),
(-1615022,'Tenebron! The eggs are yours to protect as well!',14106,1,0,0,'sartharion SAY_SARTHARION_CALL_TENEBRON'),
(-1615023,'Vesperon! The clutch is in danger! Assist me!',14104,1,0,0,'sartharion SAY_SARTHARION_CALL_VESPERON'),
(-1615024,'Such is the price... of failure...',14107,1,0,0,'sartharion SAY_SARTHARION_DEATH'),
(-1615025,'Such flammable little insects....',14099,1,0,0,'sartharion SAY_SARTHARION_SPECIAL_1'),
(-1615026,'Your charred bones will litter the floor!',14100,1,0,0,'sartharion SAY_SARTHARION_SPECIAL_2'),
(-1615027,'How much heat can you take?',14101,1,0,0,'sartharion SAY_SARTHARION_SPECIAL_3'),
(-1615028,'All will be reduced to ash!',14102,1,0,0,'sartharion SAY_SARTHARION_SPECIAL_4'),
(-1615029,'You will make a fine meal for the hatchlings.',14094,1,0,0,'sartharion SAY_SARTHARION_SLAY_1'),
(-1615030,'You are the grave disadvantage.',14096,1,0,0,'sartharion SAY_SARTHARION_SLAY_2'),
(-1615031,'This is why we call you lesser beeings.',14097,1,0,0,'sartharion SAY_SARTHARION_SLAY_3'),
(-1615032,'The lava surrounding %s churns!',0,5,0,0,'sartharion WHISPER_LAVA_CHURN'),

(-1615033,'You pose no threat, lesser beings...give me your worst!',14133,1,0,0,'vesperon SAY_VESPERON_AGGRO'),
(-1615034,'The least you could do is put up a fight...',14134,1,0,0,'vesperon SAY_VESPERON_SLAY_1'),
(-1615035,'Was that the best you can do?',14135,1,0,0,'vesperon SAY_VESPERON_SLAY_2'),
(-1615036,'I still have some...fight..in...me...', 14140,1,0,0,'vesperon SAY_VESPERON_DEATH'),
(-1615037,'I will pick my teeth with your bones!',14136,1,0,0,'vesperon SAY_VESPERON_BREATH'),
(-1615038,'Father was right about you, Sartharion...You are a weakling!',14139,1,0,0,'vesperon SAY_VESPERON_RESPOND'),
(-1615039,'Aren\'t you tricky...I have a few tricks of my own...',14137,1,0,0,'vesperon SAY_VESPERON_SPECIAL_1'),
(-1615040,'Unlike, I have many talents.',14138,1,0,0,'vesperon SAY_VESPERON_SPECIAL_2'),
(-1615041,'A Vesperon Disciple appears in the Twilight!',0,5,0,0,'shadron WHISPER_VESPERON_DICIPLE'),

(-1615042,'%s begins to open a Twilight Portal!',0,5,0,0,'sartharion drake WHISPER_OPEN_PORTAL');

-- -1 616 000 EYE OF ETERNITY

-- -1 619 000 AHN'KAHET
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1619000,'The secrets of the deep shall remain hidden.',14033,1,0,0,'nadox SAY_AGGRO'),
(-1619001,'The young must not grow hungry...',14034,1,0,0,'nadox SAY_SUMMON_EGG_1'),
(-1619002,'Shhhad ak kereeesshh chak-k-k!',14035,1,0,0,'nadox SAY_SUMMON_EGG_2'),
(-1619003,'Sleep now, in the cold dark.',14036,1,0,0,'nadox SAY_SLAY_1'),
(-1619004,'For the Lich King!',14037,1,0,0,'nadox SAY_SLAY_2'),
(-1619005,'Perhaps we will be allies soon.',14038,1,0,0,'nadox SAY_SLAY_3'),
(-1619006,'Master, is my service complete?',14039,1,0,0,'nadox SAY_DEATH'),
(-1619007,'An Ahn\'kahar Guardian hatches!',0,3,0,0,'nadox EMOTE_HATCH'),

(-1619008,'I will feast on your remains.',14360,1,0,0,'taldaram SAY_AGGRO'),
(-1619009,'Your heartbeat is music to my ears.',14361,1,0,0,'taldaram SAY_VANISH_1'),
(-1619010,'I am nowhere. I am everywhere. I am the watcher, unseen.',14362,1,0,0,'taldaram SAY_VANISH_2'),
(-1619011,'So appetizing.',14363,1,0,0,'taldaram SAY_FEED_1'),
(-1619012,'Fresh, warm blood. It has been too long.',14364,1,0,0,'taldaram SAY_FEED_2'),
(-1619013,'Bin-dor\'el',14365,1,0,0,'taldaram SAY_SLAY_1'),
(-1619014,'I will drink no blood before it\'s time.',14366,1,0,0,'taldaram SAY_SLAY_2'),
(-1619015,'One final embrace.',14367,1,0,0,'taldaram SAY_SLAY_3'),
(-1619016,'Still I hunger, still I thirst.',14368,1,0,0,'taldaram SAY_DEATH'),

(-1619017,'These are sacred halls! Your intrusion will be met with death.',14343,1,0,0,'jedoga SAY_AGGRO'),
(-1619018,'Who among you is devoted?',14344,1,0,0,'jedoga SAY_CALL_SACRIFICE_1'),
(-1619019,'You there! Step forward!',14345,1,0,0,'jedoga SAY_CALL_SACRIFICE_2'),
(-1619020,'Yogg-Saron, grant me your power!',14346,1,0,0,'jedoga SAY_SACRIFICE_1'),
(-1619021,'Master, a gift for you!',14347,1,0,0,'jedoga SAY_SACRIFICE_2'),
(-1619022,'Glory to Yogg-Saron!',14348,1,0,0,'jedoga SAY_SLAY_1'),
(-1619023,'You are unworthy!',14349,1,0,0,'jedoga SAY_SLAY_2'),
(-1619024,'Get up! You haven\'t suffered enough.',14350,1,0,0,'jedoga SAY_SLAY_3'),
(-1619025,'Do not expect your sacrilege... to go unpunished.',14351,1,0,0,'jedoga SAY_DEATH'),
(-1619026,'The elements themselves will rise up against the civilized world! Only the faithful will be spared!',14352,1,0,0,'jedoga SAY_PREACHING_1'),
(-1619027,'Immortality can be yours. But only if you pledge yourself fully to Yogg-Saron!',14353,1,0,0,'jedoga SAY_PREACHING_2'),
(-1619028,'Here on the very borders of his domain. You will experience powers you would never have imagined! ',14354,1,0,0,'jedoga SAY_PREACHING_3'),
(-1619029,'You have traveled long and risked much to be here. Your devotion shall be rewarded.',14355,1,0,0,'jedoga SAY_PREACHING_4'),
(-1619030,'The faithful shall be exalted! But there is more work to be done. We will press on until all of Azeroth lies beneath his shadow!',14356,1,0,0,'jedoga SAY_PREACHING_5'),
(-1619031,'I have been chosen!',0,1,0,0,'jedoga SAY_VOLUNTEER_1'),
(-1619032,'I give myself to the master!',0,1,0,0,'jedoga SAY_VOLUNTEER_2'),

(-1619033,'Shgla\'yos plahf mh\'naus.',14043,1,0,0,'volazj SAY_AGGRO'),
(-1619034,' ',14044,1,0,0,'volazj SAY_INSANITY'),
(-1619035,' ',14045,1,0,0,'volazj SAY_SLAY_1'),
(-1619036,' ',14046,1,0,0,'volazj SAY_SLAY_2'),
(-1619037,' ',14047,1,0,0,'volazj SAY_SLAY_3'),
(-1619038,' ',14048,1,0,0,'volazj SAY_DEATH_1'),
(-1619039,' ',14049,1,0,0,'volazj SAY_DEATH_2');

-- -1 999 900 EXAMPLE TEXT
REPLACE INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1999900,'Let the games begin.',8280,1,0,0,'example_creature SAY_AGGRO'),
(-1999901,'I see endless suffering. I see torment. I see rage. I see everything.',8831,1,0,0,'example_creature SAY_RANDOM_0'),
(-1999902,'Muahahahaha',8818,1,0,0,'example_creature SAY_RANDOM_1'),
(-1999903,'These mortal infedels my lord, they have invaded your sanctum and seek to steal your secrets.',8041,1,0,0,'example_creature SAY_RANDOM_2'),
(-1999904,'You are already dead.',8581,1,0,0,'example_creature SAY_RANDOM_3'),
(-1999905,'Where to go? What to do? So many choices that all end in pain, end in death.',8791,1,0,0,'example_creature SAY_RANDOM_4'),
(-1999906,'$N, I sentance you to death!',8588,1,0,0,'example_creature SAY_BESERK'),
(-1999907,'The suffering has just begun!',0,1,0,0,'example_creature SAY_PHASE'),
(-1999908,'I always thought I was a good dancer.',0,0,0,0,'example_creature SAY_DANCE'),
(-1999909,'Move out Soldier!',0,0,0,0,'example_creature SAY_SALUTE'),

(-1999910,'Help $N! I\'m under attack!',0,0,0,0,'example_escort SAY_AGGRO1'),
(-1999911,'Die scum!',0,0,0,0,'example_escort SAY_AGGRO2'),
(-1999912,'Hmm a nice day for a walk alright',0,0,0,0,'example_escort SAY_WP_1'),
(-1999913,'Wild Felboar attack!',0,0,0,0,'example_escort SAY_WP_2'),
(-1999914,'Time for me to go! See ya around $N!',0,0,0,3,'example_escort SAY_WP_3'),
(-1999915,'Bye Bye!',0,0,0,3,'example_escort SAY_WP_4'),
(-1999916,'How dare you leave me like that! I hate you! =*(',0,3,0,0,'example_escort SAY_DEATH_1'),
(-1999917,'...no...how could you let me die $N',0,0,0,0,'example_escort SAY_DEATH_2'),
(-1999918,'ugh...',0,0,0,0,'example_escort SAY_DEATH_3'),
(-1999919,'Taste death!',0,0,0,0,'example_escort SAY_SPELL'),
(-1999920,'Fireworks!',0,0,0,0,'example_escort SAY_RAND_1'),
(-1999921,'Hmm, I think I could use a buff.',0,0,0,0,'example_escort SAY_RAND_2'),

(-1999922,'Normal select, guess you\'re not interested.',0,0,0,0,'example_gossip_codebox SAY_NOT_INTERESTED'),
(-1999923,'Wrong!',0,0,0,0,'example_gossip_codebox SAY_WRONG'),
(-1999924,'You\'re right, you are allowed to see my inner secrets.',0,0,0,0,'example_gossip_codebox SAY_CORRECT'),

(-1999925,'Hi!',0,0,0,0,'example_areatrigger SAY_HI');

--
-- Below just for beautiful view in table, run at own desire
--

-- ALTER TABLE `script_texts` ORDER BY `entry` desc;


--
-- Below contains all waypoints used by escortAI scripts
-- Entry is entry == creature_template.entry
--

DELETE FROM script_waypoint WHERE entry=467;
REPLACE INTO script_waypoint VALUES
(467, 0, -10508.40, 1068.00, 55.21, 0, ''),
(467, 1, -10518.30, 1074.84, 53.96, 0, ''),
(467, 2, -10534.82, 1081.92, 49.88, 0, ''),
(467, 3, -10546.51, 1084.88, 50.13, 0, ''),
(467, 4, -10555.29, 1084.45, 45.75, 0, ''),
(467, 5, -10566.57, 1083.53, 42.10, 0, ''),
(467, 6, -10575.83, 1082.34, 39.46, 0, ''),
(467, 7, -10585.67, 1081.08, 37.77, 0, ''),
(467, 8, -10600.08, 1078.19, 36.23, 0, ''),
(467, 9, -10608.69, 1076.08, 35.88, 0, ''),
(467, 10, -10621.26, 1073.00, 35.40, 0, ''),
(467, 11, -10638.12, 1060.18, 33.61, 0, ''),
(467, 12, -10655.87, 1038.99, 33.48, 0, ''),
(467, 13, -10664.68, 1030.54, 32.70, 0, ''),
(467, 14, -10708.68, 1033.86, 33.32, 0, ''),
(467, 15, -10754.43, 1017.93, 32.79, 0, ''),
(467, 16, -10802.26, 1018.01, 32.16, 0, ''),
(467, 17, -10832.60, 1009.04, 32.71, 0, ''),
(467, 18, -10866.56, 1006.51, 31.71, 0, ''),
(467, 19, -10879.98, 1005.10, 32.84, 0, ''),
(467, 20, -10892.45, 1001.32, 34.46, 0, ''),
(467, 21, -10906.14, 997.11, 36.15, 0, ''),
(467, 22, -10922.26, 1002.23, 35.74, 0, ''),
(467, 23, -10936.32, 1023.38, 36.52, 0, ''),
(467, 24, -10933.35, 1052.61, 35.85, 0, ''),
(467, 25, -10940.25, 1077.66, 36.49, 0, ''),
(467, 26, -10957.09, 1099.33, 36.83, 0, ''),
(467, 27, -10956.53, 1119.90, 36.73, 0, ''),
(467, 28, -10939.30, 1150.75, 37.42, 0, ''),
(467, 29, -10915.14, 1202.09, 36.55, 0, ''),
(467, 30, -10892.59, 1257.03, 33.37, 0, ''),
(467, 31, -10891.93, 1306.66, 35.45, 0, ''),
(467, 32, -10896.17, 1327.86, 37.77, 0, ''),
(467, 33, -10906.03, 1368.05, 40.91, 0, ''),
(467, 34, -10910.18, 1389.33, 42.62, 0, ''),
(467, 35, -10915.42, 1417.72, 42.93, 0, ''),
(467, 36, -10926.37, 1421.18, 43.04, 0, 'walk here and say'),
(467, 37, -10952.31, 1421.74, 43.40, 0, ''),
(467, 38, -10980.04, 1411.38, 42.79, 0, ''),
(467, 39, -11006.06, 1420.47, 43.26, 0, ''),
(467, 40, -11021.98, 1450.59, 43.09, 0, ''),
(467, 41, -11025.36, 1491.59, 43.15, 0, ''),
(467, 42, -11036.09, 1508.32, 43.28, 0, ''),
(467, 43, -11060.68, 1526.72, 43.19, 0, ''),
(467, 44, -11072.75, 1527.77, 43.20, 5000, 'say and quest credit');

DELETE FROM script_waypoint WHERE entry=1978;
REPLACE INTO script_waypoint VALUES
(1978, 0, 1406.32, 1083.10, 52.55, 0, ''),
(1978, 1, 1400.49, 1080.42, 52.50, 0, 'SAY_START_2'),
(1978, 2, 1388.48, 1083.10, 52.52, 0, ''),
(1978, 3, 1370.16, 1084.02, 52.30, 0, ''),
(1978, 4, 1359.02, 1080.85, 52.46, 0, ''),
(1978, 5, 1341.43, 1087.39, 52.69, 0, ''),
(1978, 6, 1321.93, 1090.51, 50.66, 0, ''),
(1978, 7, 1312.98, 1095.91, 47.49, 0, ''),
(1978, 8, 1301.09, 1102.94, 47.76, 0, ''),
(1978, 9, 1297.73, 1106.35, 50.18, 0, ''),
(1978, 10, 1295.49, 1124.32, 50.49, 0, ''),
(1978, 11, 1294.84, 1137.25, 51.75, 0, ''),
(1978, 12, 1292.89, 1158.99, 52.65, 0, ''),
(1978, 13, 1290.75, 1168.67, 52.56, 2000, 'quest complete SAY_END'),
(1978, 14, 1287.12, 1203.49, 52.66, 5000, 'SAY_RANE'),
(1978, 15, 1288.30, 1203.89, 52.68, 5000, 'SAY_RANE_REPLY'),
(1978, 16, 1288.30, 1203.89, 52.68, 5000, 'SAY_CHECK_NEXT'),
(1978, 17, 1290.72, 1207.44, 52.69, 0, ''),
(1978, 18, 1297.50, 1207.18, 53.74, 0, ''),
(1978, 19, 1301.32, 1220.90, 53.74, 0, ''),
(1978, 20, 1298.55, 1220.43, 53.74, 0, ''),
(1978, 21, 1297.38, 1212.87, 58.51, 0, ''),
(1978, 22, 1297.80, 1210.04, 58.51, 0, ''),
(1978, 23, 1305.01, 1206.10, 58.51, 0, ''),
(1978, 24, 1310.51, 1207.36, 58.51, 5000, 'SAY_QUINN'),
(1978, 25, 1312.59, 1207.21, 58.51, 5000, 'SAY_QUINN_REPLY'),
(1978, 26, 1312.59, 1207.21, 58.51, 30000, 'SAY_BYE');

DELETE FROM script_waypoint WHERE entry=2768;
REPLACE INTO script_waypoint VALUES
(2768, 0, -2077.73, -2091.17, 9.49, 0, ''),
(2768, 1, -2077.99, -2105.33, 13.24, 0, ''),
(2768, 2, -2074.60, -2109.67, 14.24, 0, ''),
(2768, 3, -2076.60, -2117.46, 16.67, 0, ''),
(2768, 4, -2073.51, -2123.46, 18.42, 2000, ''),
(2768, 5, -2073.51, -2123.46, 18.42, 4000, ''),
(2768, 6, -2066.60, -2131.85, 21.56, 0, ''),
(2768, 7, -2053.85, -2143.19, 20.31, 0, ''),
(2768, 8, -2043.49, -2153.73, 20.20, 10000, ''),
(2768, 9, -2043.49, -2153.73, 20.20, 20000, ''),
(2768, 10, -2043.49, -2153.73, 20.20, 10000, ''),
(2768, 11, -2043.49, -2153.73, 20.20, 2000, ''),
(2768, 12, -2053.85, -2143.19, 20.31, 0, ''),
(2768, 13, -2066.60, -2131.85, 21.56, 0, ''),
(2768, 14, -2073.51, -2123.46, 18.42, 0, ''),
(2768, 15, -2076.60, -2117.46, 16.67, 0, ''),
(2768, 16, -2074.60, -2109.67, 14.24, 0, ''),
(2768, 17, -2077.99, -2105.33, 13.24, 0, ''),
(2768, 18, -2077.73, -2091.17, 9.49, 0, ''),
(2768, 19, -2066.41, -2086.21, 8.97, 6000, ''),
(2768, 20, -2066.41, -2086.21, 8.97, 2000, '');

DELETE FROM script_waypoint WHERE entry=2917;
REPLACE INTO script_waypoint VALUES
(2917, 0, 4675.812500, 598.614563, 17.645658, 0, 'SAY_REM_START'),
(2917, 1, 4672.844238, 599.325378, 16.417622, 0, ''),
(2917, 2, 4663.449707, 607.430176, 10.494752, 0, ''),
(2917, 3, 4655.969238, 613.761353, 8.523270, 0, ''),
(2917, 4, 4640.804688, 623.999329, 8.377054, 0, ''),
(2917, 5, 4631.678711, 630.801086, 6.414999, 5000, 'SAY_REM_RAMP1_1'),
(2917, 6, 4633.533203, 632.476440, 6.509831, 0, 'ambush'),
(2917, 7, 4639.413574, 637.120789, 13.338119, 0, ''),
(2917, 8, 4642.352051, 637.668152, 13.437444, 0, ''),
(2917, 9, 4645.082031, 634.463989, 13.437208, 5000, 'SAY_REM_RAMP1_2'),
(2917, 10, 4642.345215, 637.584839, 13.435211, 0, ''),
(2917, 11, 4639.630859, 637.233765, 13.339752, 0, ''),
(2917, 12, 4633.363281, 632.462280, 6.488438, 0, ''),
(2917, 13, 4624.714844, 631.723511, 6.264030, 0, ''),
(2917, 14, 4623.525879, 629.718506, 6.201339, 5000, 'SAY_REM_BOOK'),
(2917, 15, 4623.452148, 630.369629, 6.218942, 0, 'SAY_REM_TENT1_1'),
(2917, 16, 4622.622070, 637.221558, 6.312845, 0, 'ambush'),
(2917, 17, 4619.755371, 637.386230, 6.312050, 5000, 'SAY_REM_TENT1_2'),
(2917, 18, 4620.027832, 637.367676, 6.312050, 0, ''),
(2917, 19, 4624.154785, 637.560303, 6.313898, 0, ''),
(2917, 20, 4622.967773, 634.016479, 6.294979, 0, ''),
(2917, 21, 4616.926758, 630.303284, 6.239193, 0, ''),
(2917, 22, 4614.546387, 616.983337, 5.687642, 0, ''),
(2917, 23, 4610.279297, 610.029419, 5.442539, 0, ''),
(2917, 24, 4601.149902, 604.111694, 2.054856, 0, ''),
(2917, 25, 4589.618164, 597.685730, 1.057147, 0, ''),
(2917, 26, 4577.588379, 592.145813, 1.120190, 0, 'SAY_REM_MOSS (?)'),
(2917, 27, 4569.848145, 592.177490, 1.260874, 5000, 'EMOTE_REM_MOSS (?)'),
(2917, 28, 4568.791992, 590.870911, 1.211338, 3000, 'SAY_REM_MOSS_PROGRESS (?)'),
(2917, 29, 4566.722656, 564.077881, 1.343084, 0, 'ambush'),
(2917, 30, 4568.269531, 551.958435, 5.004200, 0, ''),
(2917, 31, 4566.731934, 551.557861, 5.426314, 5000, 'SAY_REM_PROGRESS'),
(2917, 32, 4566.741699, 560.767639, 1.703257, 0, ''),
(2917, 33, 4573.916016, 582.566101, 0.749801, 0, ''),
(2917, 34, 4594.206055, 598.533020, 1.034056, 0, ''),
(2917, 35, 4601.194824, 604.283081, 2.060146, 0, ''),
(2917, 36, 4609.539551, 610.844727, 5.402220, 0, ''),
(2917, 37, 4624.800293, 618.076477, 5.851541, 0, ''),
(2917, 38, 4632.414063, 623.778442, 7.286243, 0, ''),
(2917, 39, 4645.915039, 621.983765, 8.579967, 0, ''),
(2917, 40, 4658.669922, 611.092651, 8.891747, 0, ''),
(2917, 41, 4671.924316, 599.752197, 16.01242, 5000, 'SAY_REM_REMEMBER'),
(2917, 42, 4676.976074, 600.649780, 17.82566, 5000, 'EMOTE_REM_END');

DELETE FROM script_waypoint WHERE entry=3439;
REPLACE INTO script_waypoint VALUES
(3439, 0, 1105.090332, -3101.254150, 82.706, 1000, 'SAY_STARTUP1'),
(3439, 1, 1103.204468, -3104.345215, 83.113, 1000, ''),
(3439, 2, 1107.815186, -3106.495361, 82.739, 1000, ''),
(3439, 3, 1104.733276, -3100.830811, 82.747, 1000, ''),
(3439, 4, 1103.242554, -3106.270020, 83.133, 1000, ''),
(3439, 5, 1112.807373, -3106.285400, 82.320, 1000, ''),
(3439, 6, 1112.826782, -3108.908691, 82.377, 1000, ''),
(3439, 7, 1108.053955, -3115.156738, 82.894, 0, ''),
(3439, 8, 1108.355591, -3104.365234, 82.377, 5000, ''),
(3439, 9, 1100.306763, -3097.539063, 83.150, 0, 'SAY_STARTUP2'),
(3439, 10, 1100.562378, -3082.721924, 82.768, 0, ''),
(3439, 11, 1097.512939, -3069.226563, 82.206, 0, ''),
(3439, 12, 1092.964966, -3053.114746, 82.351, 0, ''),
(3439, 13, 1094.010986, -3036.958496, 82.888, 0, ''),
(3439, 14, 1095.623901, -3025.760254, 83.392, 0, ''),
(3439, 15, 1107.656494, -3013.530518, 85.653, 0, ''),
(3439, 16, 1119.647705, -3006.928223, 87.019, 0, ''),
(3439, 17, 1129.991211, -3002.410645, 91.232, 7000, 'SAY_MERCENARY'),
(3439, 18, 1133.328735, -2997.710693, 91.675, 1000, 'SAY_PROGRESS_1'),
(3439, 19, 1131.799316, -2987.948242, 91.976, 1000, ''),
(3439, 20, 1122.028687, -2993.397461, 91.536, 0, ''),
(3439, 21, 1116.614868, -2981.916748, 92.103, 0, ''),
(3439, 22, 1102.239136, -2994.245117, 92.074, 0, ''),
(3439, 23, 1096.366211, -2978.306885, 91.873, 0, ''),
(3439, 24, 1091.971558, -2985.919189, 91.730, 40000, 'SAY_PROGRESS_2');

DELETE FROM script_waypoint WHERE entry=3465;
REPLACE INTO script_waypoint VALUES
(3465, 0, -2095.840820, -3650.001221, 61.716, 0, ''),
(3465, 1, -2100.193604, -3613.949219, 61.604, 0, ''),
(3465, 2, -2098.549561, -3601.557129, 59.154, 0, ''),
(3465, 3, -2093.796387, -3595.234375, 56.658, 0, ''),
(3465, 4, -2072.575928, -3578.827637, 48.844, 0, ''),
(3465, 5, -2023.858398, -3568.146240, 24.636, 0, ''),
(3465, 6, -2013.576416, -3571.499756, 22.203, 0, ''),
(3465, 7, -2009.813721, -3580.547852, 21.791, 0, ''),
(3465, 8, -2015.296021, -3597.387695, 21.760, 0, ''),
(3465, 9, -2020.677368, -3610.296143, 21.759, 0, ''),
(3465, 10, -2019.990845, -3640.155273, 21.759, 0, ''),
(3465, 11, -2016.110596, -3664.133301, 21.758, 0, ''),
(3465, 12, -1999.397095, -3679.435059, 21.316, 0, ''),
(3465, 13, -1987.455811, -3688.309326, 18.495, 0, ''),
(3465, 14, -1973.966553, -3687.666748, 14.996, 0, ''),
(3465, 15, -1949.163940, -3678.054932, 11.293, 0, ''),
(3465, 16, -1934.091187, -3682.859619, 9.897, 30000, 'SAY_GIL_AT_LAST'),
(3465, 17, -1935.383911, -3682.322021, 10.029, 1500, 'SAY_GIL_PROCEED'),
(3465, 18, -1879.039185, -3699.498047, 6.582, 7500, 'SAY_GIL_FREEBOOTERS'),
(3465, 19, -1852.728149, -3703.778809, 6.875, 0, ''),
(3465, 20, -1812.989990, -3718.500732, 10.572, 0, ''),
(3465, 21, -1788.171265, -3722.867188, 9.663, 0, ''),
(3465, 22, -1767.206665, -3739.923096, 10.082, 0, ''),
(3465, 23, -1750.194580, -3747.392090, 10.390, 0, ''),
(3465, 24, -1729.335571, -3776.665527, 11.779, 0, ''),
(3465, 25, -1715.997925, -3802.404541, 12.618, 0, ''),
(3465, 26, -1690.711548, -3829.262451, 13.905, 0, ''),
(3465, 27, -1674.700684, -3842.398682, 13.872, 0, ''),
(3465, 28, -1632.726318, -3846.109619, 14.401, 0, ''),
(3465, 29, -1592.734497, -3842.225342, 14.981, 0, ''),
(3465, 30, -1561.614746, -3839.320801, 19.118, 0, ''),
(3465, 31, -1544.567627, -3834.393311, 18.761, 0, ''),
(3465, 32, -1512.514404, -3831.715820, 22.914, 0, ''),
(3465, 33, -1486.889771, -3836.639893, 23.964, 0, ''),
(3465, 34, -1434.193604, -3852.702881, 18.843, 0, ''),
(3465, 35, -1405.794678, -3854.488037, 17.276, 0, ''),
(3465, 36, -1366.592041, -3852.383789, 19.273, 0, ''),
(3465, 37, -1337.360962, -3837.827148, 17.352, 2000, 'SAY_GIL_ALMOST'),
(3465, 38, -1299.744507, -3810.691406, 20.801, 0, ''),
(3465, 39, -1277.144409, -3782.785156, 25.918, 0, ''),
(3465, 40, -1263.686768, -3781.251953, 26.447, 0, ''),
(3465, 41, -1243.674438, -3786.328125, 25.281, 0, ''),
(3465, 42, -1221.875488, -3784.124512, 24.051, 0, ''),
(3465, 43, -1204.011230, -3775.943848, 24.437, 0, ''),
(3465, 44, -1181.706787, -3768.934082, 23.368, 0, ''),
(3465, 45, -1156.913818, -3751.559326, 21.074, 0, ''),
(3465, 46, -1138.830688, -3741.809326, 17.843, 0, ''),
(3465, 47, -1080.101196, -3738.780029, 19.805, 0, 'SAY_GIL_SWEET'),
(3465, 48, -1069.065186, -3735.006348, 19.302, 0, ''),
(3465, 49, -1061.941040, -3724.062256, 21.086, 0, ''),
(3465, 50, -1053.593262, -3697.608643, 27.320, 0, ''),
(3465, 51, -1044.110474, -3690.133301, 24.856, 0, ''),
(3465, 52, -1040.260986, -3690.739014, 25.342, 0, ''),
(3465, 53, -1028.146606, -3688.718750, 23.843, 7500, 'SAY_GIL_FREED');

DELETE FROM script_waypoint WHERE entry=3849;
REPLACE INTO script_waypoint VALUES
(3849, 0, -250.923, 2116.26, 81.179, 0, 'SAY_FREE_AD'),
(3849, 1, -255.049, 2119.39, 81.179, 0, ''),
(3849, 2, -254.129, 2123.45, 81.179, 0, ''),
(3849, 3, -253.898, 2130.87, 81.179, 0, ''),
(3849, 4, -249.889, 2142.31, 86.972, 0, ''),
(3849, 5, -248.205, 2144.02, 87.013, 0, ''),
(3849, 6, -240.553, 2140.55, 87.012, 0, ''),
(3849, 7, -237.514, 2142.07, 87.012, 0, ''),
(3849, 8, -235.638, 2149.23, 90.587, 0, ''),
(3849, 9, -237.188, 2151.95, 90.624, 0, ''),
(3849, 10, -241.162, 2153.65, 90.624, 0, 'SAY_OPEN_DOOR_AD'),
(3849, 11, -241.13, 2154.56, 90.624, 2000, 'SAY_UNLOCK_DOOR_AD'),
(3849, 12, -241.13, 2154.56, 90.624, 3000, ''),
(3849, 13, -241.13, 2154.56, 90.624, 5000, 'SAY_POST1_DOOR_AD'),
(3849, 14, -241.13, 2154.56, 90.624, 0, 'SAY_POST2_DOOR_AD'),
(3849, 15, -208.764, 2141.6, 90.6257, 0, ''),
(3849, 16, -206.441, 2143.51, 90.4287, 0, ''),
(3849, 17, -203.715, 2145.85, 88.7052, 0, ''),
(3849, 18, -199.199, 2144.88, 86.501, 0, ''),
(3849, 19, -195.798, 2143.58, 86.501, 0, ''),
(3849, 20, -190.029, 2141.38, 83.2712, 0, ''),
(3849, 21, -189.353, 2138.65, 83.1102, 0, ''),
(3849, 22, -190.304, 2135.73, 81.5288, 0, ''),
(3849, 23, -207.325, 2112.43, 81.0548, 0, ''),
(3849, 24, -208.754, 2109.9, 81.0527, 0, ''),
(3849, 25, -206.248, 2108.62, 81.0555, 0, ''),
(3849, 26, -202.017, 2106.64, 78.6836, 0, ''),
(3849, 27, -200.928, 2104.49, 78.5569, 0, ''),
(3849, 28, -201.845, 2101.17, 76.9256, 0, ''),
(3849, 29, -202.844, 2100.11, 76.8911, 0, ''),
(3849, 30, -213.326, 2105.83, 76.8925, 0, ''),
(3849, 31, -226.993, 2111.47, 76.8892, 0, ''),
(3849, 32, -227.955, 2112.34, 76.8895, 0, ''),
(3849, 33, -230.05, 2106.64, 76.8895, 0, '');

DELETE FROM script_waypoint WHERE entry=3850;
REPLACE INTO script_waypoint VALUES
(3850, 0, -241.817, 2122.9, 81.179, 0, 'SAY_FREE_AS'),
(3850, 1, -247.139, 2124.89, 81.179, 0, ''),
(3850, 2, -253.179, 2127.41, 81.179, 0, ''),
(3850, 3, -253.898, 2130.87, 81.179, 0, ''),
(3850, 4, -249.889, 2142.31, 86.972, 0, ''),
(3850, 5, -248.205, 2144.02, 87.013, 0, ''),
(3850, 6, -240.553, 2140.55, 87.012, 0, ''),
(3850, 7, -237.514, 2142.07, 87.012, 0, ''),
(3850, 8, -235.638, 2149.23, 90.587, 0, ''),
(3850, 9, -237.188, 2151.95, 90.624, 0, ''),
(3850, 10, -241.162, 2153.65, 90.624, 0, 'SAY_OPEN_DOOR_AS'),
(3850, 11, -241.13, 2154.56, 90.624, 5000, 'cast'),
(3850, 12, -241.13, 2154.56, 90.624, 0, ''),
(3850, 13, -241.13, 2154.56, 90.624, 5000, 'SAY_POST_DOOR_AS'),
(3850, 14, -241.13, 2154.56, 90.624, 2500, 'cast'),
(3850, 15, -241.13, 2154.56, 90.624, 0, 'SAY_VANISH_AS');

DELETE FROM script_waypoint WHERE entry=4500;
REPLACE INTO script_waypoint VALUES
(4500, 0, -3125.597168, -2885.673828, 34.731, 2500, ''),
(4500, 1, -3120.257080, -2877.830322, 34.917, 0, ''),
(4500, 2, -3116.487305, -2850.670410, 34.869, 0, ''),
(4500, 3, -3093.474854, -2819.189697, 34.432, 0, ''),
(4500, 4, -3104.726318, -2802.020996, 33.954, 0, ''),
(4500, 5, -3105.906006, -2780.234375, 34.469, 0, ''),
(4500, 6, -3116.080811, -2757.902588, 34.734, 0, ''),
(4500, 7, -3125.234375, -2733.960205, 33.189, 0, '');

DELETE FROM script_waypoint WHERE entry=4962;
REPLACE INTO script_waypoint VALUES
(4962, 0, -3804.438965, -828.048035, 10.093068, 0, ''),
(4962, 1, -3803.934326, -835.772400, 10.077722, 0, ''),
(4962, 2, -3792.629150, -835.670898,  9.655657, 0, ''),
(4962, 3, -3772.433838, -835.345947, 10.868981, 0, ''),
(4962, 4, -3765.937256, -840.128601, 10.885593, 0, ''),
(4962, 5, -3738.633789, -830.997498, 11.057384, 0, ''),
(4962, 6, -3690.224121, -862.261597,  9.960449, 0, '');

DELETE FROM script_waypoint WHERE entry=4983;
REPLACE INTO script_waypoint VALUES
(4983, 0, -3322.649414, -3124.631836, 33.842, 0, ''),
(4983, 1, -3326.336670, -3126.833496, 34.426, 0, ''),
(4983, 2, -3336.984131, -3129.611816, 30.692, 0, ''),
(4983, 3, -3342.598389, -3132.146729, 30.422, 0, ''),
(4983, 4, -3355.827881, -3140.947998, 29.534, 0, ''),
(4983, 5, -3365.828125, -3144.284180, 35.176, 0, ''),
(4983, 6, -3368.904541, -3147.265381, 36.091, 0, ''),
(4983, 7, -3369.355957, -3169.828857, 36.325, 0, ''),
(4983, 8, -3371.443359, -3183.905029, 33.454, 0, ''),
(4983, 9, -3373.824951, -3190.861084, 34.717, 5000, 'SAY_OGR_SPOT'),
(4983, 10, -3368.529785, -3198.210205, 34.926, 0, 'SAY_OGR_RET_WHAT'),
(4983, 11, -3366.265625, -3210.867676, 33.733, 5000, 'pause'),
(4983, 12, -3368.529785, -3198.210205, 34.926, 0, ''),
(4983, 13, -3373.824951, -3190.861084, 34.717, 0, ''),
(4983, 14, -3371.443359, -3183.905029, 33.454, 0, ''),
(4983, 15, -3369.355957, -3169.828857, 36.325, 0, ''),
(4983, 16, -3368.904541, -3147.265381, 36.091, 0, ''),
(4983, 17, -3365.828125, -3144.284180, 35.176, 0, ''),
(4983, 18, -3355.827881, -3140.947998, 29.534, 0, ''),
(4983, 19, -3342.598389, -3132.146729, 30.422, 0, ''),
(4983, 20, -3336.984131, -3129.611816, 30.692, 0, ''),
(4983, 21, -3326.336670, -3126.833496, 34.426, 0, ''),
(4983, 22, -3322.649414, -3124.631836, 33.842, 0, '');

DELETE FROM script_waypoint WHERE entry = 5391;
REPLACE INTO script_waypoint VALUES
(5391, 0, -9901.12, -3727.29, 22.11, 3000, ''),
(5391, 1, -9909.27, -3727.81, 23.25, 0, ''),
(5391, 2, -9935.25, -3729.02, 22.11, 0, ''),
(5391, 3, -9945.83, -3719.34, 21.68, 0, ''),
(5391, 4, -9963.41, -3710.18, 21.71, 0, ''),
(5391, 5, -9972.75, -3690.13, 21.68, 0, ''),
(5391, 6, -9989.70, -3669.67, 21.67, 0, ''),
(5391, 7, -9989.21, -3647.76, 23.00, 0, ''),
(5391, 8, -9992.27, -3633.74, 21.67, 0, ''),
(5391, 9,-10002.32, -3611.67, 22.26, 0, ''),
(5391,10, -9999.25, -3586.33, 21.85, 0, ''),
(5391,11,-10006.53, -3571.99, 21.67, 0, ''),
(5391,12,-10014.30, -3545.24, 21.67, 0, ''),
(5391,13,-10018.91, -3525.03, 21.68, 0, ''),
(5391,14,-10030.22, -3514.77, 21.67, 0, ''),
(5391,15,-10045.11, -3501.49, 21.67, 0, ''),
(5391,16,-10052.91, -3479.13, 21.67, 0, ''),
(5391,17,-10060.68, -3460.31, 21.67, 0, ''),
(5391,18,-10074.68, -3436.85, 20.97, 0, ''),
(5391,19,-10074.68, -3436.85, 20.97, 0, ''),
(5391,20,-10072.86, -3408.92, 20.43, 15000, ''),
(5391,21,-10108.01, -3406.05, 22.06, 0, '');

DELETE FROM script_waypoint WHERE entry=6182;
REPLACE INTO script_waypoint VALUES
(6182, 0, -11480.684570, 1545.091187, 49.898571, 0, ''),
(6182, 1, -11466.825195, 1530.151733, 50.263611, 0, ''),
(6182, 2, -11465.213867, 1528.343750, 50.954369, 0, 'entrance hut'),
(6182, 3, -11462.990234, 1525.235596, 50.937702, 0, ''),
(6182, 4, -11461.000000, 1526.614014, 50.937702, 5000, 'pick up rifle'),
(6182, 5, -11462.990234, 1525.235596, 50.937702, 0, ''),
(6182, 6, -11465.213867, 1528.343750, 50.954369, 0, ''),
(6182, 7, -11468.353516, 1535.075562, 50.400948, 15000, 'hold, prepare for wave1'),
(6182, 8, -11468.353516, 1535.075562, 50.400948, 15000, 'hold, prepare for wave2'),
(6182, 9, -11468.353516, 1535.075562, 50.400948, 10000, 'hold, prepare for wave3'),
(6182, 10, -11467.898438, 1532.459595, 50.348885, 0, 'we are done'),
(6182, 11, -11466.064453, 1529.855225, 50.209351, 0, ''),
(6182, 12, -11462.990234, 1525.235596, 50.937702, 0, ''),
(6182, 13, -11461.000000, 1526.614014, 50.937702, 5000, 'deliver rifle'),
(6182, 14, -11462.990234, 1525.235596, 50.937702, 0, ''),
(6182, 15, -11465.213867, 1528.343750, 50.954369, 0, ''),
(6182, 16, -11470.260742, 1537.276733, 50.378487, 0, ''),
(6182, 17, -11475.581055, 1548.678833, 50.184380, 0, 'complete quest'),
(6182, 18, -11482.299805, 1557.410034, 48.624519, 0, '');

DELETE FROM script_waypoint WHERE entry=6575;
REPLACE INTO script_waypoint VALUES
(6575, 0, 1945.81, -431.54, 16.36, 0, ''),
(6575, 1, 1946.21, -436.41, 16.36, 0, ''),
(6575, 2, 1950.01, -444.11, 14.63, 0, ''),
(6575, 3, 1956.08, -449.34, 13.12, 0, ''),
(6575, 4, 1966.59, -450.55, 11.27, 0, ''),
(6575, 5, 1976.09, -447.51, 11.27, 0, ''),
(6575, 6, 1983.42, -435.85, 11.27, 0, ''),
(6575, 7, 1978.17, -428.81, 11.27, 0, ''),
(6575, 8, 1973.97, -422.08, 9.04, 0, ''),
(6575, 9, 1963.84, -418.90, 6.17, 0, ''),
(6575, 10, 1961.22, -422.74, 6.17, 0, ''),
(6575, 11, 1964.80, -431.26, 6.17, 300000, '');

DELETE FROM script_waypoint WHERE entry=7780;
REPLACE INTO script_waypoint VALUES
(7780, 0, 261.058868, -2757.876221, 122.553, 0, ''),
(7780, 1, 259.812195, -2758.249023, 122.555, 0, 'SAY_RIN_FREE'),
(7780, 2, 253.823441, -2758.619141, 122.562, 0, ''),
(7780, 3, 241.394791, -2769.754883, 123.309, 0, ''),
(7780, 4, 218.915588, -2783.397461, 123.355, 0, ''),
(7780, 5, 209.088196, -2789.676270, 122.001, 0, ''),
(7780, 6, 204.453568, -2792.205811, 120.620, 0, ''),
(7780, 7, 182.012604, -2809.995361, 113.887, 0, 'summon'),
(7780, 8, 164.411591, -2825.162842, 107.779, 0, ''),
(7780, 9, 149.727600, -2833.704346, 106.224, 0, ''),
(7780, 10, 142.448074, -2838.807373, 109.665, 0, ''),
(7780, 11, 133.274963, -2845.135254, 112.606, 0, ''),
(7780, 12, 111.247459, -2861.065674, 116.305, 0, ''),
(7780, 13, 96.104073, -2874.886230, 114.397, 0, 'summon'),
(7780, 14, 73.369942, -2881.184570, 117.666, 0, ''),
(7780, 15, 58.579178, -2889.151611, 116.253, 0, ''),
(7780, 16, 33.214249, -2906.343994, 115.083, 0, ''),
(7780, 17, 19.586519, -2908.712402, 117.276, 7500, 'SAY_RIN_COMPLETE'),
(7780, 18, 10.282522, -2911.607422, 118.394, 0, ''),
(7780, 19, -37.580383, -2942.730225, 117.145, 0, ''),
(7780, 20, -68.599411, -2953.694824, 116.685, 0, ''),
(7780, 21, -102.054253, -2956.965576, 116.677, 0, ''),
(7780, 22, -135.993637, -2955.743652, 115.788, 0, ''),
(7780, 23, -171.561600, -2951.417480, 115.451, 0, '');

DELETE FROM script_waypoint WHERE entry=7784;
REPLACE INTO script_waypoint VALUES
(7784, 0, -8845.65, -4373.98, 43.87, 5000, 'SAY_START'),
(7784, 1, -8840.79, -4373.73, 44.24, 0, ''),
(7784, 2, -8837.43, -4373.56, 45.60, 0, ''),
(7784, 3, -8832.74, -4373.32, 45.68, 0, ''),
(7784, 4, -8829.37, -4373.14, 44.33, 0, ''),
(7784, 5, -8817.38, -4372.41, 35.58, 0, ''),
(7784, 6, -8803.47, -4371.60, 30.34, 0, ''),
(7784, 7, -8795.10, -4365.61, 26.08, 0, ''),
(7784, 8, -8766.78, -4367.13, 25.15, 0, ''),
(7784, 9, -8755.63, -4367.54, 24.63, 0, ''),
(7784, 10, -8754.42, -4365.59, 24.15, 0, ''),
(7784, 11, -8728.82, -4353.13, 20.90, 0, ''),
(7784, 12, -8706.60, -4356.55, 17.93, 0, ''),
(7784, 13, -8679.00, -4380.23, 12.64, 0, ''),
(7784, 14, -8642.96, -4393.82, 12.52, 0, ''),
(7784, 15, -8611.19, -4399.11, 9.55, 0, ''),
(7784, 16, -8554.87, -4409.32, 13.05, 0, ''),
(7784, 17, -8531.64, -4411.96, 11.20, 0, ''),
(7784, 18, -8510.40, -4414.38, 12.84, 0, ''),
(7784, 19, -8476.92, -4418.34, 9.71, 0, ''),
(7784, 20, -8435.89, -4426.74, 9.67, 0, ''),
(7784, 21, -8381.89, -4446.40, 10.23, 0, ''),
(7784, 22, -8351.15, -4447.79, 9.99, 5000, 'first ambush SAY_AMBUSH'),
(7784, 23, -8324.18, -4445.05, 9.71, 0, ''),
(7784, 24, -8138.94, -4384.78, 10.92, 0, ''),
(7784, 25, -8036.87, -4443.38, 9.65, 0, ''),
(7784, 26, -7780.92, -4761.81, 9.50, 0, ''),
(7784, 27, -7587.67, -4765.01, 8.96, 0, ''),
(7784, 28, -7497.65, -4792.86, 10.01, 0, 'second ambush SAY_AMBUSH'),
(7784, 29, -7391.54, -4774.26, 12.44, 0, ''),
(7784, 30, -7308.42, -4739.87, 12.65, 0, ''),
(7784, 31, -7016.11, -4751.12, 10.06, 0, ''),
(7784, 32, -6985.52, -4777.41, 10.26, 0, ''),
(7784, 33, -6953.02, -4786.00, 6.32, 0, ''),
(7784, 34, -6940.37, -4831.03, 0.67, 10000, 'quest complete SAY_END');

DELETE FROM script_waypoint WHERE entry=7806;
REPLACE INTO script_waypoint VALUES
(7806, 0, 495.404358, -3478.350830, 114.837, 0, ''),
(7806, 1, 492.704742, -3486.112549, 108.627, 0, ''),
(7806, 2, 487.249756, -3485.764404, 107.890, 0, ''),
(7806, 3, 476.851959, -3489.875977, 99.985, 0, ''),
(7806, 4, 467.212402, -3493.355469, 99.819, 0, ''),
(7806, 5, 460.017029, -3496.984375, 104.481, 0, ''),
(7806, 6, 439.619446, -3500.730225, 110.534, 0, ''),
(7806, 7, 428.326385, -3495.874756, 118.662, 0, ''),
(7806, 8, 424.664032, -3489.381592, 121.999, 0, ''),
(7806, 9, 424.137299, -3470.952637, 124.333, 0, ''),
(7806, 10, 421.791107, -3449.242676, 119.126, 0, ''),
(7806, 11, 404.247070, -3429.376953, 117.644, 0, ''),
(7806, 12, 335.465271, -3430.717773, 116.456, 0, ''),
(7806, 13, 317.160126, -3426.708984, 116.226, 0, ''),
(7806, 14, 331.180115, -3464.002197, 117.143, 0, ''),
(7806, 15, 336.393616, -3501.877441, 118.201, 0, ''),
(7806, 16, 337.251312, -3544.764648, 117.284, 0, ''),
(7806, 17, 337.748932, -3565.415527, 116.797, 0, ''),
(7806, 18, 336.010925, -3597.363037, 118.225, 0, ''),
(7806, 19, 324.619141, -3622.884033, 119.811, 0, ''),
(7806, 20, 308.027466, -3648.600098, 123.047, 0, ''),
(7806, 21, 276.325409, -3685.738525, 128.356, 0, ''),
(7806, 22, 239.981064, -3717.330811, 131.874, 0, ''),
(7806, 23, 224.950974, -3730.169678, 132.125, 0, ''),
(7806, 24, 198.707870, -3768.292725, 129.420, 0, ''),
(7806, 25, 183.758316, -3791.068848, 128.045, 0, ''),
(7806, 26, 178.110657, -3801.575439, 128.370, 3000, 'SAY_OOX_DANGER'),
(7806, 27, 162.215225, -3827.014160, 129.424, 0, ''),
(7806, 28, 141.664734, -3864.519287, 131.419, 0, ''),
(7806, 29, 135.301697, -3880.089111, 132.120, 0, ''),
(7806, 30, 122.461151, -3910.071533, 135.605, 0, ''),
(7806, 31, 103.376175, -3937.725098, 137.342, 0, ''),
(7806, 32, 81.414474, -3958.614258, 138.469, 0, ''),
(7806, 33, 55.378139, -3982.004639, 136.520, 0, ''),
(7806, 34, 13.983131, -4013.952881, 126.903, 0, ''),
(7806, 35, -21.658007, -4048.713623, 118.068, 0, ''),
(7806, 36, -52.443058, -4081.209717, 117.477, 0, ''),
(7806, 37, -102.710854, -4116.760742, 118.666, 0, ''),
(7806, 38, -92.996193, -4135.847168, 119.310, 0, ''),
(7806, 39, -86.391273, -4153.331055, 122.502, 0, ''),
(7806, 40, -85.746086, -4163.600586, 121.892, 0, ''),
(7806, 41, -90.544006, -4183.577637, 117.587, 0, ''),
(7806, 42, -110.223564, -4205.861328, 121.878, 0, ''),
(7806, 43, -115.257607, -4211.962402, 121.878, 3000, 'SAY_OOX_DANGER'),
(7806, 44, -128.594650, -4233.343750, 117.766, 0, ''),
(7806, 45, -135.358917, -4258.120117, 117.562, 0, ''),
(7806, 46, -156.832428, -4258.961914, 120.059, 0, ''),
(7806, 47, -167.119873, -4274.102539, 117.062, 0, ''),
(7806, 48, -176.291016, -4287.594727, 118.721, 0, ''),
(7806, 49, -196.992981, -4315.815430, 117.588, 0, ''),
(7806, 50, -209.329300, -4331.671387, 115.142, 0, ''),
(7806, 51, -232.292236, -4356.015625, 108.543, 0, ''),
(7806, 52, -232.159683, -4370.904297, 102.815, 0, ''),
(7806, 53, -210.271133, -4389.896973, 84.167, 0, ''),
(7806, 54, -187.940186, -4407.532715, 70.987, 0, ''),
(7806, 55, -181.353577, -4418.771973, 64.778, 0, ''),
(7806, 56, -170.529861, -4440.438965, 58.943, 0, ''),
(7806, 57, -141.428543, -4465.323242, 45.963, 0, ''),
(7806, 58, -120.993629, -4487.088379, 32.075, 0, ''),
(7806, 59, -104.134621, -4501.837402, 25.051, 0, ''),
(7806, 60, -84.154663, -4529.436523, 11.952, 0, ''),
(7806, 61, -88.698898, -4544.626465, 9.055, 0, ''),
(7806, 62, -100.603447, -4575.034180, 11.388, 0, ''),
(7806, 63, -106.908669, -4600.407715, 11.046, 0, ''),
(7806, 64, -106.831703, -4620.503418, 11.057, 3000, 'SAY_OOX_COMPLETE');

DELETE FROM script_waypoint WHERE entry=7807;
REPLACE INTO script_waypoint VALUES
(7807, 0, -4943.74, 1715.74, 62.74, 0, 'SAY_START'),
(7807, 1, -4944.93, 1706.66, 63.16, 0, ''),
(7807, 2, -4942.82, 1690.22, 64.25, 0, ''),
(7807, 3, -4946.47, 1669.62, 63.84, 0, ''),
(7807, 4, -4955.93, 1651.88, 63.00, 0, ''),
(7807, 5, -4967.58, 1643.86, 64.31, 0, ''),
(7807, 6, -4978.12, 1607.90, 64.30, 0, ''),
(7807, 7, -4975.38, 1596.16, 64.70, 0, ''),
(7807, 8, -4972.82, 1581.89, 61.75, 0, ''),
(7807, 9, -4958.65, 1581.05, 61.81, 0, ''),
(7807, 10, -4936.72, 1594.89, 65.96, 0, ''),
(7807, 11, -4885.69, 1598.10, 67.45, 4000, 'first ambush SAY_AMBUSH'),
(7807, 12, -4874.20, 1601.73, 68.54, 0, ''),
(7807, 13, -4816.64, 1594.47, 78.20, 0, ''),
(7807, 14, -4802.20, 1571.92, 87.01, 0, ''),
(7807, 15, -4746.40, 1576.11, 84.59, 0, ''),
(7807, 16, -4739.72, 1707.16, 94.04, 0, ''),
(7807, 17, -4674.03, 1840.44, 89.17, 0, ''),
(7807, 18, -4667.94, 1864.11, 85.18, 0, ''),
(7807, 19, -4668.08, 1886.39, 81.14, 0, ''),
(7807, 20, -4679.43, 1932.32, 73.76, 0, ''),
(7807, 21, -4674.17, 1946.66, 70.83, 5000, 'second ambush SAY_AMBUSH'),
(7807, 22, -4643.94, 1967.45, 65.27, 0, ''),
(7807, 23, -4595.60, 2010.75, 52.10, 0, ''),
(7807, 24, -4562.65, 2029.28, 45.41, 0, ''),
(7807, 25, -4538.56, 2032.65, 45.28, 0, ''),
(7807, 26, -4531.96, 2034.15, 48.34, 0, ''),
(7807, 27, -4507.75, 2039.32, 51.57, 0, ''),
(7807, 28, -4482.74, 2045.67, 48.15, 0, ''),
(7807, 29, -4460.87, 2051.54, 45.55, 0, ''),
(7807, 30, -4449.97, 2060.03, 45.51, 10000, 'third ambush SAY_AMBUSH'),
(7807, 31, -4448.99, 2079.05, 44.64, 0, ''),
(7807, 32, -4436.64, 2134.48, 28.83, 0, ''),
(7807, 33, -4429.25, 2170.20, 15.44, 0, ''),
(7807, 34, -4424.83, 2186.11, 11.48, 0, ''),
(7807, 35, -4416.71, 2209.76, 7.36, 0, ''),
(7807, 36, -4405.25, 2231.77, 5.94, 0, ''),
(7807, 37, -4377.61, 2265.45, 06.71, 15000, 'complete quest SAY_END');

DELETE FROM script_waypoint WHERE entry=9503;
REPLACE INTO script_waypoint VALUES
(9503, 0, 883.294861, -188.926300, -43.703655, 0,''),
(9503, 1, 872.763550, -185.605621, -43.703655, 5000,'b1'),
(9503, 2, 867.923401, -188.006393, -43.703655, 5000,'b2'),
(9503, 3, 863.295898, -190.795212, -43.703655, 5000,'b3'),
(9503, 4, 856.139587, -194.652756, -43.703655, 5000,'b4'),
(9503, 5, 851.878906, -196.928131, -43.703655, 15000,'b5'),
(9503, 6, 877.035217, -187.048080, -43.703655, 0,''),
(9503, 7, 891.198000, -197.924000, -43.620400, 0,'home');

DELETE FROM script_waypoint WHERE entry=9623;
REPLACE INTO script_waypoint VALUES
(9623, 0, -6383.070801, -1964.368896, -258.709, 0, 'SAY_AME_START'),
(9623, 1, -6393.649414, -1949.572266, -261.449, 0, ''),
(9623, 2, -6397.846680, -1931.099609, -263.366, 0, ''),
(9623, 3, -6397.501953, -1921.470703, -263.876, 0, ''),
(9623, 4, -6389.630371, -1909.995361, -259.601, 0, ''),
(9623, 5, -6380.065430, -1905.452881, -255.858, 0, ''),
(9623, 6, -6373.437988, -1900.275024, -254.774, 0, ''),
(9623, 7, -6372.868652, -1893.500854, -255.678, 0, ''),
(9623, 8, -6379.730469, -1877.627808, -259.654, 0, ''),
(9623, 9, -6380.264160, -1871.139648, -260.617, 0, ''),
(9623, 10, -6373.830566, -1855.620361, -259.566, 0, ''),
(9623, 11, -6368.824707, -1847.770508, -259.246, 0, ''),
(9623, 12, -6370.902832, -1835.038940, -260.212, 0, ''),
(9623, 13, -6376.591309, -1821.592285, -260.856, 0, ''),
(9623, 14, -6381.931152, -1810.434326, -266.180, 0, ''),
(9623, 15, -6396.713867, -1807.123535, -269.329, 0, ''),
(9623, 16, -6400.266602, -1795.053589, -269.744, 0, ''),
(9623, 17, -6402.675781, -1747.514648, -272.961, 0, ''),
(9623, 18, -6396.997559, -1710.052979, -273.719, 0, ''),
(9623, 19, -6388.105957, -1676.328125, -272.133, 5000, 'SAY_AME_PROGRESS'),
(9623, 20, -6370.711914, -1638.638306, -272.031, 0, ''),
(9623, 21, -6366.709473, -1592.645996, -272.201, 0, ''),
(9623, 22, -6333.869629, -1534.598755, -270.493, 0, ''),
(9623, 23, -6305.362305, -1477.913330, -269.518, 0, ''),
(9623, 24, -6311.588867, -1419.017456, -267.622, 0, ''),
(9623, 25, -6330.014648, -1400.064331, -266.425, 0, ''),
(9623, 26, -6356.021973, -1392.607422, -267.123, 0, ''),
(9623, 27, -6370.859375, -1386.179321, -270.218, 0, ''),
(9623, 28, -6381.529785, -1369.780273, -272.110, 0, ''),
(9623, 29, -6405.381348, -1321.522827, -271.699, 0, ''),
(9623, 30, -6406.583496, -1307.574585, -271.802, 0, ''),
(9623, 31, -6386.325684, -1286.851074, -272.074, 0, ''),
(9623, 32, -6364.254883, -1264.706299, -269.075, 0, ''),
(9623, 33, -6343.636230, -1239.844360, -268.364, 0, ''),
(9623, 34, -6335.568848, -1202.449585, -271.515, 0, ''),
(9623, 35, -6325.625000, -1184.455322, -270.461, 0, ''),
(9623, 36, -6317.797363, -1177.668091, -269.792, 0, ''),
(9623, 37, -6303.024414, -1180.252686, -269.332, 0, 'SAY_AME_END'),
(9623, 38, -6301.975098, -1184.787842, -269.371, 1000, ''),
(9623, 39, -6297.575684, -1186.412964, -268.962, 5000, '');

DELETE FROM script_waypoint WHERE entry=10096;
REPLACE INTO script_waypoint VALUES
(10096, 0, 604.802673, -191.081985, -54.058590, 0,'ring'),
(10096, 1, 604.072998, -222.106918, -52.743759, 0,'first gate'),
(10096, 2, 621.400391, -214.499054, -52.814453, 0,'hiding in corner'),
(10096, 3, 601.300781, -198.556992, -53.950256, 0,'ring'),
(10096, 4, 631.818359, -180.548126, -52.654770, 0,'second gate'),
(10096, 5, 627.390381, -201.075974, -52.692917, 0,'hiding in corner');

DELETE FROM script_waypoint WHERE entry=10427;
REPLACE INTO script_waypoint VALUES
(10427, 0, -5185.463, -1185.927, 45.951, 0, ''),
(10427, 1, -5184.880, -1154.210, 45.035, 0, ''),
(10427, 2, -5175.880, -1126.526, 43.701, 0, ''),
(10427, 3, -5138.651, -1111.874, 44.024, 0, ''),
(10427, 4, -5134.728, -1104.796, 47.365, 0, ''),
(10427, 5, -5129.681, -1097.878, 49.449, 2500, ''),
(10427, 6, -5125.303, -1080.572, 47.033, 0, ''),
(10427, 7, -5146.668, -1053.694, 28.415, 0, ''),
(10427, 8, -5147.463, -1027.539, 13.818, 0, ''),
(10427, 9, -5139.238, -1018.889, 8.220, 0, ''),
(10427, 10, -5121.168, -1013.126, -0.619, 0, ''),
(10427, 11, -5091.919, -1014.205, -4.902, 0, ''),
(10427, 12, -5069.240, -994.299, -4.631, 0, ''),
(10427, 13, -5059.975, -944.112, -5.377, 0, ''),
(10427, 14, -5013.546, -906.184, -5.490, 0, ''),
(10427, 15, -4992.461, -920.983, -4.980, 5000, 'SAY_WYVERN'),
(10427, 16, -4976.355, -1002.997, -5.380, 0, ''),
(10427, 17, -4958.478, -1033.185, -5.433, 0, ''),
(10427, 18, -4953.353, -1052.211, -10.836, 0, ''),
(10427, 19, -4937.447, -1056.351, -22.139, 0, ''),
(10427, 20, -4908.455, -1050.433, -33.458, 0, ''),
(10427, 21, -4905.530, -1056.885, -33.722, 0, ''),
(10427, 22, -4920.830, -1073.284, -45.515, 0, ''),
(10427, 23, -4933.368, -1082.700, -50.186, 0, ''),
(10427, 24, -4935.313, -1092.353, -52.785, 0, ''),
(10427, 25, -4929.553, -1101.268, -50.637, 0, ''),
(10427, 26, -4920.679, -1100.028, -51.944, 10000, 'SAY_COMPLETE'),
(10427, 27, -4920.679, -1100.028, -51.944, 0, 'quest complete');

DELETE FROM script_waypoint WHERE entry=10638;
REPLACE INTO script_waypoint VALUES
(10638, 0, -4903.521973, -1368.339844, -52.611, 5000, 'SAY_KAN_START'),
(10638, 1, -4906.004395, -1367.048096, -52.611, 0, '');

DELETE FROM script_waypoint WHERE entry=10646;
REPLACE INTO script_waypoint VALUES
(10646, 0, -4792.401855, -2137.775146, 82.423, 0, ''),
(10646, 1, -4813.508301, -2141.543457, 80.774, 0, ''),
(10646, 2, -4828.630859, -2154.309814, 82.074, 0, ''),
(10646, 3, -4833.772949, -2149.182617, 81.676, 0, ''),
(10646, 4, -4846.418945, -2136.045410, 77.871, 0, ''),
(10646, 5, -4865.076660, -2116.549561, 76.483, 0, ''),
(10646, 6, -4888.434570, -2090.729248, 80.907, 0, ''),
(10646, 7, -4893.068359, -2085.468994, 82.094, 0, ''),
(10646, 8, -4907.256836, -2074.929932, 84.437, 5000, 'SAY_LAKO_LOOK_OUT'),
(10646, 9, -4899.899902, -2062.143555, 83.780, 0, ''),
(10646, 10, -4897.762207, -2056.520020, 84.184, 0, ''),
(10646, 11, -4888.331543, -2033.182495, 83.654, 0, ''),
(10646, 12, -4876.343750, -2003.916138, 90.887, 0, ''),
(10646, 13, -4872.227051, -1994.173340, 91.513, 0, ''),
(10646, 14, -4879.569336, -1976.985229, 92.185, 5000, 'SAY_LAKO_HERE_COME'),
(10646, 15, -4879.049316, -1964.349609, 92.001, 0, ''),
(10646, 16, -4874.720215, -1956.939819, 90.737, 0, ''),
(10646, 17, -4869.474609, -1952.612671, 89.206, 0, ''),
(10646, 18, -4842.466797, -1929.000732, 84.147, 0, ''),
(10646, 19, -4804.444824, -1897.302734, 89.362, 0, ''),
(10646, 20, -4798.072754, -1892.383545, 89.368, 0, ''),
(10646, 21, -4779.447754, -1882.759155, 90.169, 5000, 'SAY_LAKO_MORE'),
(10646, 22, -4762.081055, -1866.530640, 89.481, 0, ''),
(10646, 23, -4766.267090, -1861.867798, 87.847, 0, ''),
(10646, 24, -4782.929688, -1852.174683, 78.354, 0, ''),
(10646, 25, -4793.605469, -1850.961182, 77.658, 0, ''),
(10646, 26, -4803.323730, -1855.102661, 78.958, 0, ''),
(10646, 27, -4807.971680, -1854.501221, 77.743, 0, ''),
(10646, 28, -4837.212891, -1848.493408, 64.488, 0, ''),
(10646, 29, -4884.619629, -1840.401123, 56.219, 0, ''),
(10646, 30, -4889.705566, -1839.623291, 54.417, 0, ''),
(10646, 31, -4893.904297, -1843.685791, 53.012, 0, ''),
(10646, 32, -4903.142090, -1872.383545, 32.266, 0, ''),
(10646, 33, -4910.940918, -1879.864868, 29.940, 0, ''),
(10646, 34, -4920.047363, -1880.940796, 30.597, 0, ''),
(10646, 35, -4924.457031, -1881.447144, 29.292, 0, ''),
(10646, 36, -4966.120117, -1886.033081, 10.977, 0, ''),
(10646, 37, -4999.369629, -1890.847290, 4.430, 0, ''),
(10646, 38, -5007.271484, -1891.669678, 2.771, 0, ''),
(10646, 39, -5013.334473, -1879.588257, -1.947, 0, ''),
(10646, 40, -5023.328613, -1855.959961, -17.103, 0, ''),
(10646, 41, -5038.513184, -1825.986694, -35.821, 0, ''),
(10646, 42, -5048.733887, -1809.798218, -46.457, 0, ''),
(10646, 43, -5053.188965, -1791.682983, -57.186, 0, ''),
(10646, 44, -5062.093750, -1794.399780, -56.515, 0, ''),
(10646, 45, -5052.657227, -1797.044800, -54.734, 5000, 'SAY_LAKO_END');

DELETE FROM script_waypoint WHERE entry=11856;
REPLACE INTO script_waypoint VALUES
(11856, 0, 113.91, -350.13, 4.55, 0, ''),
(11856, 1, 109.54, -350.08, 3.74, 0, ''),
(11856, 2, 106.95, -353.40, 3.60, 0, ''),
(11856, 3, 100.28, -338.89, 2.97, 0, ''),
(11856, 4, 110.11, -320.26, 3.47, 0, ''),
(11856, 5, 109.78, -287.80, 5.30, 0, ''),
(11856, 6, 105.02, -269.71, 4.71, 0, ''),
(11856, 7, 86.71, -251.81, 5.34, 0, ''),
(11856, 8, 64.10, -246.38, 5.91, 0, ''),
(11856, 9, -2.55, -243.58, 6.3, 0, ''),
(11856, 10, -27.78, -267.53, -1.08, 0, ''),
(11856, 11, -31.27, -283.54, -4.36, 0, ''),
(11856, 12, -28.96, -322.44, -9.19, 0, ''),
(11856, 13, -35.63, -360.03, -16.59, 0, ''),
(11856, 14, -58.30, -412.26, -30.60, 0, ''),
(11856, 15, -58.88, -474.17, -44.54, 0, ''),
(11856, 16, -45.92, -496.57, -46.26, 5000, 'AMBUSH'),
(11856, 17, -40.25, -510.07, -46.05, 0, ''),
(11856, 18, -38.88, -520.72, -46.06, 5000, 'END');

DELETE FROM script_waypoint WHERE entry=12423;
REPLACE INTO script_waypoint VALUES
(12423, 0, -9509.72, -147.03, 58.74, 0, ''),
(12423, 1, -9517.07, -172.82, 58.66, 0, '');

DELETE FROM script_waypoint WHERE entry=12427;
REPLACE INTO script_waypoint VALUES
(12427, 0, -5689.20, -456.44, 391.08, 0, ''),
(12427, 1, -5700.37, -450.77, 393.19, 0, '');

DELETE FROM script_waypoint WHERE entry=12428;
REPLACE INTO script_waypoint VALUES
(12428, 0, 2454.09, 361.26, 31.51, 0, ''),
(12428, 1, 2472.03, 378.08, 30.98, 0, '');

DELETE FROM script_waypoint WHERE entry=12429;
REPLACE INTO script_waypoint VALUES
(12429, 0, 9654.19, 909.58, 1272.11, 0, ''),
(12429, 1, 9642.53, 908.11, 1269.10, 0, '');

DELETE FROM script_waypoint WHERE entry=12430;
REPLACE INTO script_waypoint VALUES
(12430, 0, 161.65, -4779.34, 14.64, 0, ''),
(12430, 1, 140.71, -4813.56, 17.04, 0, '');

DELETE FROM script_waypoint WHERE entry=12717;
REPLACE INTO script_waypoint VALUES
(12717, 0, 3346.247070, 1007.879028, 3.590, 0, 'SAY_MUG_START2'),
(12717, 1, 3367.388428, 1011.505859, 3.720, 0, ''),
(12717, 2, 3418.636963, 1013.963684, 2.905, 0, ''),
(12717, 3, 3426.844971, 1015.097534, 3.449, 0, ''),
(12717, 4, 3437.025391, 1020.786194, 2.742, 0, ''),
(12717, 5, 3460.563721, 1024.256470, 1.353, 0, ''),
(12717, 6, 3479.869629, 1037.957153, 1.023, 0, ''),
(12717, 7, 3490.526367, 1043.346313, 3.338, 0, ''),
(12717, 8, 3504.282959, 1047.772339, 8.205, 0, ''),
(12717, 9, 3510.733398, 1049.790771, 12.143, 0, ''),
(12717, 10, 3514.411133, 1051.167725, 13.235, 0, ''),
(12717, 11, 3516.939697, 1052.911377, 12.918, 0, ''),
(12717, 12, 3523.635742, 1056.297485, 7.563, 0, ''),
(12717, 13, 3531.939941, 1059.863525, 6.175, 0, ''),
(12717, 14, 3535.475342, 1069.959473, 1.697, 0, ''),
(12717, 15, 3546.978027, 1093.485474, 0.680, 0, ''),
(12717, 16, 3549.729980, 1101.882446, -1.123, 0, ''),
(12717, 17, 3555.140137, 1116.985718, -4.326, 0, ''),
(12717, 18, 3571.940430, 1132.175781, -0.634, 0, ''),
(12717, 19, 3574.283203, 1137.575928, 3.684, 0, ''),
(12717, 20, 3579.312744, 1137.252319, 8.205, 0, ''),
(12717, 21, 3590.218994, 1143.646973, 8.291, 0, ''),
(12717, 22, 3595.972900, 1145.827148, 6.773, 0, ''),
(12717, 23, 3603.650391, 1146.920776, 9.763, 0, ''),
(12717, 24, 3607.081787, 1146.014282, 10.692, 5000, 'SAY_MUG_BRAZIER'),
(12717, 25, 3614.518555, 1142.629150, 10.248, 0, ''),
(12717, 26, 3616.660889, 1140.837036, 10.682, 3000, 'SAY_MUG_PATROL'),
(12717, 27, 3621.078613, 1138.109497, 10.369, 0, 'SAY_MUG_RETURN'),
(12717, 28, 3615.478516, 1145.525879, 9.614, 0, ''),
(12717, 29, 3607.188232, 1152.715942, 8.871, 0, '');

DELETE FROM script_waypoint WHERE entry=12818;
REPLACE INTO script_waypoint VALUES
(12818, 0, 3347.250089, -694.700989, 159.925995, 0, ''),
(12818, 1, 3341.527039, -694.725891, 161.124542, 4000, ''),
(12818, 2, 3338.351074, -686.088138, 163.444000, 0, ''),
(12818, 3, 3352.744873, -677.721741, 162.316269, 0, ''),
(12818, 4, 3370.291016, -669.366943, 160.751358, 0, ''),
(12818, 5, 3381.479492, -659.449097, 162.545303, 0, ''),
(12818, 6, 3389.554199, -648.500000, 163.651825, 0, ''),
(12818, 7, 3396.645020, -641.508911, 164.216019, 0, ''),
(12818, 8, 3410.498535, -634.299622, 165.773453, 0, ''),
(12818, 9, 3418.461426, -631.791992, 166.477615, 0, ''),
(12818, 10, 3429.500000, -631.588745, 166.921265, 0, ''),
(12818, 11,3434.950195, -629.245483, 168.333969, 0, ''),
(12818, 12,3438.927979, -618.503235, 171.503143, 0, ''),
(12818, 13,3444.217529, -609.293640, 173.077972, 1000, 'Ambush 1'),
(12818, 14,3460.505127, -593.794189, 174.342255, 0, ''),
(12818, 15,3480.283203, -578.210327, 176.652313, 0, ''),
(12818, 16,3492.912842, -562.335449, 181.396301, 0, ''),
(12818, 17,3495.230957, -550.977600, 184.652267, 0, ''),
(12818, 18,3496.247070, -529.194214, 188.172028, 0, ''),
(12818, 19,3497.619385, -510.411499, 188.345322, 1000, 'Ambush 2'),
(12818, 20,3498.498047, -497.787506, 185.806274, 0, ''),
(12818, 21,3484.218750, -489.717529, 182.389862, 4000, '');

DELETE FROM script_waypoint WHERE entry=12858;
REPLACE INTO script_waypoint VALUES
(12858, 0, 1782.63, -2241.11, 109.73, 5000, ''),
(12858, 1, 1788.88, -2240.17, 111.71, 0, ''),
(12858, 2, 1797.49, -2238.11, 112.31, 0, ''),
(12858, 3, 1803.83, -2232.77, 111.22, 0, ''),
(12858, 4, 1806.65, -2217.83, 107.36, 0, ''),
(12858, 5, 1811.81, -2208.01, 107.45, 0, ''),
(12858, 6, 1820.85, -2190.82, 100.49, 0, ''),
(12858, 7, 1829.60, -2177.49, 96.44, 0, ''),
(12858, 8, 1837.98, -2164.19, 96.71, 0, 'prepare'),
(12858, 9, 1839.99, -2149.29, 96.78, 0, ''),
(12858, 10, 1835.14, -2134.98, 96.80, 0, ''),
(12858, 11, 1823.57, -2118.27, 97.43, 0, ''),
(12858, 12, 1814.99, -2110.35, 98.38, 0, ''),
(12858, 13, 1806.60, -2103.09, 99.19, 0, ''),
(12858, 14, 1798.27, -2095.77, 100.04, 0, ''),
(12858, 15, 1783.59, -2079.92, 100.81, 0, ''),
(12858, 16, 1776.79, -2069.48, 101.77, 0, ''),
(12858, 17, 1776.82, -2054.59, 109.82, 0, ''),
(12858, 18, 1776.88, -2047.56, 109.83, 0, ''),
(12858, 19, 1776.86, -2036.55, 109.83, 0, ''),
(12858, 20, 1776.90, -2024.56, 109.83, 0, 'win'),
(12858, 21, 1776.87, -2028.31, 109.83,60000, 'stay'),
(12858, 22, 1776.90, -2028.30, 109.83, 0, '');

DELETE FROM script_waypoint WHERE entry=15420;
REPLACE INTO script_waypoint VALUES
(15420, 0, 9294.78, -6682.51, 22.42, 0, ''),
(15420, 1, 9298.27, -6667.99, 22.42, 0, ''),
(15420, 2, 9309.63, -6658.84, 22.43, 0, ''),
(15420, 3, 9304.43, -6649.31, 26.46, 0, ''),
(15420, 4, 9298.83, -6648.00, 28.61, 0, ''),
(15420, 5, 9291.06, -6653.46, 31.83,2500, ''),
(15420, 6, 9289.08, -6660.17, 31.85,5000, ''),
(15420, 7, 9291.06, -6653.46, 31.83, 0, '');

DELETE FROM script_waypoint WHERE entry=16295;
REPLACE INTO script_waypoint VALUES
(16295, 0, 7545.070000, -7359.870000, 162.354000, 4000, 'SAY_START'),
(16295, 1, 7550.048340, -7362.237793, 162.235657, 0, ''),
(16295, 2, 7566.976074, -7364.315430, 161.738770, 0, ''),
(16295, 3, 7578.830566, -7361.677734, 161.738770, 0, ''),
(16295, 4, 7590.969238, -7359.053711, 162.257660, 0, ''),
(16295, 5, 7598.354004, -7362.815430, 162.256683, 4000, 'SAY_PROGRESS_1'),
(16295, 6, 7605.861328, -7380.424316, 161.937073, 0, ''),
(16295, 7, 7605.295410, -7387.382813, 157.253998, 0, ''),
(16295, 8, 7606.131836, -7393.893555, 156.941925, 0, ''),
(16295, 9, 7615.207520, -7400.187012, 157.142639, 0, ''),
(16295, 10, 7618.956543, -7402.652832, 158.202042, 0, ''),
(16295, 11, 7636.850586, -7401.756836, 162.144791, 0, 'SAY_PROGRESS_2'),
(16295, 12, 7637.058105, -7404.944824, 162.206970, 4000, ''),
(16295, 13, 7636.910645, -7412.585449, 162.366425, 0, ''),
(16295, 14, 7637.607910, -7425.591797, 162.630661, 0, ''),
(16295, 15, 7637.816895, -7459.057129, 163.302704, 0, ''),
(16295, 16, 7638.859863, -7470.902344, 162.517059, 0, ''),
(16295, 17, 7641.395996, -7488.217285, 157.381287, 0, ''),
(16295, 18, 7634.455566, -7505.451660, 154.682159, 0, 'SAY_PROGRESS_3'),
(16295, 19, 7631.906738, -7516.948730, 153.597382, 0, ''),
(16295, 20, 7622.231445, -7537.037598, 151.587112, 0, ''),
(16295, 21, 7610.921875, -7550.670410, 149.639374, 0, ''),
(16295, 22, 7598.229004, -7562.551758, 145.953888, 0, ''),
(16295, 23, 7588.509277, -7577.755371, 148.294479, 0, ''),
(16295, 24, 7567.339355, -7608.456055, 146.006485, 0, ''),
(16295, 25, 7562.547852, -7617.417969, 148.097504, 0, ''),
(16295, 26, 7561.508789, -7645.064453, 151.245163, 0, ''),
(16295, 27, 7563.337402, -7654.652344, 151.227158, 0, ''),
(16295, 28, 7565.533691, -7658.296387, 151.248886, 0, ''),
(16295, 39, 7571.155762, -7659.118652, 151.244568, 0, ''),
(16295, 30, 7579.119629, -7662.213867, 151.651505, 0, 'quest complete'),
(16295, 31, 7603.768066, -7667.000488, 153.997726, 0, ''),
(16295, 32, 7603.768066, -7667.000488, 153.997726, 4000, 'SAY_END_1'),
(16295, 33, 7603.768066, -7667.000488, 153.997726, 8000, 'SAY_END_2'),
(16295, 34, 7603.768066, -7667.000488, 153.997726, 0, '');

DELETE FROM script_waypoint WHERE entry=16812;
REPLACE INTO script_waypoint VALUES
(16812, 0, -10868.260, -1779.836, 90.476, 2500, 'Open door, begin walking'),
(16812, 1, -10875.585, -1779.581, 90.478, 0, ''),
(16812, 2, -10887.447, -1779.258, 90.476, 0, ''),
(16812, 3, -10894.592, -1780.668, 90.476, 0, ''),
(16812, 4, -10895.015, -1782.036, 90.476, 2500, 'Begin Speech after this'),
(16812, 5, -10894.592, -1780.668, 90.476, 0, 'Resume walking (back to spawn point now) after speech'),
(16812, 6, -10887.447, -1779.258, 90.476, 0, ''),
(16812, 7, -10875.585, -1779.581, 90.478, 0, ''),
(16812, 8, -10868.260, -1779.836, 90.476, 5000, 'close door'),
(16812, 9, -10866.799, -1780.958, 90.470, 2000, 'Summon mobs, open curtains');

DELETE FROM script_waypoint WHERE entry=16993;
REPLACE INTO script_waypoint VALUES
(16993, 0, -1137.72, 4272.10, 14.04, 5000, ''),
(16993, 1, -1141.34, 4232.42, 14.63, 0, ''),
(16993, 2, -1133.47, 4220.88, 11.78, 0, ''),
(16993, 3, -1126.18, 4213.26, 13.51, 0, ''),
(16993, 4, -1100.12, 4204.32, 16.41, 0, ''),
(16993, 5, -1063.68, 4197.92, 15.51, 0, ''),
(16993, 6, -1027.28, 4194.36, 15.52, 0, ''),
(16993, 7, -995.68, 4189.59, 19.84, 0, ''),
(16993, 8, -970.90, 4188.60, 24.61, 0, ''),
(16993, 9, -961.93, 4193.34, 26.11, 15000, 'Summon 1'),
(16993, 10, -935.52, 4210.99, 31.98, 0, ''),
(16993, 11, -913.42, 4218.27, 37.29, 0, ''),
(16993, 12, -896.53, 4207.73, 43.23, 0, ''),
(16993, 13, -868.49, 4194.77, 46.75, 30000, 'Kneel and Rest Here'),
(16993, 14, -852.83, 4198.29, 47.28, 15000, 'Summon 2'),
(16993, 15, -819.85, 4200.50, 46.37, 0, ''),
(16993, 16, -791.92, 4201.96, 44.19, 0, ''),
(16993, 17, -774.42, 4202.46, 47.41, 0, ''),
(16993, 18, -762.90, 4202.17, 48.81, 0, ''),
(16993, 19, -728.25, 4195.35, 50.68, 0, ''),
(16993, 20, -713.58, 4192.07, 53.98, 0, ''),
(16993, 21, -703.09, 4189.74, 56.96, 0, ''),
(16993, 22, -693.70, 4185.43, 57.06, 0, ''),
(16993, 23, -686.38, 4159.81, 60.26, 0, ''),
(16993, 24, -679.88, 4147.04, 64.20, 0, ''),
(16993, 25, -656.74, 4147.72, 64.11, 0, ''),
(16993, 26, -652.22, 4137.50, 64.58, 0, ''),
(16993, 27, -649.99, 4136.38, 64.63, 30000, 'Quest Credit');

DELETE FROM script_waypoint WHERE entry=17077;
REPLACE INTO script_waypoint VALUES
(17077, 0, -16.950142, 3801.409424, 95.064, 5000, 'EMOTE_WOLF_LIFT_HEAD'),
(17077, 1, -15.577404, 3805.170898, 94.833, 2500, ''),
(17077, 2, -20.011766, 3806.609863, 92.476, 5000, 'EMOTE_WOLF_HOWL'),
(17077, 3, -18.594666, 3816.207764, 91.482, 0, ''),
(17077, 4, -19.293468, 3838.218750, 85.012, 0, ''),
(17077, 5, -16.504408, 3871.034668, 82.327, 0, ''),
(17077, 6, 2.064510, 3898.678711, 85.623, 0, ''),
(17077, 7, 16.403864, 3921.174072, 86.024, 0, ''),
(17077, 8, 47.307926, 3932.001465, 83.302, 0, ''),
(17077, 9, 90.067230, 3942.906250, 77.000, 0, ''),
(17077, 10, 106.886024, 3944.388428, 76.502, 0, ''),
(17077, 11, 139.085480, 3941.897217, 80.617, 0, ''),
(17077, 12, 150.092346, 3942.782959, 80.399, 0, ''),
(17077, 13, 193.511475, 3950.396484, 74.366, 0, ''),
(17077, 14, 226.274948, 3958.003418, 73.257, 0, ''),
(17077, 15, 246.686981, 3963.309326, 76.376, 0, ''),
(17077, 16, 264.206177, 3977.726563, 83.704, 0, ''),
(17077, 17, 279.857422, 3986.417236, 88.245, 0, ''),
(17077, 18, 304.039642, 3998.354004, 95.649, 0, ''),
(17077, 19, 328.071503, 3995.832764, 104.434, 0, ''),
(17077, 20, 347.485229, 3990.817627, 113.608, 0, ''),
(17077, 21, 351.257202, 3954.260254, 125.747, 0, ''),
(17077, 22, 345.625977, 3932.016113, 132.358, 0, ''),
(17077, 23, 347.971893, 3908.549561, 135.520, 0, ''),
(17077, 24, 351.887878, 3891.062744, 139.957, 0, ''),
(17077, 25, 346.116852, 3864.634277, 146.647, 0, ''),
(17077, 26, 330.012360, 3839.859375, 154.148, 0, ''),
(17077, 27, 297.250610, 3811.855225, 166.893, 0, ''),
(17077, 28, 290.783112, 3800.188477, 172.130, 0, ''),
(17077, 29, 288.125427, 3782.474365, 180.825, 0, ''),
(17077, 30, 296.817841, 3771.629639, 184.961, 0, ''),
(17077, 31, 305.256256, 3765.380615, 185.360, 0, ''),
(17077, 32, 311.447906, 3757.902100, 184.312, 0, ''),
(17077, 33, 325.258026, 3730.282227, 184.076, 0, ''),
(17077, 34, 341.158630, 3717.757080, 183.904, 0, ''),
(17077, 35, 365.589020, 3717.200684, 183.902, 0, ''),
(17077, 36, 387.395081, 3731.750732, 183.645, 0, ''),
(17077, 37, 396.574127, 3732.604248, 179.831, 0, ''),
(17077, 38, 404.303192, 3737.313232, 180.151, 0, ''),
(17077, 39, 410.995972, 3742.286865, 183.364, 0, ''),
(17077, 40, 434.904541, 3761.058838, 186.219, 0, ''),
(17077, 41, 460.128815, 3774.436768, 186.348, 0, ''),
(17077, 42, 467.643951, 3788.506104, 186.446, 0, ''),
(17077, 43, 491.551666, 3815.446777, 189.848, 0, ''),
(17077, 44, 496.957855, 3836.875244, 193.078, 0, ''),
(17077, 45, 502.889191, 3855.458740, 194.834, 0, ''),
(17077, 46, 508.208466, 3863.689453, 194.024, 0, ''),
(17077, 47, 528.907593, 3887.348633, 189.762, 0, ''),
(17077, 48, 527.722229, 3890.686523, 189.240, 0, ''),
(17077, 49, 524.637329, 3891.768066, 189.149, 0, ''),
(17077, 50, 519.146057, 3886.701660, 190.128, 60000, 'SAY_WOLF_WELCOME');

DELETE FROM script_waypoint WHERE entry=17312;
REPLACE INTO script_waypoint VALUES
(17312, 0, -4784.532227, -11051.060547, 3.484263, 0, ''),
(17312, 1, -4805.509277, -11037.293945, 3.043942, 0, ''),
(17312, 2, -4827.826172, -11034.398438, 1.741959, 0, ''),
(17312, 3, -4852.630859, -11033.695313, 2.208656, 0, ''),
(17312, 4, -4876.791992, -11034.517578, 3.175228, 0, ''),
(17312, 5, -4895.486816, -11038.306641, 9.390890, 0, ''),
(17312, 6, -4915.464844, -11048.402344, 12.369793, 0, ''),
(17312, 7, -4937.288086, -11067.041992, 13.857983, 0, ''),
(17312, 8, -4966.577637, -11067.507813, 15.754786, 0, ''),
(17312, 9, -4993.799805, -11056.544922, 19.175295, 0, ''),
(17312, 10, -5017.836426, -11052.569336, 22.476587, 0, ''),
(17312, 11, -5039.706543, -11058.459961, 25.831593, 0, ''),
(17312, 12, -5057.289063, -11045.474609, 26.972496, 0, ''),
(17312, 13, -5078.828125, -11037.601563, 29.053417, 0, ''),
(17312, 14, -5104.158691, -11039.195313, 29.440195, 0, ''),
(17312, 15, -5120.780273, -11039.518555, 30.142139, 0, ''),
(17312, 16, -5140.833008, -11039.810547, 28.788074, 0, ''),
(17312, 17, -5161.201660, -11040.050781, 27.879545, 4000, ''),
(17312, 18, -5171.842285, -11046.803711, 27.183821, 0, ''),
(17312, 19, -5185.995117, -11056.359375, 20.234867, 0, ''),
(17312, 20, -5198.485840, -11065.065430, 18.872593, 0, ''),
(17312, 21, -5214.062500, -11074.653320, 19.215731, 0, ''),
(17312, 22, -5220.157227, -11088.377930, 19.818476, 0, ''),
(17312, 23, -5233.652832, -11098.846680, 18.349432, 0, ''),
(17312, 24, -5250.163086, -11111.653320, 16.438959, 0, ''),
(17312, 25, -5268.194336, -11125.639648, 12.668313, 0, ''),
(17312, 26, -5286.270508, -11130.669922, 6.912246, 0, ''),
(17312, 27, -5317.449707, -11137.392578, 4.963446, 0, ''),
(17312, 28, -5334.854492, -11154.384766, 6.742664, 0, ''),
(17312, 29, -5353.874512, -11171.595703, 6.903912, 20000, ''),
(17312, 30, -5354.240000, -11171.940000, 6.890000, 0, '');

DELETE FROM script_waypoint WHERE entry=17876;
REPLACE INTO script_waypoint VALUES
(17876, 0, 2230.91, 118.765, 82.2947,5000, ''),
(17876, 1, 2230.33, 114.980, 82.2946, 0, ''),
(17876, 2, 2233.36, 111.057, 82.2996, 0, ''),
(17876, 3, 2231.17, 108.486, 82.6624, 0, ''),
(17876, 4, 2220.22, 114.605, 89.4264, 0, ''),
(17876, 5, 2215.23, 115.990, 89.4549, 0, ''),
(17876, 6, 2210.00, 106.849, 89.4549, 0, ''),
(17876, 7, 2205.66, 105.234, 89.4549, 0, ''),
(17876, 8, 2192.26, 112.618, 89.4549, 0, 'spawn armorer'),
(17876, 9, 2181.28, 118.612, 89.4549,8000, 'get weapon'),
(17876, 10, 2181.62, 120.385, 89.4549,5000, 'get armor'),
(17876, 11, 2189.44, 113.922, 89.4549, 0, ''),
(17876, 12, 2195.63, 110.584, 89.4549, 0, ''),
(17876, 13, 2201.09, 115.115, 89.4549, 0, ''),
(17876, 14, 2204.34, 121.036, 89.4355, 0, ''),
(17876, 15, 2208.66, 129.127, 87.9560, 0, 'first ambush'),
(17876, 16, 2193.09, 137.940, 88.2164, 0, ''),
(17876, 17, 2173.39, 149.064, 87.9227, 0, ''),
(17876, 18, 2164.25, 137.965, 85.0595, 0, ''),
(17876, 19, 2149.31, 125.645, 77.0858, 0, ''),
(17876, 20, 2142.78, 127.173, 75.5954, 0, ''),
(17876, 21, 2139.28, 133.952, 73.6386, 0, 'second ambush'),
(17876, 22, 2139.54, 155.235, 67.1269, 0, ''),
(17876, 23, 2145.38, 167.551, 64.8974, 0, ''),
(17876, 24, 2134.28, 175.304, 67.9446, 0, ''),
(17876, 25, 2118.08, 187.387, 68.8141, 0, ''),
(17876, 26, 2105.88, 195.461, 65.1854, 0, 'third ambush'),
(17876, 27, 2096.77, 196.939, 65.2117, 0, ''),
(17876, 28, 2083.90, 209.395, 64.8736, 0, ''),
(17876, 29, 2067.84, 224.376, 64.8022,30000, 'meeting scarloc'),
(17876, 30, 2055.40, 242.90, 63.3418, 0, 'after skarloc'),
(17876, 31, 2039.20, 266.460, 63.0182,10000, 'mount up'),
(17876, 32, 2011.77, 278.478, 65.3388, 0, ''),
(17876, 33, 2005.08, 289.676, 66.1179, 0, ''),
(17876, 34, 2033.11, 337.450, 66.0948, 0, ''),
(17876, 35, 2070.30, 416.208, 66.0893, 0, ''),
(17876, 36, 2086.76, 469.768, 65.9182, 0, ''),
(17876, 37, 2101.70, 497.955, 61.7881, 0, 'road ambush'),
(17876, 38, 2133.39, 530.933, 55.3700,5000, ''),
(17876, 39, 2157.91, 559.635, 48.5157, 0, ''),
(17876, 40, 2167.34, 586.191, 42.4394, 0, ''),
(17876, 41, 2174.17, 637.643, 33.9002, 0, ''),
(17876, 42, 2179.31, 656.053, 34.723, 0, ''),
(17876, 43, 2183.65, 670.941, 34.0318, 0, ''),
(17876, 44, 2201.50, 668.616, 36.1236, 0, ''),
(17876, 45, 2221.56, 652.747, 36.6153, 0, ''),
(17876, 46, 2238.97, 640.125, 37.2214, 0, ''),
(17876, 47, 2251.17, 620.574, 40.1473, 0, ''),
(17876, 48, 2261.98, 595.303, 41.4117, 0, ''),
(17876, 49, 2278.67, 560.172, 38.9090, 0, ''),
(17876, 50, 2336.72, 528.327, 40.9369, 0, ''),
(17876, 51, 2381.04, 519.612, 37.7312, 0, ''),
(17876, 52, 2412.20, 515.425, 39.2068, 0, ''),
(17876, 53, 2452.39, 516.174, 42.9387, 0, ''),
(17876, 54, 2467.38, 539.389, 47.4992, 0, ''),
(17876, 55, 2470.70, 554.333, 46.6668, 0, ''),
(17876, 56, 2478.07, 575.321, 55.4549, 0, ''),
(17876, 57, 2480.00, 585.408, 56.6921, 0, ''),
(17876, 58, 2482.67, 608.817, 55.6643, 0, ''),
(17876, 59, 2485.62, 626.061, 58.0132, 2000, 'dismount'),
(17876, 60, 2486.91, 626.356, 58.0761, 0, 'scare horse'),
(17876, 61, 2488.58, 660.940, 57.3913, 0, ''),
(17876, 62, 2502.56, 686.059, 55.6252, 0, ''),
(17876, 63, 2502.08, 694.360, 55.5083, 0, ''),
(17876, 64, 2491.46, 694.321, 55.7163, 0, ''),
(17876, 65, 2491.10, 703.300, 55.7630, 0, ''),
(17876, 66, 2485.64, 702.992, 55.7917, 0, ''),
(17876, 67, 2479.10, 695.291, 55.7901, 10000, ''),
(17876, 68, 2476.75, 693.689, 55.7960, 0, 'spawn mobs'),
(17876, 69, 2475.39, 695.983, 55.8146, 0, ''),
(17876, 70, 2477.75, 694.473, 55.7945, 0, ''),
(17876, 71, 2481.27, 697.747, 55.7910, 0, 'mobs in doorway'),
(17876, 72, 2486.31, 703.131, 55.7861, 5000, ''),
(17876, 73, 2490.76, 703.511, 55.7662, 0, ''),
(17876, 74, 2491.30, 694.792, 55.7195, 0, ''),
(17876, 75, 2518.69, 693.876, 55.1383, 0, ''),
(17876, 76, 2531.33, 681.914, 55.1383, 0, ''),
(17876, 77, 2568.25, 682.654, 55.1778, 0, ''),
(17876, 78, 2589.61, 689.981, 55.1421, 0, ''),
(17876, 79, 2634.74, 679.833, 54.6613, 0, ''),
(17876, 80, 2630.41, 661.464, 54.2761, 0, ''),
(17876, 81, 2629.00, 656.982, 56.0651, 0, ''),
(17876, 82, 2620.84, 633.007, 56.0300, 3000, 'stop in church'),
(17876, 83, 2622.99, 639.178, 56.0300, 0, 'summon'),
(17876, 84, 2628.73, 656.693, 56.0610, 5000, ''),
(17876, 85, 2630.34, 661.135, 54.2738, 0, ''),
(17876, 86, 2635.38, 672.243, 54.4508, 0, ''),
(17876, 87, 2644.13, 668.158, 55.3797, 0, ''),
(17876, 88, 2646.82, 666.740, 56.9898, 0, ''),
(17876, 89, 2658.22, 665.432, 57.1725, 0, ''),
(17876, 90, 2661.88, 674.849, 57.1725, 0, ''),
(17876, 91, 2656.23, 677.208, 57.1725, 0, ''),
(17876, 92, 2652.28, 670.270, 61.9353, 0, ''),
(17876, 93, 2650.79, 664.290, 61.9302, 0, 'summon inn'),
(17876, 94, 2658.19, 660.454, 61.9320, 5000, ''),
(17876, 95, 2660.57, 659.173, 61.9370, 0, 'speak with Taretha'),
(17876, 96, 2658.19, 660.454, 61.9320, 5000, 'epoch calls'),
(17876, 97, 2659.84, 659.482, 61.9361, 5000, 'taretha "dies"'),
(17876, 98, 2654.28, 662.722, 61.9313, 0, ''),
(17876, 99, 2652.37, 670.561, 61.9368, 0, ''),
(17876, 100, 2656.05, 676.761, 57.1727, 0, ''),
(17876, 101, 2658.49, 677.166, 57.1727, 0, ''),
(17876, 102, 2659.28, 667.117, 57.1727, 0, ''),
(17876, 103, 2649.71, 665.387, 57.1727, 0, ''),
(17876, 104, 2634.79, 672.964, 54.4577, 0, 'outside inn'),
(17876, 105, 2635.06, 673.892, 54.4713, 30000, 'getting ready'),
(17876, 106, 2634.79, 672.964, 54.4577, 60000, 'when all dead and meet Taretha'),
(17876, 107, 2631.72, 665.629, 54.2923, 0, 'run off'),
(17876, 108, 2647.40, 640.530, 55.7634, 0, '');

DELETE FROM script_waypoint WHERE entry=17969;
REPLACE INTO script_waypoint VALUES
(17969, 0, -930.048950, 5288.080078, 23.848402, 0, ''),
(17969, 1, -925.677917, 5296.482910, 18.183748, 0, ''),
(17969, 2, -924.297180, 5299.016113, 17.710915, 0, ''),
(17969, 3, -928.390076, 5317.022949, 18.208593, 0, ''),
(17969, 4, -930.620972, 5329.915039, 18.773422, 0, 'SAY_AMBUSH1'),
(17969, 5, -931.490295, 5357.654785, 18.027155, 0, 'SAY_PROGRESS'),
(17969, 6, -934.777771, 5369.341797, 22.278048, 0, ''),
(17969, 7, -934.521851, 5373.407227, 22.834690, 0, ''),
(17969, 8, -937.008545, 5382.980469, 22.699078, 0, ''),
(17969, 9, -941.948059, 5404.141602, 22.669743, 0, ''),
(17969, 10, -931.244263, 5415.846680, 23.063961, 0, 'at crossroad'),
(17969, 11, -901.497925, 5420.315430, 24.213270, 0, ''),
(17969, 12, -860.311707, 5415.617676, 23.671139, 0, ''),
(17969, 13, -777.988953, 5391.982422, 23.001669, 0, ''),
(17969, 14, -750.362000, 5385.786621, 22.765791, 0, ''),
(17969, 15, -731.339417, 5382.449707, 22.517065, 0, ''),
(17969, 16, -681.235901, 5381.377930, 22.050159, 2500, 'end bridge SAY_AMBUSH2'),
(17969, 17, -637.944458, 5384.338379, 22.205647, 0, 'SAY_END'),
(17969, 18, -608.954407, 5408.715332, 21.630386, 0, ''),
(17969, 19, -598.134277, 5413.608398, 21.412275, 0, ''),
(17969, 20, -571.268982, 5420.771973, 21.184925, 0, ''),
(17969, 21, -553.099915, 5424.616211, 21.193716, 0, ''),
(17969, 22, -524.745483, 5443.945313, 20.977013, 0, ''),
(17969, 23, -502.984985, 5446.283691, 22.149435, 0, ''),
(17969, 24, -472.463959, 5449.546875, 22.561453, 0, ''),
(17969, 25, -454.533264, 5461.302246, 22.602837, 30000, 'quest complete');

DELETE FROM script_waypoint WHERE entry=18210;
REPLACE INTO script_waypoint VALUES
(18210, 0, -1581.410034, 8557.933594, 2.726, 0, ''),
(18210, 1, -1579.908447, 8553.716797, 2.559, 0, ''),
(18210, 2, -1577.829102, 8549.880859, 2.001, 0, ''),
(18210, 3, -1571.161987, 8543.494141, 2.001, 0, ''),
(18210, 4, -1563.944824, 8530.334961, 1.605, 0, ''),
(18210, 5, -1554.565552, 8518.413086, 0.364, 0, ''),
(18210, 6, -1549.239136, 8515.518555, 0.293, 0, ''),
(18210, 7, -1518.490112, 8516.771484, 0.683, 2000, 'SAY_MAG_MORE'),
(18210, 8, -1505.038940, 8513.247070, 0.672, 0, ''),
(18210, 9, -1476.161133, 8496.066406, 2.157, 0, ''),
(18210, 10, -1464.450684, 8492.601563, 3.529, 0, ''),
(18210, 11, -1457.568359, 8492.183594, 4.449, 0, ''),
(18210, 12, -1444.100342, 8499.031250, 6.177, 0, ''),
(18210, 13, -1426.472168, 8510.116211, 7.686, 0, ''),
(18210, 14, -1403.685303, 8524.146484, 9.680, 0, ''),
(18210, 15, -1384.890503, 8542.014648, 11.180, 0, ''),
(18210, 16, -1382.286133, 8539.869141, 11.139, 7500, 'SAY_MAG_COMPLETE'),
(18210, 17, -1361.224609, 8521.440430, 11.144, 0, ''),
(18210, 18, -1324.803589, 8510.688477, 13.050, 0, ''),
(18210, 19, -1312.075439, 8492.709961, 14.235, 0, '');

DELETE FROM script_waypoint WHERE entry=18731;
REPLACE INTO script_waypoint VALUES
(18731, 0, -157.366, 2.177, 8.073, 0, ''),
(18731, 1, -172.266, -18.280, 8.073, 0, ''),
(18731, 2, -171.051, -38.748, 8.073, 0, ''),
(18731, 3, -170.718, -59.436, 8.073, 0, ''),
(18731, 4, -156.659, -72.118, 8.073, 0, ''),
(18731, 5, -142.292, -59.423, 8.073, 0, ''),
(18731, 6, -141.779, -38.972, 8.073, 0, ''),
(18731, 7, -142.922, -18.950, 8.073, 0, ''),
(18731, 8, -157.366, 2.177, 8.073, 0, '');

DELETE FROM script_waypoint WHERE entry=18887;
REPLACE INTO script_waypoint VALUES
(18887, 0, 2650.06, 665.473, 61.9305, 0, ''),
(18887, 1, 2652.44, 670.761, 61.9370, 0, ''),
(18887, 2, 2655.96, 676.913, 57.1725, 0, ''),
(18887, 3, 2659.40, 677.317, 57.1725, 0, ''),
(18887, 4, 2651.75, 664.482, 57.1725, 0, ''),
(18887, 5, 2647.49, 666.595, 57.0824, 0, ''),
(18887, 6, 2644.37, 668.167, 55.4182, 0, ''),
(18887, 7, 2640.96, 669.890, 54.7567, 60000, '');

DELETE FROM script_waypoint WHERE entry=19685;
REPLACE INTO script_waypoint VALUES
(19685, 0, -1860.536987, 5416.987793, -10.480, 2500, ''),
(19685, 1, -1855.899048, 5412.805664, -12.427, 0, 'SAY_KHAD_SERV_0'),
(19685, 2, -1845.518433, 5385.352539, -12.427, 0, ''),
(19685, 3, -1815.247803, 5340.255371, -12.427, 0, ''),
(19685, 4, -1799.338379, 5312.777344, -12.427, 0, ''),
(19685, 5, -1780.491455, 5278.535156, -33.877, 2500, 'pause'),
(19685, 6, -1776.057983, 5270.247559, -38.809, 0, ''),
(19685, 7, -1772.219727, 5262.777344, -38.810, 0, ''),
(19685, 8, -1762.195557, 5261.720215, -38.850, 0, ''),
(19685, 9, -1759.242798, 5259.751465, -40.208, 0, ''),
(19685, 10, -1743.427612, 5259.661621, -40.208, 0, ''),
(19685, 11, -1744.361816, 5251.179199, -44.523, 0, ''),
(19685, 12, -1740.121582, 5240.120117, -47.740, 0, ''),
(19685, 13, -1737.636719, 5238.288086, -49.793, 0, ''),
(19685, 14, -1727.411621, 5233.874512, -50.477, 0, ''),
(19685, 15, -1707.489746, 5230.437988, -51.050, 0, ''),
(19685, 16, -1684.122925, 5223.633301, -49.415, 0, ''),
(19685, 17, -1669.973267, 5221.929688, -46.336, 0, ''),
(19685, 18, -1662.870117, 5221.712891, -44.959, 0, ''),
(19685, 19, -1657.170410, 5225.206055, -45.708, 0, ''),
(19685, 20, -1645.025635, 5238.360352, -40.212, 0, ''),
(19685, 21, -1631.657471, 5252.759766, -40.962, 0, ''),
(19685, 22, -1631.368286, 5276.543945, -41.032, 0, ''),
(19685, 23, -1621.732544, 5298.553711, -40.209, 0, ''),
(19685, 24, -1615.498169, 5298.098145, -40.209, 2500, 'pause'),
(19685, 25, -1636.979370, 5302.677734, -40.209, 0, ''),
(19685, 26, -1655.330322, 5315.736328, -40.207, 0, ''),
(19685, 27, -1656.884155, 5321.649414, -40.209, 0, ''),
(19685, 28, -1663.975586, 5335.206055, -46.526, 0, ''),
(19685, 29, -1659.141602, 5359.131836, -45.846, 0, ''),
(19685, 30, -1644.207520, 5390.886230, -45.542, 0, ''),
(19685, 31, -1646.183594, 5405.273926, -44.649, 0, ''),
(19685, 32, -1650.202637, 5414.541992, -46.324, 0, ''),
(19685, 33, -1656.052490, 5424.683594, -40.461, 0, ''),
(19685, 34, -1661.628296, 5423.929199, -40.405, 0, ''),
(19685, 35, -1664.651855, 5423.659180, -38.848, 0, ''),
(19685, 36, -1681.772339, 5425.999512, -38.809, 0, ''),
(19685, 37, -1729.785767, 5427.246094, -12.445, 0, ''),
(19685, 38, -1735.371460, 5423.663086, -12.427, 0, ''),
(19685, 39, -1741.627075, 5386.767578, -12.427, 0, ''),
(19685, 40, -1764.786133, 5363.735840, -12.427, 0, ''),
(19685, 41, -1816.372314, 5340.664063, -12.427, 0, ''),
(19685, 42, -1880.022705, 5309.796387, -12.427, 0, ''),
(19685, 43, -1887.374146, 5315.426270, -12.427, 0, ''),
(19685, 44, -1888.768066, 5324.518066, -5.146, 0, ''),
(19685, 45, -1888.399170, 5334.149902, 0.151, 0, ''),
(19685, 46, -1890.221680, 5337.659668, 0.921, 0, ''),
(19685, 47, -1897.542725, 5323.042969, 1.256, 0, ''),
(19685, 48, -1900.250244, 5319.804688, 0.831, 0, ''),
(19685, 49, -1910.039673, 5291.258789, 1.288, 0, ''),
(19685, 50, -1915.219482, 5275.572266, 2.502, 2500, 'pause'),
(19685, 51, -1927.226196, 5273.250977, 2.703, 0, ''),
(19685, 52, -1926.980225, 5278.467285, 0.109, 0, ''),
(19685, 53, -1927.665894, 5299.210449, -12.427, 0, ''),
(19685, 54, -1922.841797, 5319.263672, -12.427, 0, ''),
(19685, 55, -1925.779053, 5347.405273, -12.427, 0, ''),
(19685, 56, -1954.912476, 5384.230957, -12.427, 0, ''),
(19685, 57, -1966.727295, 5428.203613, -12.427, 0, ''),
(19685, 58, -1979.477661, 5448.415527, -12.427, 0, ''),
(19685, 59, -1977.533569, 5453.861328, -12.385, 0, ''),
(19685, 60, -1968.064087, 5455.781250, -4.343, 0, ''),
(19685, 61, -1959.223145, 5454.895020, 0.202, 0, ''),
(19685, 62, -1954.629028, 5457.011230, 0.900, 0, ''),
(19685, 63, -1967.760010, 5464.953125, 1.220, 2500, 'pause'),
(19685, 64, -1952.874023, 5462.962402, 0.956, 0, ''),
(19685, 65, -1955.339478, 5467.116699, 0.445, 0, ''),
(19685, 66, -1962.033203, 5472.804688, -4.243, 0, ''),
(19685, 67, -1968.007690, 5480.914551, -12.427, 0, ''),
(19685, 68, -1945.900146, 5515.948242, -12.427, 0, ''),
(19685, 69, -1874.867310, 5549.783691, -12.427, 0, ''),
(19685, 70, -1840.641602, 5544.234375, -12.427, 0, ''),
(19685, 71, -1838.963501, 5536.059570, -5.639, 0, ''),
(19685, 72, -1839.582275, 5525.627930, 0.193, 0, ''),
(19685, 73, -1837.931763, 5521.119629, 0.844, 0, ''),
(19685, 74, -1829.182495, 5533.433594, 1.209, 2500, 'pause'),
(19685, 75, -1848.397095, 5476.073730, 0.856, 40000, 'end');

DELETE FROM script_waypoint WHERE entry=20129;
REPLACE INTO script_waypoint VALUES
(20129, 0, -8374.93,-4250.21, -204.38,5000, ''),
(20129, 1, -8374.93,-4250.21, -204.38,16000, ''),
(20129, 2, -8374.93,-4250.21, -204.38,10000, ''),
(20129, 3, -8374.93,-4250.21, -204.38,2000, ''),
(20129, 4, -8439.40,-4180.05, -209.25, 0, ''),
(20129, 5, -8437.82,-4120.84, -208.59,10000, ''),
(20129, 6, -8437.82,-4120.84, -208.59,16000, ''),
(20129, 7, -8437.82,-4120.84, -208.59,13000, ''),
(20129, 8, -8437.82,-4120.84, -208.59,18000, ''),
(20129, 9, -8437.82,-4120.84, -208.59,15000, ''),
(20129, 10, -8437.82,-4120.84, -208.59,2000, ''),
(20129, 11, -8467.26,-4198.63, -214.21, 0, ''),
(20129, 12, -8667.76,-4252.13, -209.56, 0, ''),
(20129, 13, -8703.71,-4234.58, -209.5,14000, ''),
(20129, 14, -8703.71,-4234.58, -209.5,2000, ''),
(20129, 15, -8642.81,-4304.37, -209.57, 0, ''),
(20129, 16, -8649.06,-4394.36, -208.46,6000, ''),
(20129, 17, -8649.06,-4394.36, -208.46,18000, ''),
(20129, 18, -8649.06,-4394.36, -208.46,2000, ''),
(20129, 19, -8468.72,-4437.67, -215.45, 0, ''),
(20129, 20, -8427.54,-4426, -211.13, 0, ''),
(20129, 21, -8364.83,-4393.32, -205.91, 0, ''),
(20129, 22, -8304.54,-4357.2, -208.2,18000, ''),
(20129, 23, -8304.54,-4357.2, -208.2,2000, ''),
(20129, 24, -8375.42,-4250.41, -205.14,5000, ''),
(20129, 25, -8375.42,-4250.41, -205.14,5000, '');

DELETE FROM script_waypoint WHERE entry=20415;
REPLACE INTO script_waypoint VALUES 
(20415, 0, 2488.77, 2184.89, 104.64, 0, ""),
(20415, 1, 2478.72, 2184.77, 98.58, 0, ""),
(20415, 2, 2473.52, 2184.71, 99.00, 0, ""),
(20415, 3, 2453.15, 2184.96, 97.09,4000, ""),
(20415, 4, 2424.18, 2184.15, 94.11, 0, ""),
(20415, 5, 2413.18, 2184.15, 93.42, 0, ""),
(20415, 6, 2402.02, 2183.90, 87.59, 0, ""),
(20415, 7, 2333.31, 2181.63, 90.03,4000, ""),
(20415, 8, 2308.73, 2184.34, 92.04, 0, ""),
(20415, 9, 2303.10, 2196.89, 94.94, 0, ""),
(20415, 10, 2304.58, 2272.23, 96.67, 0, ""),
(20415, 11, 2297.09, 2271.40, 95.16, 0, ""),
(20415, 12, 2297.68, 2266.79, 95.07,4000, ""),
(20415, 13, 2297.67, 2266.76, 95.07,4000, "");

DELETE FROM script_waypoint WHERE entry=21027;
REPLACE INTO script_waypoint VALUES
(21027, 0, -2714.697266, 1326.879395, 34.306953, 0, ''),
(21027, 1, -2666.364990, 1348.222656, 34.445557, 0, ''),
(21027, 2, -2693.789307, 1336.964966, 34.445557, 0, ''),
(21027, 3, -2715.495361, 1328.054443, 34.106014, 0, ''),
(21027, 4, -2742.530762, 1314.138550, 33.606144, 0, ''),
(21027, 5, -2745.077148, 1311.108765, 33.630898, 0, ''),
(21027, 6, -2749.855225, 1302.737915, 33.475632, 0, ''),
(21027, 7, -2753.639648, 1294.059448, 33.314930, 0, ''),
(21027, 8, -2756.796387, 1285.122192, 33.391262, 0, ''),
(21027, 9, -2750.042969, 1273.661987, 33.188259, 0, ''),
(21027, 10, -2740.378418, 1258.846680, 33.212521, 0, ''),
(21027, 11, -2733.629395, 1248.259766, 33.640598, 0, ''),
(21027, 12, -2727.212646, 1238.606445, 33.520847, 0, ''),
(21027, 13, -2726.377197, 1237.264526, 33.461823, 3000, 'SAY_WIL_PROGRESS1'),
(21027, 14, -2746.383301, 1266.390625, 33.191952, 2000, ''),
(21027, 15, -2746.383301, 1266.390625, 33.191952, 4000, 'SAY_WIL_FIND_EXIT'),
(21027, 16, -2758.927734, 1285.134155, 33.341728, 0, ''),
(21027, 17, -2761.845703, 1292.313599, 33.209042, 0, ''),
(21027, 18, -2758.871826, 1300.677612, 33.285332, 0, ''),
(21027, 19, -2753.928955, 1307.755859, 33.452457, 0, ''),
(21027, 20, -2738.612061, 1316.191284, 33.482975, 0, ''),
(21027, 21, -2727.897461, 1320.013916, 33.381111, 0, ''),
(21027, 22, -2709.458740, 1315.739990, 33.301838, 0, ''),
(21027, 23, -2704.658936, 1301.620361, 32.463303, 0, ''),
(21027, 24, -2704.120117, 1298.922607, 32.768162, 0, ''),
(21027, 25, -2691.798340, 1292.846436, 33.852642, 0, ''),
(21027, 26, -2682.879639, 1288.853882, 32.995399, 0, ''),
(21027, 27, -2661.869141, 1279.682495, 26.686783, 0, ''),
(21027, 28, -2648.943604, 1270.272827, 24.147522, 0, ''),
(21027, 29, -2642.506836, 1262.938721, 23.512444, 0, ''),
(21027, 30, -2636.984863, 1252.429077, 20.418257, 0, ''),
(21027, 31, -2648.113037, 1224.984863, 8.691818, 0, ''),
(21027, 32, -2658.393311, 1200.136719, 5.492243, 0, ''),
(21027, 33, -2668.504395, 1190.450562, 3.127407, 0, ''),
(21027, 34, -2685.930420, 1174.360840, 5.163924, 0, ''),
(21027, 35, -2701.613770, 1160.026367, 5.611311, 0, ''),
(21027, 36, -2714.659668, 1149.980347, 4.342373, 0, ''),
(21027, 37, -2721.443359, 1145.002808, 1.913474, 0, ''),
(21027, 38, -2733.962158, 1143.436279, 2.620415, 0, ''),
(21027, 39, -2757.876709, 1146.937500, 6.184002, 2000, 'SAY_WIL_JUST_AHEAD'),
(21027, 40, -2772.300537, 1166.052734, 6.331811, 0, ''),
(21027, 41, -2790.265381, 1189.941650, 5.207958, 0, ''),
(21027, 42, -2805.448975, 1208.663940, 5.557623, 0, ''),
(21027, 43, -2820.617676, 1225.870239, 6.266103, 0, ''),
(21027, 44, -2831.926758, 1237.725830, 5.808506, 0, ''),
(21027, 45, -2842.578369, 1252.869629, 6.807481, 0, ''),
(21027, 46, -2846.344971, 1258.727295, 7.386168, 0, ''),
(21027, 47, -2847.556396, 1266.771729, 8.208790, 0, ''),
(21027, 48, -2841.654541, 1285.809204, 7.933223, 0, ''),
(21027, 49, -2841.754883, 1289.832520, 6.990304, 0, ''),
(21027, 50, -2871.398438, 1302.348145, 6.807335, 7500, 'SAY_WIL_END');

DELETE FROM script_waypoint WHERE entry=22377;
REPLACE INTO script_waypoint VALUES
(22377, 0, -2770.457520, 5418.410645, -34.538, 0, ''),
(22377, 1, -2778.180420, 5416.253906, -34.538, 0, ''),
(22377, 2, -2816.960449, 5414.944336, -34.529, 0, ''),
(22377, 3, -2827.533203, 5414.737305, -28.265, 0, ''),
(22377, 4, -2841.610596, 5413.021973, -28.261, 0, ''),
(22377, 5, -2863.605957, 5411.964355, -28.262, 1000, 'SAY_AKU_AMBUSH_A'),
(22377, 6, -2874.559570, 5413.799316, -28.260, 0, ''),
(22377, 7, -2878.775879, 5413.812012, -28.261, 0, ''),
(22377, 8, -2892.586914, 5413.478516, -18.784, 0, ''),
(22377, 9, -2896.040527, 5413.137207, -18.589, 0, ''),
(22377, 10, -2896.318848, 5409.431641, -18.450, 0, ''),
(22377, 11, -2895.997803, 5396.909668, -8.855, 0, ''),
(22377, 12, -2895.734131, 5386.623535, -9.260, 0, ''),
(22377, 13, -2895.318359, 5367.613281, -9.456, 0, ''),
(22377, 14, -2890.306641, 5353.883301, -11.280, 1000, 'SAY_AKU_AMBUSH_B'),
(22377, 15, -2880.419189, 5334.625977, -10.629, 0, ''),
(22377, 16, -2866.394043, 5314.253906, -9.678, 0, ''),
(22377, 17, -2864.753174, 5277.734375, -11.087, 0, ''),
(22377, 18, -2856.330322, 5255.902344, -11.496, 5000, 'SAY_AKU_COMPLETE');

DELETE FROM script_waypoint WHERE entry=22458;
REPLACE INTO script_waypoint VALUES
(22458, 0, -3739.907959, 5393.691895, -4.213, 5000, 'SAY_LE_KEEP_SAFE'),
(22458, 1, -3733.334229, 5389.243164, -5.331, 0, ''),
(22458, 2, -3728.771729, 5385.649414, -3.704, 0, ''),
(22458, 3, -3717.267090, 5379.179199, -4.400, 0, ''),
(22458, 4, -3705.626465, 5379.261719, -7.711, 0, ''),
(22458, 5, -3688.279541, 5379.716309, -9.400, 0, ''),
(22458, 6, -3649.186523, 5389.111816, -11.917, 0, ''),
(22458, 7, -3612.791504, 5392.812500, -13.655, 0, ''),
(22458, 8, -3574.865479, 5412.704590, -16.543, 0, ''),
(22458, 9, -3564.438232, 5422.615723, -16.104, 0, ''),
(22458, 10, -3553.387695, 5444.732910, -12.184, 2500, 'arivve dig site SAY_LE_ARRIVE'),
(22458, 11, -3557.291016, 5465.319336, -9.282, 7500, 'dig 1'),
(22458, 12, -3548.102051, 5453.417969, -12.282, 10000, 'dig 2 SAY_LE_BURIED pause'),
(22458, 13, -3556.580322, 5446.475098, -11.920, 0, 'start returning'),
(22458, 14, -3564.438232, 5422.615723, -16.104, 0, ''),
(22458, 15, -3574.865479, 5412.704590, -16.543, 0, ''),
(22458, 16, -3612.791504, 5392.812500, -13.655, 0, ''),
(22458, 17, -3649.186523, 5389.111816, -11.917, 0, ''),
(22458, 18, -3688.279541, 5379.716309, -9.400, 0, ''),
(22458, 19, -3705.626465, 5379.261719, -7.711, 0, ''),
(22458, 20, -3717.267090, 5379.179199, -4.400, 0, ''),
(22458, 21, -3728.771729, 5385.649414, -3.704, 0, ''),
(22458, 22, -3733.334229, 5389.243164, -5.331, 0, ''),
(22458, 23, -3739.907959, 5393.691895, -4.213, 0, '');

DELETE FROM script_waypoint WHERE entry=22916;
REPLACE INTO script_waypoint VALUES
(22916, 0, 7461.49, -3121.06, 438.210, 7000, 'SAY_START'),
(22916, 1, 7465.26, -3115.50, 439.315, 0, ''),
(22916, 2, 7470.03, -3109.29, 439.333, 0, ''),
(22916, 3, 7473.77, -3104.65, 442.366, 0, ''),
(22916, 4, 7478.67, -3098.55, 443.551, 0, ''),
(22916, 5, 7482.78, -3093.35, 441.883, 0, ''),
(22916, 6, 7486.23, -3089.19, 439.698, 0, ''),
(22916, 7, 7484.64, -3084.55, 439.566, 0, ''),
(22916, 8, 7477.09, -3084.43, 442.132, 0, ''),
(22916, 9, 7470.66, -3084.86, 443.194, 0, ''),
(22916, 10, 7456.51, -3085.83, 438.863, 0, ''),
(22916, 11, 7446.00, -3085.59, 438.210, 0, ''),
(22916, 12, 7444.60, -3084.10, 438.323, 0, ''),
(22916, 13, 7445.58, -3080.92, 439.374, 5000, 'collect 1'),
(22916, 14, 7446.18, -3085.36, 438.210, 5000, 'SAY_RELIC1'),
(22916, 15, 7453.90, -3086.69, 439.454, 0, ''),
(22916, 16, 7459.41, -3085.50, 439.158, 0, ''),
(22916, 17, 7465.90, -3085.01, 442.329, 0, ''),
(22916, 18, 7472.80, -3084.81, 443.085, 0, ''),
(22916, 19, 7480.58, -3084.56, 440.642, 0, ''),
(22916, 20, 7484.59, -3084.71, 439.568, 0, ''),
(22916, 21, 7491.81, -3090.55, 440.052, 0, ''),
(22916, 22, 7497.13, -3095.34, 437.505, 0, ''),
(22916, 23, 7496.61, -3113.62, 434.554, 0, ''),
(22916, 24, 7501.79, -3123.79, 435.347, 0, ''),
(22916, 25, 7506.60, -3130.78, 434.179, 0, ''),
(22916, 26, 7504.53, -3133.46, 435.579, 5000, 'collect 2'),
(22916, 27, 7505.20, -3130.03, 434.151, 15000, 'SAY_RELIC2'),
(22916, 28, 7502.04, -3124.44, 435.298, 0, ''),
(22916, 29, 7495.90, -3113.93, 434.538, 0, ''),
(22916, 30, 7488.79, -3111.10, 434.310, 0, ''),
(22916, 31, 7477.81, -3105.37, 430.541, 0, 'summon'),
(22916, 32, 7471.49, -3092.55, 429.006, 0, ''),
(22916, 33, 7472.35, -3062.72, 428.341, 0, ''),
(22916, 34, 7472.26, -3054.92, 427.150, 0, ''),
(22916, 35, 7475.03, -3053.39, 428.672, 5000, 'collect 3'),
(22916, 36, 7472.40, -3057.21, 426.870, 5000, 'SAY_RELIC3'),
(22916, 37, 7472.39, -3062.86, 428.301, 0, ''),
(22916, 38, 7470.24, -3087.69, 429.045, 0, ''),
(22916, 39, 7475.24, -3099.03, 429.917, 0, ''),
(22916, 40, 7484.24, -3109.85, 432.719, 0, ''),
(22916, 41, 7489.10, -3111.31, 434.400, 0, ''),
(22916, 42, 7497.02, -3108.54, 434.798, 0, ''),
(22916, 43, 7497.75, -3097.70, 437.031, 0, ''),
(22916, 44, 7492.53, -3090.12, 440.041, 0, ''),
(22916, 45, 7490.43, -3085.44, 439.807, 0, ''),
(22916, 46, 7501.02, -3069.70, 441.875, 0, ''),
(22916, 47, 7509.15, -3064.67, 445.012, 0, ''),
(22916, 48, 7515.78, -3060.16, 445.727, 0, ''),
(22916, 49, 7516.46, -3058.11, 445.682, 10000, 'quest credit');

DELETE FROM script_waypoint WHERE entry=23002;
REPLACE INTO script_waypoint VALUES
(23002, 0, 3687.11, -3960.69, 31.8726, 0, ''),
(23002, 1, 3676.28, -3953.76, 29.9396, 0, ''),
(23002, 2, 3658.54, -3952.15, 30.0414, 0, ''),
(23002, 3, 3628.91, -3956.90, 29.4050, 0, ''),
(23002, 4, 3602.54, -3968.16, 31.5110, 0, ''),
(23002, 5, 3564.96, -3978.00, 30.3622, 0, ''),
(23002, 6, 3542.47, -3981.81, 29.1465, 0, ''),
(23002, 7, 3511.34, -3981.25, 30.2822, 0, ''),
(23002, 8, 3473.45, -3992.67, 30.2861, 0, ''),
(23002, 9, 3439.10, -4006.73, 29.2737, 0, ''),
(23002, 10, 3415.66, -4026.24, 25.2498, 0, ''),
(23002, 11, 3380.88, -4045.38, 26.3114, 0, ''),
(23002, 12, 3355.23, -4051.42, 25.5665, 0, ''),
(23002, 13, 3312.00, -4055.65, 28.3297, 0, ''),
(23002, 14, 3286.34, -4079.27, 28.2464, 0, ''),
(23002, 15, 3260.68, -4087.29, 31.4043, 0, ''),
(23002, 16, 3236.83, -4087.65, 32.6894, 0, ''),
(23002, 17, 3215.06, -4082.10, 32.4181, 0, ''),
(23002, 18, 3203.59, -4082.47, 32.7436, 0, ''),
(23002, 19, 3166.41, -4062.09, 33.2357, 0, ''),
(23002, 20, 3147.51, -4055.33, 33.5683, 0, ''),
(23002, 21, 3125.41, -4050.01, 34.6100, 0, ''),
(23002, 22, 3121.16, -4045.07, 36.5481, 0, ''),
(23002, 23, 3101.54, -4023.78, 33.7169, 0, ''),
(23002, 24, 3094.16, -4016.89, 33.8487, 0, ''),
(23002, 25, 3079.57, -4011.01, 35.7546, 0, ''),
(23002, 26, 3058.83, -4001.71, 34.3039, 0, ''),
(23002, 27, 3037.83, -3986.60, 33.4216, 0, ''),
(23002, 28, 3016.93, -3970.83, 33.3743, 0, ''),
(23002, 29, 2998.05, -3954.89, 33.2338, 0, ''),
(23002, 30, 2969.35, -3929.27, 33.4831, 0, ''),
(23002, 31, 2941.23, -3909.56, 31.3506, 0, ''),
(23002, 32, 2911.42, -3895.07, 32.0950, 0, ''),
(23002, 33, 2892.44, -3875.52, 30.8123, 0, ''),
(23002, 34, 2870.52, -3858.97, 32.1977, 0, ''),
(23002, 35, 2865.84, -3836.99, 32.1108, 0, ''),
(23002, 36, 2850.52, -3814.52, 32.8635, 0, ''),
(23002, 37, 2836.63, -3796.94, 33.1473, 0, ''),
(23002, 38, 2820.73, -3780.22, 28.6916, 0, ''),
(23002, 39, 2795.82, -3770.13, 30.1327, 0, ''),
(23002, 40, 2773.15, -3765.54, 30.2947, 0, ''),
(23002, 41, 2742.31, -3761.65, 30.1218, 0, ''),
(23002, 42, 2708.43, -3748.46, 21.2468, 0, ''),
(23002, 43, 2661.45, -3741.11, 21.9603, 0, ''),
(23002, 44, 2623.89, -3735.29, 25.8979, 0, ''),
(23002, 45, 2585.93, -3728.85, 28.5146, 0, ''),
(23002, 46, 2554.93, -3730.10, 26.6795, 0, ''),
(23002, 47, 2538.68, -3721.28, 28.1589, 0, ''),
(23002, 48, 2508.54, -3708.71, 29.6718, 0, ''),
(23002, 49, 2474.69, -3710.37, 31.0805, 0, ''),
(23002, 50, 2456.40, -3698.83, 31.6187, 0, ''),
(23002, 51, 2430.54, -3701.87, 31.0494, 0, ''),
(23002, 52, 2390.13, -3681.76, 29.5484, 0, ''),
(23002, 53, 2357.06, -3673.96, 29.8845, 0, ''),
(23002, 54, 2330.15, -3672.73, 31.1314, 0, ''),
(23002, 55, 2302.77, -3665.22, 29.4110, 0, ''),
(23002, 56, 2279.24, -3659.46, 29.6247, 0, ''),
(23002, 57, 2254.65, -3661.12, 29.6984, 0, ''),
(23002, 58, 2223.32, -3654.92, 31.0149, 0, ''),
(23002, 59, 2194.29, -3645.40, 32.0417, 0, ''),
(23002, 60, 2153.05, -3650.82, 31.2292, 0, ''),
(23002, 61, 2114.15, -3639.96, 31.7371, 0, ''),
(23002, 62, 2093.68, -3646.65, 31.3745, 0, ''),
(23002, 63, 2069.86, -3670.59, 30.6172, 0, ''),
(23002, 64, 2024.40, -3677.64, 29.7682, 0, ''),
(23002, 65, 1988.61, -3680.02, 31.8937, 0, ''),
(23002, 66, 1962.68, -3692.17, 32.7811, 0, ''),
(23002, 67, 1931.94, -3708.48, 31.3641, 0, ''),
(23002, 68, 1893.36, -3710.02, 33.0193, 0, ''),
(23002, 69, 1865.73, -3718.35, 32.1664, 0, ''),
(23002, 70, 1839.74, -3732.92, 32.5322, 0, ''),
(23002, 71, 1805.08, -3757.76, 32.6295, 0, ''),
(23002, 72, 1780.24, -3775.53, 30.5931, 0, ''),
(23002, 73, 1753.28, -3786.79, 30.7445, 0, ''),
(23002, 74, 1731.09, -3796.64, 36.8866, 0, '');

DELETE FROM script_waypoint WHERE entry=24358;
REPLACE INTO script_waypoint VALUES
(24358, 0, 121.193970, 1645.619385, 42.021, 0, ''),
(24358, 1, 132.051468, 1642.176025, 42.021, 5000, 'SAY_AT_GONG'),
(24358, 2, 120.670631, 1636.346802, 42.415, 0, ''),
(24358, 3, 120.536003, 1611.654663, 43.473, 10000, 'SAY_OPEN_ENTRANCE'),
(24358, 4, 120.536003, 1611.654663, 43.473, 0, '');

DELETE FROM script_waypoint WHERE entry=28070;
REPLACE INTO script_waypoint VALUES
(28070, 0, 1053.789795, 476.639343, 207.744, 0, ''),
(28070, 1, 1032.293945, 467.623444, 207.736, 0, ''),
(28070, 2, 1017.908752, 454.765656, 207.719, 0, ''),
(28070, 3, 1004.810120, 441.305115, 207.373, 0, ''),
(28070, 4, 988.694214, 424.422485, 207.425, 0, ''),
(28070, 5, 984.816345, 422.177917, 205.994, 0, ''),
(28070, 6, 977.204468, 420.026917, 205.994, 0, ''),
(28070, 7, 962.388123, 421.983307, 205.994, 0, ''),
(28070, 8, 950.419556, 416.515198, 205.994, 0, ''),
(28070, 9, 943.972290, 403.071228, 205.994, 0, ''),
(28070, 10, 947.921936, 387.683563, 205.994, 0, ''),
(28070, 11, 946.554749, 383.270782, 205.994, 0, ''),
(28070, 12, 944.654724, 380.630859, 207.286, 0, ''),
(28070, 13, 941.101563, 377.373413, 207.421, 0, 'reach tribunal, set pause'),
(28070, 14, 935.217896, 370.557343, 207.421, 0, ''),
(28070, 15, 928.035950, 363.026733, 204.018, 0, ''),
(28070, 16, 909.287292, 344.392792, 203.706, 0, ''),
(28070, 17, 897.946838, 333.634735, 203.706, 0, 'reach panel'),
(28070, 18, 918.914429, 351.312866, 203.706, 0, 'reach floor disc (end event begin)'),
(28070, 19, 928.070068, 363.296326, 204.091, 0, 'stealth'),
(28070, 20, 934.817627, 370.136261, 207.421, 0, ''),
(28070, 21, 941.501465, 377.254456, 207.421, 0, '');

DELETE FROM script_waypoint WHERE entry=28912;
REPLACE INTO script_waypoint VALUES
(28912, 0, 1653.518, -6038.374, 127.585, 0, 'Jump off'),
(28912, 1, 1653.978, -6034.614, 127.585, 5000, 'To Box'),
(28912, 2, 1653.854, -6034.726, 127.585, 500, 'Equip'),
(28912, 3, 1652.297, -6035.671, 127.585, 3000, 'Recover'),
(28912, 4, 1639.762, -6046.343, 127.948, 0, 'Escape'),
(28912, 5, 1640.963, -6028.119, 134.740, 0, ''),
(28912, 6, 1625.805, -6029.197, 134.740, 0, ''),
(28912, 7, 1626.845, -6015.085, 134.740, 0, ''),
(28912, 8, 1649.150, -6016.975, 133.240, 0, ''),
(28912, 9, 1653.063, -5974.844, 132.652, 5000, 'Mount'),
(28912, 10, 1654.747, -5926.424, 121.191, 0, 'Disappear');

DELETE FROM script_waypoint WHERE entry=30658;
REPLACE INTO script_waypoint VALUES
(30658, 0, 1830.504517, 799.356506, 44.341801, 5000, 'use activation'),
(30658, 1, 1832.461792, 800.431396, 44.311745, 10000, 'SAY_BEGIN call back guards'),
(30658, 2, 1824.786987, 803.828369, 44.363434, 0, 'SAY_LOCK_DOOR close door'),
(30658, 3, 1807.245483, 803.904114, 44.363434, 0, ''),
(30658, 4, 1785.160400, 803.856873, 44.364830, 30000, '');

DELETE FROM script_waypoint WHERE entry = 349;
REPLACE INTO script_waypoint VALUES
(349, 01,  -8769.591797, -2185.733643, 141.974564, 0, ''),
(349, 02,  -8776.540039, -2193.782959, 140.960159, 0, ''),
(349, 03,  -8783.289063, -2194.818604, 140.461731, 0, ''),
(349, 04,  -8792.520508, -2188.802002, 142.077728, 0, ''),
(349, 05,  -8807.547852, -2186.100830, 141.504135, 0, ''),
(349, 06,  -8818,        -2184.8,      139.153,    0, ''),
(349, 07,  -8825.805664, -2188.840576, 138.458832, 0, ''),
(349, 08,  -8827.522461, -2199.805664, 139.621933, 0, ''),
(349, 09,  -8821.140625, -2212.642334, 143.126419, 0, ''),
(349, 10,  -8809.175781, -2230.456299, 143.438431, 0, ''),
(349, 11,  -8797.040039, -2240.718262, 146.548203, 0, ''),
(349, 12,  -8795.242188, -2251.809814, 146.808044, 0, ''),
(349, 13,  -8780.159180, -2258.615967, 148.553772, 0, ''),
(349, 14,  -8762.650391, -2259.559326, 151.144241, 0, ''),
(349, 15,  -8754.357422, -2253.735352, 152.243073, 0, ''),
(349, 16,  -8741.869141, -2250.997070, 154.485718, 0, ''),
(349, 17,  -8733.218750, -2251.010742, 154.360031, 0, ''),
(349, 18,  -8717.474609, -2245.044678, 154.68614,  0, ''),
(349, 19,  -8712.240234, -2246.826172, 154.709473, 0, ''),
(349, 20,  -8693.840820, -2240.410889, 152.909714, 0, ''),
(349, 21,  -8681.818359, -2245.332764, 155.517838, 0, ''),
(349, 22,  -8669.86,     -2252.77,     154.854,    0, ''),
(349, 23,  -8670.56,     -2264.69,     156.978,    0, ''),
(349, 24,  -8676.557617, -2269.204346, 155.411316, 0, ''),
(349, 25,  -8673.340820, -2288.650146, 157.054123, 0, ''),
(349, 26,  -8677.760742, -2302.563965, 155.916580, 16000, 'Corp. Keeshan - Short Break Outside'),
(349, 27,  -8682.462891, -2321.688232, 155.916946, 0, ''),
(349, 28,  -8690.402344, -2331.779297, 155.970505, 0, ''),
(349, 29,  -8715.1,      -2353.95,     156.188,    0, ''),
(349, 30,  -8748.042969, -2370.701904, 157.988342, 0, ''),
(349, 31,  -8780.900391, -2421.370361, 156.108871, 0, ''),
(349, 32,  -8792.009766, -2453.379883, 142.746002, 0, ''),
(349, 33,  -8804.780273, -2472.429932, 134.192001, 0, ''),
(349, 34,  -8841.348633, -2503.626221, 132.276138, 0, ''),
(349, 35,  -8867.565430, -2529.892822, 134.738586, 0, ''),
(349, 36,  -8870.67,     -2542.08,     131.044,    0, ''),
(349, 37,  -8922.05,     -2585.31,     132.446,    0, ''),
(349, 38,  -8949.08,     -2596.87,     132.537,    0, ''),
(349, 39,  -8993.460938, -2604.042725, 130.756210, 0, ''),
(349, 40,  -9006.709961, -2598.469971, 127.966003, 0, ''),
(349, 41,  -9038.96,     -2572.71,     124.748,    0, ''),
(349, 42,  -9046.92,     -2560.64,     124.447,    0, ''),
(349, 43,  -9066.693359, -2546.633301, 123.110138, 0, ''),
(349, 44,  -9077.54,     -2541.67,     121.17,     0, ''),
(349, 45,  -9125.320313, -2490.059326, 116.057274, 0, ''),
(349, 46,  -9145.063477, -2442.239990, 108.231689, 0, ''),
(349, 47,  -9158.197266, -2425.363281, 105.500038, 0, ''),
(349, 48,  -9151.922852, -2393.671631, 100.856010, 0, ''),
(349, 49,  -9165.193359, -2376.031738, 94.821518,  0, ''),
(349, 50,  -9187.099609, -2360.520020, 89.923103,  0, ''),
(349, 51,  -9235.443359, -2305.239014, 77.925316,  0, ''),
(349, 52,  -9264.73,     -2292.92,     70.0089,    0, ''),
(349, 53,  -9277.468750, -2296.188721, 68.089630,  2500, 'Corp. Keeshan - quest-finish'),
(349, 54,  -9277.468750, -2296.188721, 68.089630,  0, 'Corp. Keeshan - Say Goodbye');

DELETE FROM script_waypoint WHERE entry=1379;
REPLACE INTO script_waypoint VALUES
(1379,01,-5751.12,-3441.01,301.743,0,''),
(1379,02,-5738.58,-3485.14,302.410,0,''),
(1379,03,-5721.62,-3507.85,304.011,0,''),
(1379,04,-5710.21,-3527.97,304.708,0,''),
(1379,05,-5706.92,-3542.89,304.871,0,''),
(1379,06,-5701.53,-3551.24,305.962,0,''),
(1379,07,-5699.53,-3555.69,306.505,0,''),
(1379,08,-5690.56,-3571.98,309.035,0,''),
(1379,09,-5678.61,-3587.17,310.607,0,''),
(1379,10,-5677.05,-3594.35,311.527,0,''),
(1379,11,-5674.39,-3605.19,312.239,0,''),
(1379,12,-5674.45,-3614.39,312.337,0,''),
(1379,13,-5673.05,-3630.56,311.105,0,''),
(1379,14,-5680.34,-3645.44,315.185,0,''),
(1379,15,-5684.46,-3650.05,314.687,0,''),
(1379,16,-5693.9,-3674.14,313.03,0,''),
(1379,17,-5701.43,-3712.54,313.959,0,''),
(1379,18,-5698.79,-3720.88,316.943,0,''),
(1379,19,-5699.95,-3733.63,318.597,0,'Protecting the Shipment - Ambush'),
(1379,20,-5698.61,-3754.74,322.047,0,''),
(1379,21,-5688.68,-3769,323.957,0,''),
(1379,22,-5688.14,-3782.65,322.667,0,''),
(1379,23,-5699.23,-3792.65,322.448,30000,'Protecting the Shipment - End'),
(1379,24,-5700.80,-3792.78,322.588,0,'');

DELETE FROM script_waypoint WHERE entry = 25208;
REPLACE INTO script_waypoint VALUES
(25208,0,4013.51,6390.33,29.970,15000,'Lurgglbr - after escaped from cage'),
(25208,1,4023.06,6379.43,29.210,0,''),
(25208,2,4033.61,6370.94,28.430,0,''),
(25208,3,4052.03,6367.42,27.370,0,''),
(25208,4,4061.13,6353.36,25.450,0,''),
(25208,5,4064.28,6330.76,25.310,0,''),
(25208,6,4057.94,6307.85,24.900,0,''),
(25208,7,4057.40,6290.12,24.430,0,''),
(25208,8,4065.63,6277.64,23.900,0,''),
(25208,9,4080.71,6280.77,26.920,0,''),
(25208,10,4098.90,6279.00,25.950,0,''),
(25208,11,4118.00,6277.81,25.720,0,''),
(25208,12,4129.47,6281.65,28.860,0,''),
(25208,13,4143.86,6282.57,29.180,4000,'Lurgglbr - outside cave'),
(25208,14,4159.54,6280.08,30.520,0,''),
(25208,15,4171.95,6291.50,22.250,0,''),
(25208,16,4184.86,6293.45,16.570,0,''),
(25208,17,4194.14,6301.28,13.310,0,''),
(25208,18,4210.34,6285.81,09.500,0,''),
(25208,19,4220.05,6272.75,07.770,0,''),
(25208,20,4242.45,6272.24,01.750,0,''),
(25208,21,4257.79,6252.91,-0.050,0,''),
(25208,22,4256.81,6230.74,-0.090,0,''),
(25208,23,4241.09,6217.87,-0.140,0,''),
(25208,24,4254.66,6205.16,-0.170,0,''),
(25208,25,4270.07,6188.42,0.059,15000,'Lurgglbr - final point');
-- EOF

DELETE FROM `strings` WHERE `entry` = 1328;
REPLACE INTO `strings` VALUES (1328, '|cffffcc00[Server]: |cff00ff00%s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM `spell_proc_event` WHERE `entry` = 49194;
REPLACE INTO `spell_proc_event` VALUES
(49194,0x00,15,0x00002000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0.000000,0.000000,0);

DELETE FROM `strings` WHERE `entry` = 11000;
REPLACE INTO `strings` VALUES (11000, '|cffff0000[Anticheat]: Cheater detected. Nickname: %s. Cheat type: %s.|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '|cffff0000[Античит]: Читер обнаружен. Имя: %s. Тип чита: %s.|r');

INSERT IGNORE INTO `gossip_menu_option` VALUES (0, 16, 0, 'Purchase a Dual Talent Specialization.', 18, 16, 0, 0, 0, 0, 10000000, 'Are you sure you wish to purchase a Dual Talent Specialization?', 15, 40, 1, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc1`, `option_text_loc2`, `option_text_loc3`, `option_text_loc4`, `option_text_loc5`, `option_text_loc6`, `option_text_loc7`, `option_text_loc8`, `box_text_loc1`, `box_text_loc2`, `box_text_loc3`, `box_text_loc4`, `box_text_loc5`, `box_text_loc6`, `box_text_loc7`, `box_text_loc8`) VALUES
(0, 10371, 'I want to buy dual-talent specialization', NULL, NULL, NULL, NULL, NULL, NULL, 'Я хочу купить специализацию Двойной талант', 'Are you sure you wish to purchase a Dual Talent Specialization?', NULL, NULL, NULL, NULL, NULL, NULL, 'Вы хотите купить специализацию Двойной талант?');
UPDATE `gossip_menu_option` SET `option_id` = '18', `action_menu_id` = 0, `action_script_id` = 0 WHERE `gossip_menu_option`.`menu_id` =10371 AND `gossip_menu_option`.`id` =0 ;

delete from `gameobject_spawns` where `map` = 617;
REPLACE INTO `gameobject_spawns` values
-- buffs
('200060','184663','617','1','1','1291.7','813.424','7.11472','4.64562','0','0','0.730314','-0.683111','120','100','1'),
('200061','184664','617','1','1','1291.7','768.911','7.11472','1.55194','0','0','0.700409','0.713742','120','100','1'),
-- doors
('200062','192642','617','1','1','1350.95','817.2','21.4096','3.15','0','0','0.99627','0.0862864','86400','100','1'),
('200063','192643','617','1','1','1232.65','764.913','21.4729','6.3','0','0','0.0310211','-0.999519','86400','100','1');

delete from `gameobject_battleground` where `guid` in (200060,200061,200062,200063);
REPLACE INTO `gameobject_battleground` values
-- buffs
('200060','252','0'),
('200061','252','0'),
-- doors
('200062','254','0'),
('200063','254','0');

delete from `battleground_events` where `map` = 617;
REPLACE INTO `battleground_events` values
('617','252','0','buffs'),
('617','254','0','doors');

-- doors
update `gameobject_template` set `faction` = 114, `flags` = 32, `size` = 1.5 where `entry` in (192642,192643);

DROP TABLE IF EXISTS `spell_dbc`;
CREATE TABLE `spell_dbc` (
  `Id` int(10) unsigned NOT NULL,
  `Dispel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Mechanic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Attributes` int(10) unsigned NOT NULL DEFAULT '0',
  `AttributesEx` int(10) unsigned NOT NULL DEFAULT '0',
  `AttributesEx2` int(10) unsigned NOT NULL DEFAULT '0',
  `AttributesEx3` int(10) unsigned NOT NULL DEFAULT '0',
  `AttributesEx4` int(10) unsigned NOT NULL DEFAULT '0',
  `AttributesEx5` int(10) unsigned NOT NULL DEFAULT '0',
  `Stances` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Targets` int(10) unsigned NOT NULL DEFAULT '0',
  `CastingTimeIndex` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `AuraInterruptFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `ProcFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `ProcChance` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ProcCharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BaseLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SpellLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `DurationIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RangeIndex` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `StackAmount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EquippedItemClass` int(11) NOT NULL DEFAULT '-1',
  `EquippedItemSubClassMask` int(11) NOT NULL DEFAULT '0',
  `EquippedItemInventoryTypeMask` int(11) NOT NULL DEFAULT '0',
  `Effect1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Effect2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Effect3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EffectDieSides1` int(11) NOT NULL DEFAULT '0',
  `EffectDieSides2` int(11) NOT NULL DEFAULT '0',
  `EffectDieSides3` int(11) NOT NULL DEFAULT '0',
  `EffectRealPointsPerLevel1` float NOT NULL DEFAULT '0',
  `EffectRealPointsPerLevel2` float NOT NULL DEFAULT '0',
  `EffectRealPointsPerLevel3` float NOT NULL DEFAULT '0',
  `EffectBasePoints1` int(11) NOT NULL DEFAULT '0',
  `EffectBasePoints2` int(11) NOT NULL DEFAULT '0',
  `EffectBasePoints3` int(11) NOT NULL DEFAULT '0',
  `EffectMechanic1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EffectMechanic2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EffectMechanic3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EffectImplicitTargetA1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EffectImplicitTargetA2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EffectImplicitTargetA3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EffectImplicitTargetB1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EffectImplicitTargetB2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EffectImplicitTargetB3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EffectRadiusIndex1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EffectRadiusIndex2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EffectRadiusIndex3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EffectApplyAuraName1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `EffectApplyAuraName2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `EffectApplyAuraName3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `EffectAmplitude1` int(11) NOT NULL DEFAULT '0',
  `EffectAmplitude2` int(11) NOT NULL DEFAULT '0',
  `EffectAmplitude3` int(11) NOT NULL DEFAULT '0',
  `EffectMultipleValue1` float NOT NULL DEFAULT '0',
  `EffectMultipleValue2` float NOT NULL DEFAULT '0',
  `EffectMultipleValue3` float NOT NULL DEFAULT '0',
  `EffectMiscValue1` int(11) NOT NULL DEFAULT '0',
  `EffectMiscValue2` int(11) NOT NULL DEFAULT '0',
  `EffectMiscValue3` int(11) NOT NULL DEFAULT '0',
  `EffectMiscValueB1` int(11) NOT NULL DEFAULT '0',
  `EffectMiscValueB2` int(11) NOT NULL DEFAULT '0',
  `EffectMiscValueB3` int(11) NOT NULL DEFAULT '0',
  `EffectTriggerSpell1` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectTriggerSpell2` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectTriggerSpell3` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMaskA1` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMaskA2` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMaskA3` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMaskB1` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMaskB2` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMaskB3` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMaskC1` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMaskC2` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMaskC3` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxTargetLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SpellFamilyName` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SpellFamilyFlags1` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellFamilyFlags2` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellFamilyFlags3` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxAffectedTargets` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `DmgClass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `PreventionType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `DmgMultiplier1` float NOT NULL DEFAULT '0',
  `DmgMultiplier2` float NOT NULL DEFAULT '0',
  `DmgMultiplier3` float NOT NULL DEFAULT '0',
  `AreaGroupId` int(11) NOT NULL DEFAULT '0',
  `SchoolMask` int(10) unsigned NOT NULL DEFAULT '0',
  `Comment` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Custom spell.dbc entries';

REPLACE INTO `spell_dbc` VALUES
('24395', '0', '0', '536936848', '32768', '4', '0', '0', '0', '0', '1', '1', '0', '0', '101', '0', '0', '40', '40', '85', '1', '0', '-1', '0', '0', '6', '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '77', '77', '77', '0', '0', '0', '0', '0', '0', '1', '5', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bestial Wrath - Immunity'),
('24396', '0', '0', '536936848', '32768', '4', '0', '0', '0', '0', '1', '1', '0', '0', '101', '0', '0', '40', '40', '85', '1', '0', '-1', '0', '0', '6', '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '77', '77', '77', '0', '0', '0', '0', '0', '0', '14', '13', '24', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bestial Wrath - Immunity'),
('24397', '0', '0', '536936848', '268468224', '4', '0', '0', '0', '0', '1', '1', '0', '0', '101', '0', '0', '40', '40', '85', '1', '0', '-1', '0', '0', '6', '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '77', '77', '77', '0', '0', '0', '0', '0', '0', '7', '10', '11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bestial Wrath - Immunity'),
('26592', '0', '0', '536936848', '268468224', '4', '0', '0', '0', '0', '1', '1', '0', '0', '101', '0', '0', '40', '40', '85', '1', '0', '-1', '0', '0', '6', '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '77', '77', '77', '0', '0', '0', '0', '0', '0', '2', '18', '30', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bestial Wrath - Immunity'),
('24900', '0', '0', '400', '1024', '0', '0', '2097152', '0', '1', '0', '1', '0', '0', '101', '0', '0', '0', '0', '21', '1', '0', '-1', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '166', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Heart of the Wild - Cat Bonus'),
('24899', '0', '0', '400', '1024', '0', '0', '2097152', '0', '144', '0', '1', '0', '0', '101', '0', '0', '0', '0', '21', '1', '0', '-1', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '137', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Heart of the Wild - Bear Bonus'),
('56817', '0', '0', '384', '0', '0', '0', '0', '0', '0', '0', '1', '0', '16', '100', '1', '0', '67', '67', '1', '0', '0', '-1', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rune Strike - Aura for 56815'),
('62388', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '21', '1', '0', '-1', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Demonic Circle: Teleport(48020) - casterAuraSpell');

DELETE FROM `spell_proc_event` WHERE `entry` IN (49208,49467,54639);
REPLACE INTO `spell_proc_event` VALUES
(49467, 0x00, 15, 0x00000010, 0x00020000, 0x00000000, 0x00010010, 0x00000000, 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0.000000, 0.000000, 0),
(49208, 0x00, 15, 0x00400000, 0x00010000, 0x00000000, 0x00010010, 0x00000000, 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0.000000, 0.000000, 0),
(54639, 0x00, 15, 0x00400000, 0x00010000, 0x00000000, 0x00010010, 0x00000000, 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0.000000, 0.000000, 0);

DELETE FROM spell_area WHERE spell IN (74411);
REPLACE INTO spell_area VALUES 
-- Eye of The Storm (map 566)
(74411,3820,0,0,0,0,0,2,1), -- Eye of the storm (general)
(74411,3869,0,0,0,0,0,2,1), -- Mage Tower
(74411,3870,0,0,0,0,0,2,1), -- BE Tower
(74411,3871,0,0,0,0,0,2,1), -- Draenei Ruins
(74411,3872,0,0,0,0,0,2,1), -- Fel Reaver Ruins

-- Arathi Basin (map 529)
(74411,3358,0,0,0,0,0,2,1), -- Arathi Basin (general)
(74411,3317,0,0,0,0,0,2,1), -- Trollbane Hall
(74411,3418,0,0,0,0,0,2,1), -- Defilers Den
(74411,3420,0,0,0,0,0,2,1), -- Farm
(74411,3421,0,0,0,0,0,2,1), -- Blacksmith
(74411,3422,0,0,0,0,0,2,1), -- Lumber Mill
(74411,3424,0,0,0,0,0,2,1), -- Stables
(74411,3423,0,0,0,0,0,2,1), -- Gold Mine

-- Warsong Gulch (map 489)
(74411,3277,0,0,0,0,0,2,1), -- Warsong Gulch (general)
(74411,3320,0,0,0,0,0,2,1), -- Warsong Luber Mill
(74411,3321,0,0,0,0,0,2,1), -- Silverwing Hold
(74411,4571,0,0,0,0,0,2,1), -- Silverwing Flag Room
(74411,4572,0,0,0,0,0,2,1), -- Warsong Flag Room

-- Alterac Valley (map 30)
(74411,2597,0,0,0,0,0,2,1), -- Alterac Valley (general)
(74411,2957,0,0,0,0,0,2,1), -- Irondeep Mine
(74411,2958,0,0,0,0,0,2,1), -- Stonehearth Outpost
(74411,2959,0,0,0,0,0,2,1), -- Dun Baldar
(74411,2960,0,0,0,0,0,2,1), -- Icewing Pass
(74411,2961,0,0,0,0,0,2,1), -- Frostwolf Willage
(74411,2962,0,0,0,0,0,2,1), -- Tower Point
(74411,2963,0,0,0,0,0,2,1), -- Coldtooth Mine
(74411,2964,0,0,0,0,0,2,1), -- Winterax Hold
(74411,2977,0,0,0,0,0,2,1), -- Iceblood Garrison
(74411,2978,0,0,0,0,0,2,1), -- Frostwolf Keep
(74411,3017,0,0,0,0,0,2,1), -- Frost Dagger Pass
(74411,3057,0,0,0,0,0,2,1), -- Field of Strife
(74411,3058,0,0,0,0,0,2,1), -- Icewing Cavern
(74411,3297,0,0,0,0,0,2,1), -- Frostwolf Graveyard
(74411,3298,0,0,0,0,0,2,1), -- Frostwolf Pass
(74411,3299,0,0,0,0,0,2,1), -- Dun Baldar Pass
(74411,3300,0,0,0,0,0,2,1), -- Iceblood Graveyard
(74411,3301,0,0,0,0,0,2,1), -- Snowfall Graveyard
(74411,3302,0,0,0,0,0,2,1), -- Stonehearth Graveyard
(74411,3303,0,0,0,0,0,2,1), -- Stormpike Graveyard
(74411,3304,0,0,0,0,0,2,1), -- Icewing Bunker
(74411,3305,0,0,0,0,0,2,1), -- Stonhearth Bunker
(74411,3306,0,0,0,0,0,2,1), -- Wildpaw Ridge
(74411,3318,0,0,0,0,0,2,1), -- Rock of Durotan
(74411,3337,0,0,0,0,0,2,1), -- Wildpaw Cavern
(74411,3338,0,0,0,0,0,2,1), -- The Vieled Cleft
(74411,4407,0,0,0,0,0,2,1), -- Hall of the Frostwolf
(74411,4408,0,0,0,0,0,2,1), -- Hall of the Stormpike

-- Stand of the Ancients (map 607)
(74411,4384,0,0,0,0,0,2,1), -- Strand of the Ancients (general)
(74411,4604,0,0,0,0,0,2,1), -- Gate of the Red Sun
(74411,4605,0,0,0,0,0,2,1), -- Gate of the Blue Sapphire
(74411,4606,0,0,0,0,0,2,1), -- Gate of the Green Emerald
(74411,4607,0,0,0,0,0,2,1), -- Gate of the Purple Amethyst
(74411,4608,0,0,0,0,0,2,1), -- Gate of the Yellow Moon
(74411,4609,0,0,0,0,0,2,1), -- Courtyard of the Ancients
(74411,4610,0,0,0,0,0,2,1), -- Landing Beach

-- Isle of Conquest (map 628)
(74411,4710,0,0,0,0,0,2,1), -- Isle of Conquest (general)
(74411,4741,0,0,0,0,0,2,1), -- Isle of Conquest - No Man's Land
(74411,4747,0,0,0,0,0,2,1), -- Workshop
(74411,4748,0,0,0,0,0,2,1), -- Quarry
(74411,4749,0,0,0,0,0,2,1), -- Docks
(74411,4750,0,0,0,0,0,2,1), -- Hangar
(74411,4751,0,0,0,0,0,2,1), -- Refinery
(74411,4752,0,0,0,0,0,2,1), -- Horde Keep
(74411,4753,0,0,0,0,0,2,1); -- Alliance Keep

DELETE FROM spell_area WHERE spell IN (74410);
REPLACE INTO spell_area VALUES 
(74410,4406,0,0,0,0,0,2,1), -- Ring of Valor (map 618)
(74410,3968,0,0,0,0,0,2,1), -- Ruins of Loraeron (map 572)
(74410,3638,0,0,0,0,0,2,1), -- Ring of Trials (map 572)
(74410,3698,0,0,0,0,0,2,1), -- Nagrand Arena (map 559)
(74410,3702,0,0,0,0,0,2,1), -- BEM Arena (map 562)
(74410,4378,0,0,0,0,0,2,1); -- Dalaran Arena (map 617);

DELETE FROM `spell_pet_auras` WHERE `aura` = 54566;
REPLACE INTO `spell_pet_auras` VALUES
(48965,1,26125,54566),
(49572,1,26125,54566),
(49571,1,26125,54566);

DELETE FROM `pet_levelstats` WHERE `creature_entry` = 26125;
REPLACE INTO `pet_levelstats` VALUES
(26125,1,48,80,10,20,16,13,20,8),
(26125,2,105,106,67,22,17,14,21,9),
(26125,3,162,132,124,24,18,15,22,10),
(26125,4,219,158,181,26,19,16,23,11),
(26125,5,276,184,238,28,20,17,24,12),
(26125,6,333,210,295,30,21,18,25,13),
(26125,7,390,236,352,32,22,19,26,14),
(26125,8,447,262,409,34,23,20,27,15),
(26125,9,504,288,466,36,24,21,28,16),
(26125,10,561,314,523,38,25,22,29,17),
(26125,11,618,340,580,40,26,23,30,18),
(26125,12,675,366,637,42,27,24,31,19),
(26125,13,732,392,694,44,28,25,32,20),
(26125,14,789,418,751,46,29,26,33,21),
(26125,15,846,444,808,48,30,27,34,22),
(26125,16,903,470,865,50,31,28,35,23),
(26125,17,960,496,922,52,32,29,36,24),
(26125,18,1017,522,979,54,33,30,37,25),
(26125,19,1074,548,1036,56,34,31,38,26),
(26125,20,1131,574,1093,58,35,32,39,27),
(26125,21,1188,600,1150,60,36,33,40,28),
(26125,22,1245,626,1207,62,37,34,41,29),
(26125,23,1302,652,1264,64,38,35,42,30),
(26125,24,1359,678,1321,66,39,36,43,31),
(26125,25,1416,704,1378,68,40,37,44,32),
(26125,26,1473,730,1435,70,41,38,45,33),
(26125,27,1530,756,1492,72,42,39,46,34),
(26125,28,1587,782,1549,74,43,40,47,35),
(26125,29,1644,808,1606,76,44,41,48,36),
(26125,30,1701,834,1663,78,45,42,49,37),
(26125,31,1758,860,1720,80,46,43,50,38),
(26125,32,1815,886,1777,82,47,44,51,39),
(26125,33,1872,912,1834,84,48,45,52,40),
(26125,34,1929,938,1891,86,49,46,53,41),
(26125,35,1986,964,1948,88,50,47,54,42),
(26125,36,2043,990,2005,90,51,48,55,43),
(26125,37,2100,1016,2062,92,52,49,56,44),
(26125,38,2157,1042,2119,94,53,50,57,45),
(26125,39,2214,1068,2176,96,54,51,58,46),
(26125,40,2271,1094,2233,98,55,52,59,47),
(26125,41,2328,1120,2290,100,56,53,60,48),
(26125,42,2385,1146,2347,102,57,54,61,49),
(26125,43,2442,1172,2404,104,58,55,62,50),
(26125,44,2499,1198,2461,106,59,56,63,51),
(26125,45,2556,1224,2518,108,60,57,64,52),
(26125,46,2613,1250,2575,110,61,58,65,53),
(26125,47,2670,1276,2632,112,62,59,66,54),
(26125,48,2727,1302,2689,114,63,60,67,55),
(26125,49,2784,1328,2746,116,64,61,68,56),
(26125,50,2841,1354,2803,118,65,62,69,57),
(26125,51,2898,1380,2860,120,66,63,70,58),
(26125,52,2955,1406,2917,122,67,64,71,59),
(26125,53,3012,1432,2974,124,68,65,72,60),
(26125,54,3069,1458,3031,126,69,66,73,61),
(26125,55,3126,1484,3088,128,70,67,74,62),
(26125,56,3183,1510,3145,130,71,68,75,63),
(26125,57,3240,1536,3202,132,72,69,76,64),
(26125,58,3297,1562,3259,134,73,70,77,65),
(26125,59,3354,1588,3316,136,74,71,78,66),
(26125,60,3411,1614,3373,138,75,72,79,67),
(26125,61,3468,1640,3430,140,76,73,80,68),
(26125,62,3525,1666,3487,142,77,74,81,69),
(26125,63,3582,1692,3544,144,78,75,82,70),
(26125,64,3639,1718,3601,146,79,76,83,71),
(26125,65,3696,1744,3658,148,80,77,84,72),
(26125,66,3753,1770,3715,150,81,78,85,73),
(26125,67,3810,1796,3772,152,82,79,86,74),
(26125,68,3867,1822,3829,154,83,80,87,75),
(26125,69,3924,1848,3886,156,84,81,88,76),
(26125,70,3981,1874,3943,158,85,82,89,77),
(26125,71,4038,1900,4000,160,86,83,90,78),
(26125,72,4095,1926,4057,162,87,84,91,79),
(26125,73,4152,1952,4114,164,88,85,92,80),
(26125,74,4209,1978,4171,166,89,86,93,81),
(26125,75,4266,2004,4228,168,90,87,94,82),
(26125,76,4323,2030,4285,170,91,88,95,83),
(26125,77,4380,2056,4342,172,92,89,96,84),
(26125,78,4437,2082,4399,174,93,90,97,85),
(26125,79,4494,2108,4456,176,94,91,98,86),
(26125,80,4551,2134,4513,178,95,92,99,87);

DROP TABLE IF EXISTS spell_check;
CREATE TABLE `spell_check` (
  spellid           mediumint(7) unsigned NOT NULL default '0',
  SpellFamilyName   smallint(5) NOT NULL default '-1',
  SpellFamilyMaskA  bigint(30)  NOT NULL default '-1', /* 0xFFFFFFFFFFFFFFFF */
  SpellFamilyMaskB  int(10)     NOT NULL default '-1', /* 0xFFFFFFFF         */
  SpellIcon         int(10)     NOT NULL default '-1',
  SpellVisual       int(10)     NOT NULL default '-1',
  SpellCategory     int(10)     NOT NULL default '-1',
  EffectType        int(10)     NOT NULL default '-1',
  EffectAura        int(10)     NOT NULL default '-1',
  EffectIdx         tinyint(3)  NOT NULL default '-1',
  Name              varchar(40) NOT NULL default '',
  Code              varchar(40) NOT NULL default '',
  PRIMARY KEY (spellid,SpellFamilyName,SpellFamilyMaskA,SpellFamilyMaskB,SpellIcon,SpellVisual,SpellCategory,EffectType,EffectAura,EffectIdx,Code)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

REPLACE INTO spell_check (spellid,SpellFamilyName,SpellFamilyMaskA,SpellFamilyMaskB,SpellIcon,SpellVisual,SpellCategory,EffectType,EffectAura,EffectIdx,Name,Code) VALUES
/* sorted by spell ids */
/*id   fm familyMaskA        fmMaskB    icon vis  cat  eff aur ef name                                  code                   */
(1535, 11,                -1,        -1,  33,  -1,  -1,  3, -1,-1,'Fire Nova',                          'Spell::EffectDummy'),
(1784,  8,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Stealth',                            'Spell::EffectTriggerSpell'),
(2584, -1,                -1,        -1,  -1,  -1,  -1, -1,  4,-1,'Waiting to Resurrect',               'Spell::EffectSpiritHeal'),
(2641, -1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Dismiss Pet',                        'Spell::CheckTargetCreatureType'),
(2764, -1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Throw',                              'Spell::CheckCast'),
(2825, 11,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Bloodlust',                          'Spell::cast'),
(6788, -1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Weakened Soul',                      'Spell::cast'),
(9512, -1,                -1,        -1,  -1,  -1,  -1, 30, -1,-1,'Restore Energy',                     'Spell::EffectEnergize'),
(4073, -1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Mechanical Dragonling',              'Spell::EffectDummy'),
(5938,  8,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Shiv',                               'Spell::EffectDummy'),
(5940, -1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Shiv',                               'Spell::EffectDummy'),
(8017, 11,0x0000000000400000,0x00000000,  -1,  -1,  -1, 54, -1,-1,'Rockbiter Weapon',                   'Spell::EffectEnchantItemTmp'),
(8018, 11,0x0000000000400000,0x00000000,  -1,  -1,  -1, 54, -1,-1,'Rockbiter Weapon',                   'Spell::EffectEnchantItemTmp'),
(8019, 11,0x0000000000400000,0x00000000,  -1,  -1,  -1, 54, -1,-1,'Rockbiter Weapon',                   'Spell::EffectEnchantItemTmp'),
(8063,  0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Deviate Fish',                       'Spell::EffectDummy'),
(8064, -1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Sleepy',                             'Spell::EffectDummy'),
(8065, -1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Invigorate',                         'Spell::EffectDummy'),
(8066, -1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Shrink',                             'Spell::EffectDummy'),
(8067, -1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Party Time!',                        'Spell::EffectDummy'),
(8068, -1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Healthy Spirit',                     'Spell::EffectDummy'),
(8213,  0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Savory Deviate Delight',             'Spell::EffectDummy'),
(8219, -1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Flip Out',                           'Spell::EffectDummy'),
(8220, -1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Flip Out',                           'Spell::EffectDummy'),
(8221, -1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Yaaarrrr',                           'Spell::EffectDummy'),
(8222, -1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Yaaarrrr',                           'Spell::EffectDummy'),
(8349, -1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Fire Nova',                          'Spell::EffectDummy'),
(8498, 11,                -1,        -1,  33,  -1,  -1,  3, -1,-1,'Fire Nova',                          'Spell::EffectDummy'),
(8499, 11,                -1,        -1,  33,  -1,  -1,  3, -1,-1,'Fire Nova',                          'Spell::EffectDummy'),
(8502, -1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Fire Nova',                          'Spell::EffectDummy'),
(8503, -1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Fire Nova',                          'Spell::EffectDummy'),
(8593,  0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Symbol of life',                     'Spell::EffectDummy'),
(10399,11,0x0000000000400000,0x00000000,  -1,  -1,  -1, 54, -1,-1,'Rockbiter Weapon',                   'Spell::EffectEnchantItemTmp'),
(11306,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Fire Nova',                          'Spell::EffectDummy'),
(11307,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Fire Nova',                          'Spell::EffectDummy'),
(11314,11,                -1,        -1,  33,  -1,  -1,  3, -1,-1,'Fire Nova',                          'Spell::EffectDummy'),
(11315,11,                -1,        -1,  33,  -1,  -1,  3, -1,-1,'Fire Nova',                          'Spell::EffectDummy'),
(11196,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Recently Bandaged',                  'Spell::cast'),
(11958, 3,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Cold Snap',                          'Spell::EffectDummy'),
(12749,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Mithril Mechanical Dragonling',      'Spell::EffectDummy'),
(12975, 4,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Last Stand',                         'Spell::EffectDummy'),
(12976,-1,                -1,        -1,  -1,  -1,  -1,  6, 34, 0,'Last Stand',                         'Spell::EffectDummy'),
(13099,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Net-o-Matic',                        'Spell::EffectDummy'),
(13119,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Net-o-Matic',                        'Spell::EffectDummy'),
(13120, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'net-o-matic',                        'Spell::EffectDummy'),
(13166,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Gnomish Battle Chicken',             'Spell::EffectDummy'),
(13567, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Dummy Trigger',                      'Spell::EffectDummy'),
(14185, 8,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Preparation',                        'Spell::EffectDummy'),
(14278, 8,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Ghostly Strike',                     'Spell::EffectWeaponDmg'),
(15237, 6,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Nova',                          'Spell::cast'),
(15430, 6,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Nova',                          'Spell::cast'),
(15431, 6,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Nova',                          'Spell::cast'),
(15998, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Capture Worg Pup',                   'Spell::EffectDummy'),
(16566,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Net-o-Matic',                        'Spell::EffectDummy'),
(16589, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Noggenfogger Elixir',                'Spell::EffectDummy'),
(16591,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Noggenfogger Elixir',                'Spell::EffectDummy'),
(16593,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Noggenfogger Elixir',                'Spell::EffectDummy'),
(16595,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Noggenfogger Elixir',                'Spell::EffectDummy'),
(16857, 7,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Faerie Fire',                        'Spell::cast'),
(17251, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Spirit Healer Res',                  'Spell::EffectDummy'),
(17269,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Create Resonating Skull',            'Spell::EffectDummy'),
(17270,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Create Bone Dust',                   'Spell::EffectDummy'),
(17271, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Test Fetid Skull',                   'Spell::EffectDummy'),
(19658,-1,                -1,        -1,  -1,  -1,  -1, 10, -1,-1,'Devour Magic Effect',                'Spell::EffectDispel'),
(19804,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Arcanite Dragonling',                'Spell::EffectDummy'),
(19823,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Fire Nova Visual',                   'Spell::EffectDummy'),
(20167,-1,                -1,        -1,  -1,  -1,  -1, 10, -1,-1,'Seal of Light',                      'Spell::EffectHeal'),
(20187,10,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Judgement of Righteousness',         'Spell::EffectSchoolDMG'),
(20253, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Intercept',                          'Spell::EffectSchoolDMG'),
(20424,10,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Seal of Command',                    'Spell::SetTargetMap'),
(20473,10,                -1,        -1, 156,  -1,  -1,  3, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(20577,-1,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Cannibalize',                        'Spell::CheckTarget'),
(20577, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Cannibalize',                        'Spell::EffectDummy'),
(20577,-1,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Cannibalize',                        'Spell::SetTargetMap'),
(20578,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Cannibalize',                        'Spell::EffectDummy'),
(20594, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Stoneskin',                          'Spell::cast'),
(20647,-1,                -1,        -1,  -1,  -1,  -1,  2, -1, 0,'Execute',                            'Spell::EffectDummy'),
(20929,10,                -1,        -1, 156,  -1,  -1,  3, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(20930,10,                -1,        -1, 156,  -1,  -1,  3, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(21887,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Warrior\'s Wrath',                   'Spell::EffectDummy'),
(21977, 4,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Warrior\'s Wrath',                   'Spell::EffectDummy'),
(22012,-1,                -1,        -1,  -1,  -1,  -1,117, -1,-1,'Spirit Heal',                        'Spell::EffectSpiritHeal'),
(23019, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Crystal Prison Dummy DND',           'Spell::EffectDummy'),
(23074, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Arcanite Dragonling',                'Spell::EffectDummy'),
(23075, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Mithril Mechanical Dragonling',      'Spell::EffectDummy'),
(23076, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Mechanical Dragonling',              'Spell::EffectDummy'),
(23133, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Gnomish Battle Chicken',             'Spell::EffectDummy'),
(23170,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Brood Affliction: Bronze',           'Spell::EffectDummy'),
(23334,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Horde Flag Drop',                    'Spell::CheckCasterAuras'),
(23336,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Alliance Flag Drop',                 'Spell::CheckCasterAuras'),
(23356,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Taming Lesson',                      'Spell::CheckTargetCreatureType'),
(23441,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Gadgetzan Transporter',              'Spell::EffectDummy'),
(23442,-1,                -1,        -1,  -1,  -1,  -1,  5, -1,-1,'Everlook Transporter',               'Spell::EffectTeleportUnits'),
(23444,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Transporter Malfunction',            'Spell::EffectDummy'),
(23445,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Evil Twin',                          'Spell::EffectDummy'),
(23445,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Evil Twin',                          'Spell::EffectTeleportUnits'),
(23446,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Gadgetzan Transporter Failure',      'Spell::EffectDummy'),
(23448, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Transporter Arrival',                'Spell::EffectDummy'),
(23449,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Transporter Malfunction',            'Spell::EffectTeleportUnits'),
(23453, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Gnomish Transporter',                'Spell::EffectDummy'),
(23455,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Nova',                          'Spell::cast'),
(23458,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Nova',                          'Spell::cast'),
(23459,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Nova',                          'Spell::cast'),
(23645, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Hourglass Sand',                     'Spell::EffectDummy'),
(23725, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Gift of Life',                       'Spell::EffectDummy'),
(23782,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Gift of Life',                       'Spell::EffectDummy'),
(23783,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Gift of Life',                       'Spell::EffectDummy'),
(23881, 4,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Bloodthirst',                        'Spell::EffectDummy'),
(23885,-1,                -1,        -1,  -1,  -1,  -1,  6, 42, 0,'Bloodthirst',                        'Spell::EffectDummy'),
(23989, 9,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Readiness',                          'Spell::EffectDummy'),
(24340, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Meteor',                             'Spell::EffectSchoolDMG'),
(24532,-1,                -1,        -1,  -1,  -1,  -1, 30, -1,-1,'Burst of Energy',                    'Spell::EffectEnergize'),
(24571,-1,                -1,        -1,  -1,  -1,  -1, 30, -1,-1,'Blood Fury',                         'Spell::EffectEnergize'),
(24575,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Brittle Armor',                      'Spell::EffectTriggerSpell'),
(25329,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Nova',                          'Spell::cast'),
(25331, 6,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Nova',                          'Spell::cast'),
(25535,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Fire Nova',                          'Spell::EffectDummy'),
(25537,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Fire Nova',                          'Spell::EffectDummy'),
(25546,11,                -1,        -1,  33,  -1,  -1,  3, -1,-1,'Fire Nova',                          'Spell::EffectDummy'),
(25547,11,                -1,        -1,  33,  -1,  -1,  3, -1,-1,'Fire Nova',                          'Spell::EffectDummy'),
(25599, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Thundercrash',                       'Spell::EffectSchoolDMG'),
(25771,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Forbearance',                        'Spell::cast'),
(25771,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Forbearance',                        'Spell::CheckCast'),
(25858,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Reindeer',                           'Spell::EffectDummy'),
(25859,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Reindeer',                           'Spell::EffectDummy'),
(25860, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Reindeer Transformation',            'Spell::EffectDummy'),
(25902,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(25903,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(25911,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(25912,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(25913,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(25914,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(25991, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Poison Bolt Volley (Pincess Huhuran)','Spell::SetTargetMap'),
(26074, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Holiday Cheer',                      'Spell::EffectDummy'),
(26464,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Mercurial Shield',                   'Spell::EffectTriggerSpell'),
(26467,-1,                -1,        -1,  -1,  -1,  -1,  6, 42, 0,'Persistent Shield',                  'Spell::EffectDummy'),
(26558, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Meteor',                             'Spell::EffectSchoolDMG'),
(26789, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Shard of the Fallen Star',           'Spell::EffectSchoolDMG'),
(27174,10,                -1,        -1, 156,  -1,  -1,  3, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(27175,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(27176,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(27799, 6,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Nova',                          'Spell::cast'),
(27800, 6,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Nova',                          'Spell::cast'),
(27801, 6,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Nova',                          'Spell::cast'),
(27803,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Nova',                          'Spell::cast'),
(27804,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Nova',                          'Spell::cast'),
(27805,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Nova',                          'Spell::cast'),
(28006, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Arcane Cloaking',                    'Spell::EffectDummy'),
(28305,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Mana Leech',                         'Spell::EffectTriggerSpell'),
(28542, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Life Drain',                         'Spell::SetTargetMap'),
(28796, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Poison Bolt Volley',                 'Spell::SetTargetMap'),
(28884, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Meteor',                             'Spell::EffectSchoolDMG'),
(29142, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Eyesore Blaster',                    'Spell::EffectSchoolDMG'),
(29213, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Curse of the Plaguebringer',         'Spell::SetTargetMap'),
(29294,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Naxxramas Entry Flag Effect DND',    'Spell::EffectDummy'),
(29200, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Purify Helboar Meat',                'Spell::EffectDummy'),
(29277,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Summon Purified Helboar Meat',       'Spell::EffectDummy'),
(29278,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Summon Toxic Helboar Meat',          'Spell::EffectDummy'),
(29435, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Capture Female Kaliri Hatchling',    'Spell::EffectDummy'),
(29702,-1,                -1,        -1,  -1,  -1,  -1, 54, -1,-1,'Greater Ward of Shielding',          'Spell::EffectEnchantItemTmp'),
(29858, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Soulshatter',                        'Spell::EffectDummy'),
(30452,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Rocket Boots Engaged',               'Spell::EffectDummy'),
(30456,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Nigh-Invulnerability',               'Spell::EffectDummy'),
(30457,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Complete Vulnerability',             'Spell::EffectDummy'),
(30458, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Nigh Invulnerability',               'Spell::EffectDummy'),
(30501,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Poultryized!',                       'Spell::EffectDummy'),
(30504,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Poultryized!',                       'Spell::EffectDummy'),
(30507, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Poultryizer',                        'Spell::EffectDummy'),
(30708,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Totem of Wrath',                     'Spell::cast'),
(30843, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Enfeeble',                           'Spell::SetTargetMap'),
(31225, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Shimmering Vessel',                  'Spell::EffectDummy'),
(31231, 8,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Cheat Death',                        'Spell::EffectDummy'),
(31298, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Sleep',                              'Spell::SetTargetMap'),
(31347, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Doom',                               'Spell::SetTargetMap'),
(31436, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Malevolent Cleave',                  'Spell::EffectSchoolDMG'),
(31687, 3,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Summon Water Elemental',             'Spell::EffectDummy'),
(31789,10,                -1,        -1,  -1,  -1,  -1,  3, -1, 0,'Righteous Defense',                  'Spell::EffectDummy'),
(31790,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Righteous Defense',                  'Spell::EffectTriggerSpell'),
(31803,-1,                -1,        -1,  -1,  -1,  -1,  6,  3,-1,'Holy Vengeance',                     'Spell::EffectSchoolDMG'),
(31818,-1,                -1,        -1,  -1,  -1,  -1, 30, -1, 0,'Life Tap',                           'Spell::EffectDummy'),
(31930,-1,                -1,        -1,  -1,  -1,  -1, 30, -1,-1,'Judgements of the Wise',             'Spell::EffectEnergize'),
(32182,11,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Heroism',                            'Spell::cast'),
(32409,-1,                -1,        -1,  -1,  -1,  -1,  6,  3,-1,'Shadow Word: Death',                 'Spell::EffectSchoolDMG'),
(32553,-1,                -1,        -1,  -1,  -1,  -1, 30, -1, 0,'Life Tap',                           'Spell::EffectDummy'),
(32752,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Summoning Disorientation',           'Spell::CheckCast'),
(32813,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Squirrel Form',                      'Spell::EffectDummy'),
(32816,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Giraffe Form',                       'Spell::EffectDummy'),
(32817,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Serpent Form',                       'Spell::EffectDummy'),
(32818,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Dragonhawk Form',                    'Spell::EffectDummy'),
(32819,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Worgen Form',                        'Spell::EffectDummy'),
(32820,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Sheep Form',                         'Spell::EffectDummy'),
(32826, 3,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Polymorph Cast Visual',              'Spell::EffectDummy'),
(32835,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Soulshatter',                        'Spell::EffectDummy'),
(33053,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Mr Pinchy\'s Blessing',              'Spell::EffectDummy'),
(33057,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Summon Mighty Mr. Pinchy',           'Spell::EffectDummy'),
(33059,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Summon Furious Mr. Pinchy',          'Spell::EffectDummy'),
(33060, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Make a Wish',                        'Spell::EffectDummy'),
(33062,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Tiny Magical Crawdad',               'Spell::EffectDummy'),
(33064,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Mr. Pinchy\'s Gift',                 'Spell::EffectDummy'),
(33072,10,                -1,        -1, 156,  -1,  -1,  3, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(33073,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(33074,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(33711, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Murmur\'s Touch',                    'Spell::SetTargetMap'),
(34846,-1,                -1,        -1,  -1,  -1,  -1, 30, -1, 0,'Charge',                             'Spell::EffectDummy'),
(34991,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Summon Netherstorm Flag',            'Spell::CheckCasterAuras'),
(35139, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Throw Boom\'s Doom',                 'Spell::EffectSchoolDMG'),
(35181, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Dive Bomb',                          'Spell::EffectSchoolDMG'),
(35743,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Socrethar Portal',                   'Spell::EffectDummy'),
(35744,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Socrethar Portal',                   'Spell::EffectDummy'),
(35745, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Socrethar\'s Stone',                 'Spell::EffectDummy'),
(36032,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'',                                   'Spell::EffectSchoolDMG'),
(36744,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Rockbiter Weapon',                   'Spell::EffectEnchantItemTmp'),
(36751,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Rockbiter Weapon',                   'Spell::EffectEnchantItemTmp'),
(36753,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Rockbiter Weapon',                   'Spell::EffectEnchantItemTmp'),
(36754,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Rockbiter Weapon',                   'Spell::EffectEnchantItemTmp'),
(36755,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Rockbiter Weapon',                   'Spell::EffectEnchantItemTmp'),
(36758,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Rockbiter Weapon',                   'Spell::EffectEnchantItemTmp'),
(36760,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Rockbiter Weapon',                   'Spell::EffectEnchantItemTmp'),
(36761,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Rockbiter Weapon',                   'Spell::EffectEnchantItemTmp'),
(36837, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Meteor',                             'Spell::EffectSchoolDMG'),
(36890,-1,                -1,        -1,  -1,  -1,  -1,  5, -1,-1,'Area52 Transporter',                 'Spell::EffectTeleportUnits'),
(36893,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Transporter Malfunction',            'Spell::EffectTeleportUnits'),
(36895,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Transporter Malfunction',            'Spell::EffectTeleportUnits'),
(36897,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Transporter Malfunction',            'Spell::EffectTeleportUnits'),
(36899,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Transporter Malfunction',            'Spell::EffectTeleportUnits'),
(36900,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Soul Split: Evil!',                  'Spell::EffectTeleportUnits'),
(36901,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Soul Split: Good',                   'Spell::EffectTeleportUnits'),
(36902,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Transporter Malfunction',            'Spell::EffectDummy'),
(36940,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Transporter Malfunction',            'Spell::EffectTeleportUnits'),
(36941,-1,                -1,        -1,  -1,  -1,  -1,  5, -1,-1,'Toshley\'s Station Transporter',     'Spell::EffectTeleportUnits'),
(37169,-1,                -1,        -1,  -1,  -1,  -1,  6,  4,-1,'Eviscerate and Envenom Bonus Damage','Spell::EffectSchoolDMG'),
(37360,-1,                -1,        -1,  -1,  -1,  -1, 54, -1,-1,'Consecrated Weapon',                 'Spell::EffectEnchantItemTmp'),
(37506, 9,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Scatter Shot',                       'Spell::EffectDummy'),
(37674, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Chaos Blast',                        'Spell::EffectDummy'),
(37675,-1,                -1,        -1,  -1,  -1,  -1,  2, -1, 0,'Chaos Blast',                        'Spell::EffectDummy'),
(37877,10,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Blessing of Faith',                  'Spell::EffectDummy'),
(37878,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Blessing of Lower City',             'Spell::EffectDummy'),
(37879,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Blessing of Lower City',             'Spell::EffectDummy'),
(37880,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Blessing of Lower City',             'Spell::EffectDummy'),
(37881,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Blessing of Lower City',             'Spell::EffectDummy'),
(38441, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Cataclysmic Bolt',                   'Spell::EffectSchoolDMG'),
(38615,-1,                -1,        -1,  -1,  -1,  -1, 54, -1,-1,'Poison',                             'Spell::EffectEnchantItemTmp'),
(38794, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Murmur\'s Touch (h)',                'Spell::SetTargetMap'),
(38903, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Meteor',                             'Spell::EffectSchoolDMG'),
(39609,-1,                -1,        -1,  -1,  -1,  -1, 30, -1, 0,'Mana Tide Totem',                    'Spell::EffectDummy'),
(39610,11,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Mana Tide Totem effect',             'Spell::EffectDummy'),
(40802, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Mingo\'s Fortune Generator',         'Spell::EffectDummy'),
(40810, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Saber Lash',                         'Spell::EffectSchoolDMG'),
(41276, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Meteor',                             'Spell::EffectSchoolDMG'),
(41425,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Hypothermia',                        'Spell::cast'),
(41617,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Cenarion Mana Salve',                'Spell::SendCastResult'),
(41618,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Bottled Nethergon Energy',           'Spell::SendCastResult'),
(41619,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Cenarion Healing Salve',             'Spell::SendCastResult'),
(41620,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Bottled Nethergon Vapor',            'Spell::SendCastResult'),
(41637,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Prayer of Mending',                  'Spell::cast'),
(42005, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Bloodboil',                          'Spell::SetTargetMap'),
(42287, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Salvage Wreckage',                   'Spell::EffectDummy'),
(42288,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Salvage Wreckage',                   'Spell::EffectDummy'),
(42289,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Salvage Wreckage',                   'Spell::EffectDummy'),
(42292,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'PvP Trinket',                        'Spell::CheckCasterAuras'),
(42337,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Raptor Capture Credit',              'Spell::EffectDummy'),
(42384, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Brutal Swipe',                       'Spell::EffectSchoolDMG'),
(43036, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Dismembering Corpse',                'Spell::EffectDummy'),
(43037,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Dismembering Corpse',                'Spell::EffectDummy'),
(43059,-1,                -1,        -1,  -1,  -1,  -1, -1, 56, 0,'Dismembering Corpse',                'Spell::EffectDummy'),
(43160,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Plague Canister Dummy',              'Spell::EffectDummy'),
(43267, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Saber Lash',                         'Spell::EffectSchoolDMG'),
(43268, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Saber Lash',                         'Spell::EffectSchoolDMG'),
(43723, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Demon Broiled Surprise',             'Spell::EffectDummy'),
(43753,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Demon-Broiled Surprise',             'Spell::EffectDummy'),
(43874,-1,                -1,        -1,  -1,  -1,  -1, -1,  4,-1,'Scourge Mur\'gul Camp: Force Shield Arcane Purple x3','Spell::EffectDummy'),
(43878,-1,                -1,        -1,  -1,  -1,  -1, -1, 23,-1,'Scourge Mur\'gul Camp: Force Shield Arcane Purple x3','Spell::EffectDummy'),
(43882, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Scourging Crystal Controller Dummy', 'Spell::EffectDummy'),
(43899,-1,                -1,        -1,  -1,  -1,  -1, -1, 78,-1,'Brewfest Ram',                       'Spell::EffectDummy'),
(43900,-1,                -1,        -1,  -1,  -1,  -1, -1, 78,-1,'Swift Brewfest Ram',                 'Spell::EffectDummy'),
(44454, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Tasty Reef Fish',                    'Spell::EffectDummy'),
(44455,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Tasty Reef Fish',                    'Spell::EffectDummy'),
(44462, 0,                -1,        -1,  -1,  -1,  -1, 77, -1,-1,'The Way to His Heart...: Cast Quest Complete on Master','Spell::EffectScriptEffect'),
(44824,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Flying Reindeer',                    'Spell::EffectDummy'),
(44825,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Flying Reindeer',                    'Spell::EffectDummy'),
(44827,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Flying Reindeer',                    'Spell::EffectDummy'),
(44875, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Complete Raptor Capture',            'Spell::EffectDummy'),
(44997, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Converting Sentry',                  'Spell::EffectDummy'),
(45009,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Converted Sentry Credit',            'Spell::EffectDummy'),
(45030, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Impale Emissary',                    'Spell::EffectDummy'),
(45062,-1,                -1,        -1,  -1,  -1,  -1, -1,  4,-1,'Holy Energy',                        'Spell::EffectHeal'),
(45064,-1,                -1,        -1,  -1,  -1,  -1, 10, -1,-1,'Vessel of the Naaru',                'Spell::EffectHeal'),
(45088,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Emissary of Hate Credit',            'Spell::EffectDummy'),
(45150, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Meteor Slash',                       'Spell::EffectSchoolDMG'),
(45182,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Cheat Death',                        'Spell::EffectDummy'),
(45373,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Bloodberry Elixir',                  'Spell::SendCastResult'),
(45470,-1,                -1,        -1,  -1,  -1,  -1, 10, -1, 0,'Intercept',                          'Spell::EffectDummy'),
(45672,-1,                -1,        -1,  -1,  -1,  -1, -1, 61,-1,'Shrunk',                             'Spell::EffectDummy'),
(45673,-1,                -1,        -1,  -1,  -1,  -1, -1, 61,-1,'Bigger!',                            'Spell::EffectDummy'),
(45677,-1,                -1,        -1,  -1,  -1,  -1, -1,  4,-1,'Yellow',                             'Spell::EffectDummy'),
(45681,-1,                -1,        -1,  -1,  -1,  -1, -1,  4,-1,'Ghost',                              'Spell::EffectDummy'),
(45683,-1,                -1,        -1,  -1,  -1,  -1, -1, 56,-1,'Polymorph: Crafty Wobblesprocket',   'Spell::EffectDummy'),
(45685, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Magnataur On Death 2',               'Spell::EffectDummy'),
(45980, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Re-Cursive Transmatter Injection',   'Spell::EffectDummy'),
(45990, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Collect Oil',                        'Spell::EffectDummy'),
(45991,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Collect Oil',                        'Spell::EffectDummy'),
(46014,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Knocked Up',                         'Spell::EffectDummy'),
(46022,-1,                -1,        -1,  -1,  -1,  -1, -1, -1, 0,'Re-Cursive Transmatter Injection',   'Spell::EffectDummy'),
(46167, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Planning for the Future: Create Snowfall Glade Pup Cover','Spell::EffectDummy'),
(46485, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Greatmother\'s Soulcatcher',         'Spell::EffectDummy'),
(46486,-1,                -1,        -1,  -1,  -1,  -1, -1, -1, 0,'Greatmother\'s Soulcatcher',         'Spell::EffectDummy'),
(46699,-1,                -1,        -1,  -1,  -1,  -1, -1,  4,-1,'Requires No Ammo',                   'Spell::CheckItems'),
(46606, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Plague Canister Dummy',              'Spell::EffectDummy'),
(46773,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Planning for the Future: Create Snowfall Glade Pup Cover','Spell::EffectDummy'),
(46797, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Quest - Borean Tundra - Set Explosives Cart','Spell::EffectDummy'),
(46798,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Quest - Borean Tundra - Summon Explosives Cart','Spell::EffectDummy'),
(47390,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'The Focus on the Beach: Ley Line Focus Bunny Beam','Spell::EffectDummy'),
(47391, 0,                -1,        -1,  -1,  -1,  -1, -1,  4,-1,'Ley Line Information',               'Spell::EffectScriptEffect'),
(47393, 0,                -1,        -1,  -1,  -1,  -1, 77, -1,-1,'The Focus on the Beach: Ley Line Focus Bunny Beam','Spell::EffectScriptEffect'),
(47472,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Atop the Woodlands: Ley Line Focus Bunny Beam','Spell::EffectDummy'),
(47473, 0,                -1,        -1,  -1,  -1,  -1, -1,  4,-1,'Ley Line Information',               'Spell::EffectScriptEffect'),
(47540, 6,0x0080000000000000,0x00000000,  -1,  -1,  -1,  3, -1,-1,'Penance',                            'Spell::EffectDummy'),
(47615, 0,                -1,        -1,  -1,  -1,  -1, 77, -1,-1,'The End of the Line: Ley Line Focus Bunny Beam','Spell::EffectScriptEffect'),
(47635,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'The End of the Line: Ley Line Focus Bunny Beam','Spell::EffectDummy'),
(47636, 0,                -1,        -1,  -1,  -1,  -1, -1,  4,-1,'Ley Line Information',               'Spell::EffectScriptEffect'),
(47638, 0,                -1,        -1,  -1,  -1,  -1, 77, -1,-1,'Atop the Woodlands: Ley Line Focus Bunny Beam','Spell::EffectScriptEffect'),
(47632,-1,                -1,        -1,  -1,  -1,  -1,  2, -1, 0,'Death Coil',                         'Spell::EffectDummy'),
(47633,-1,                -1,        -1,  -1,  -1,  -1, 10, -1, 0,'Death Coil',                         'Spell::EffectDummy'),
(47757,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Penance',                            'Spell::EffectDummy'),
(47758,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Penance',                            'Spell::EffectDummy'),
(47897, 5,0x0001000000000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Shadowflame',                        'Spell::EffectSchoolDMG'),
(47960,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Shadowflame',                        'Spell::EffectSchoolDMG'),
(48023,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Headless Horseman\'s Mount',         'Aura::HandleAuraDummy'),
(48024,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Headless Horseman\'s Mount',         'Aura::HandleAuraDummy'),
(48025,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Headless Horseman\'s Mount',         'Aura::HandleAuraDummy'),
(48075,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Nova',                          'Spell::cast'),
(48076,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Nova',                          'Spell::cast'),
(48077, 6,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Nova',                          'Spell::cast'),
(48078, 6,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Nova',                          'Spell::cast'),
(48301,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Mind Trauma',                        'Spell::EffectSchoolDMG'),
(48542,-1,                -1,        -1,  -1,  -1,  -1, 30, -1,-1,'Revitalize',                         'Spell::EffectEnergize'),
(48743,-1,                -1,        -1,  -1,  -1,  -1,  1, -1,-1,'Death Pact',                         'Spell::CheckCast'),
(48743,-1,                -1,        -1,  -1,  -1,  -1, 10, -1,-1,'Death Pact',                         'Spell::EffectHeal'),
(48743,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Death Pact',                         'Spell::SetTargetMap'),
(48820,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(48821,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(48822,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(48823,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(48824,10,                -1,        -1, 156,  -1,  -1,  3, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(48825,10,                -1,        -1, 156,  -1,  -1,  3, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(49357,-1,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Brewfest Mount Transformation',      'Spell::EffectDummy'),
(49378,-1,                -1,        -1,  -1,  -1,  -1, -1, 78,-1,'Brewfest Riding Kodo',               'Spell::EffectDummy'),
(49379,-1,                -1,        -1,  -1,  -1,  -1, -1, 78,-1,'Great Brewfest Kodo',                'Spell::EffectDummy'),
(49882, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Leviroth Self-Impale',               'Spell::EffectSchoolDMG'),
(50133, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Scourging Crystal Controller',       'Spell::EffectDummy'),
(50242,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'1000001',                            'Spell::EffectDummy'),
(50243, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Teach Language',                     'Spell::EffectDummy'),
(50246,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'01001000',                           'Spell::EffectDummy'),
(50286, 7,0x0000000000000000,0x00000100,  -1,  -1,  -1,  3, -1,-1,'Starfall',                           'Spell::EffectDummy'),
(50288,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Starfall',                           'Spell::EffectDummy'),
(50546, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Ley Line Focus Control Ring Effect', 'Spell::EffectDummy'),
(50547, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Ley Line Focus Control Amulet Effect','Spell::EffectDummy'),
(50548, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Ley Line Focus Control Talisman Effect','Spell::EffectDummy'),
(50737,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Create Drakkari Medallion Cover',    'Spell::EffectDummy'),
(50782,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Slam',                               'Spell::EffectDummy'),
(50926, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Gluttonous Lurkers: Create Zul\'Drak Rat Cover','Spell::EffectDummy'),
(50842,15,                -1,        -1,  -1,  -1,  -1, 77, -1,-1,'Pestilence',                         'Spell::EffectScriptEffect'),
(50927,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Gluttonous Lurkers: Create Zul\'Drak Rat Cover','Spell::EffectDummy'),
(51026, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Create Drakkari Medallion Cover',    'Spell::EffectDummy'),
(51037,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Captured Chicken Cover',             'Spell::EffectDummy'),
(51209,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Hungering Cold',                     'Spell::EffectDummy'),
(51276, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Incinerate Corpse',                  'Spell::EffectDummy'),
(51278,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Incinerate Corpse',                  'Spell::EffectDummy'),
(51279,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Incinerate Corpse',                  'Spell::EffectDummy'),
(51330, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Shoot RJR',                          'Spell::EffectDummy'),
(51331,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Shoot RJR',                          'Spell::EffectDummy'),
(51332,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Shoot RJR',                          'Spell::EffectDummy'),
(51333, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Dig For Treasure',                   'Spell::EffectDummy'),
(51345,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Dig For Treasure',                   'Spell::EffectDummy'),
(51366,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Shoot RJR',                          'Spell::EffectDummy'),
(51370,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Dig For Treasure',                   'Spell::EffectDummy'),
(51582, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Rocket Boots Engaged',               'Spell::EffectDummy'),
(51582,-1,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Rocket Boots Engaged',               'Spell::CheckCast'),
(51592, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Pickup Primordial Hatchling',        'Spell::EffectDummy'),
(51593,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Pickup Primordial Hatchling',        'Spell::EffectDummy'),
(51617,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Headless Horseman\'s Mount',         'Aura::HandleAuraDummy'),
(51621,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Headless Horseman\'s Mount',         'Aura::HandleAuraDummy'),
(51723, 8,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Fan of Knives',                      'Spell::cast'),
(51836,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Bananas Fall to Ground',             'Spell::EffectDummy'),
(51837,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Orange Falls to Ground',             'Spell::EffectDummy'),
(51839,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Papaya Falls to Ground',             'Spell::EffectDummy'),
(51840, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Despawn Fruit Tosser',               'Spell::EffectDummy'),
(51866, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Kick Nass',                          'Spell::EffectDummy'),
(51870,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Collect Hair Sample',                'Spell::EffectDummy'),
(51871,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Nass Kill Credit',                   'Spell::EffectDummy'),
(51872, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Hair Sample Collected',              'Spell::EffectDummy'),
(51961, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Captured Chicken Cover',             'Spell::EffectDummy'),
(51964, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Tormentor\'s Incense',               'Spell::EffectDummy'),
(51967, 0,                -1,        -1,  -1,  -1,  -1, -1,168,-1,'Mojo of Rhunok',                     'Spell::EffectScriptEffect'),
(52025,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Cleansing Totem Effect',             'Spell::EffectDummy'),
(52032,-1,                -1,        -1,  -1,  -1,  -1, 30, -1, 0,'Mana Spring Totem',                  'Spell::EffectDummy'),
(52042,-1,                -1,        -1,  -1,  -1,  -1, 10, -1, 0,'Healing Stream Totem',               'Spell::EffectDummy'),
(52070,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Summon Adventurous Dwarf',           'Spell::EffectDummy'),
(52308, 0,                -1,        -1,  -1,  -1,  -1,  3, -1, 0,'Take Sputum Sample',                 'Spell::EffectDummy'),
(52308, 0,                -1,        -1,  -1,  -1,  -1,  3, -1, 1,'Take Sputum Sample',                 'Spell::EffectDummy'),
(52437,-1,                -1,        -1,  -1,  -1,  -1,  6, -1, 0,'Sudden Death',                       'Spell::EffectDummy'),
(52752,-1,                -1,        -1,  -1,  -1,  -1, 10, -1, 0,'Ancestral Awakening',                'Spell::EffectDummy'),
(52759, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Ancestral Awakening',                'Spell::EffectDummy'),
(52759,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Ancestral Awakening',                'Spell::SetTargetMap'),
(52845,-1,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Brewfest Mount Transformation (Faction Swap)','Spell::EffectDummy'),
(52874,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Fan of Knives',                      'Spell::cast'),
(52941, 0,                -1,        -1,  -1,  -1,  -1, 77, -1,-1,'Song of Cleansing',                  'Spell::EffectScriptEffect'),
(52954, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Summon Spirit',                      'Spell::EffectScriptEffect'),
(52958, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Summon Spirit',                      'Spell::EffectScriptEffect'),
(52959, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Summon Spirit',                      'Spell::EffectScriptEffect'),
(52986,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Penance',                            'Spell::EffectDummy'),
(52987,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Penance',                            'Spell::EffectDummy'),
(52988,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Penance',                            'Spell::EffectDummy'),
(53001,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Penance',                            'Spell::EffectDummy'),
(53002,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Penance',                            'Spell::EffectDummy'),
(53003,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Penance',                            'Spell::EffectDummy'),
(53005, 6,0x0080000000000000,0x00000000,  -1,  -1,  -1,  3, -1,-1,'Penance',                            'Spell::EffectDummy'),
(53006, 6,0x0080000000000000,0x00000000,  -1,  -1,  -1,  3, -1,-1,'Penance',                            'Spell::EffectDummy'),
(53007, 6,0x0080000000000000,0x00000000,  -1,  -1,  -1,  3, -1,-1,'Penance',                            'Spell::EffectDummy'),
(53191,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Starfall',                           'Spell::EffectDummy'),
(53194,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Starfall',                           'Spell::EffectDummy'),
(53195,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Starfall',                           'Spell::EffectDummy'),
(53196, 7,0x0000000000000000,0x00000100,  -1,  -1,  -1,  3, -1,-1,'Starfall',                           'Spell::EffectDummy'),
(53197, 7,0x0000000000000000,0x00000100,  -1,  -1,  -1,  3, -1,-1,'Starfall',                           'Spell::EffectDummy'),
(53198, 7,0x0000000000000000,0x00000100,  -1,  -1,  -1,  3, -1,-1,'Starfall',                           'Spell::EffectDummy'),
(53271,-1,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Master''s Call',                     'Spell::EffectDummy'),
(53271,-1,                -1,        -1,  -1,  -1,  -1, 77, -1,-1,'Master''s Call',                     'Spell::EffectScriptEffect'),
(53341, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Rune of Cinderglacier',              'Spell::EffectDummy'),
(53343, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Rune of Razorice',                   'Spell::EffectDummy'),
(53478, 9,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Last Stand',                         'Spell::EffectDummy'),
(53479,-1,                -1,        -1,  -1,  -1,  -1, -1, 34, 0,'Last Stand',                         'Spell::EffectDummy'),
(53563,-1,                -1,        -1,  -1,  -1,  -1, -1, 23,-1,'Beacon of Light',                    'Aura::HandlePeriodicTriggerSpell'),
(53563,-1,                -1,        -1,  -1,  -1,  -1, -1, 23,-1,'Beacon of Light',                    'Unit::HandleDummyAuraProc'),
(53805, 0,                -1,        -1,  -1,  -1,  -1, -1,239,-1,'Pygmy Oil',                          'Spell::EffectDummy'),
(53806,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Pygmy Oil',                          'Spell::EffectDummy'),
(53808,-1,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Pygmy Oil',                          'Spell::EffectDummy'),
(54049, 5,0x0040000000000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Shadow Bite',                        'Spell::EffectSchoolDMG'),
(54050, 5,0x0040000000000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Shadow Bite',                        'Spell::EffectSchoolDMG'),
(54051, 5,0x0040000000000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Shadow Bite',                        'Spell::EffectSchoolDMG'),
(54052, 5,0x0040000000000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Shadow Bite',                        'Spell::EffectSchoolDMG'),
(54053, 5,0x0040000000000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Shadow Bite',                        'Spell::EffectSchoolDMG'),
(54098, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Poison Bolt Volley (h)',             'Spell::SetTargetMap'),
(54182, 0,                -1,        -1,  -1,  -1,  -1, 77, -1,-1,'An End to the Suffering: Quest Completion Script','Spell::EffectScriptEffect'),
(54216,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Master''s Call',                     'Spell::EffectDummy'),
(54586,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Runeforging Credit',                 'Spell::EffectDummy'),
(54646,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Focus Magic',                        'Spell::CheckCast'),
(54824,-1,                -1,        -1,  -1,  -1,  -1, -1,  4,-1,'Glyph of Swiftmend',                 'Spell::EffectHeal'),
(54835, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Curse of the Plaguebringer (h)',     'Spell::SetTargetMap'),
(54861,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Nitro Boosts',                       'Spell::EffectDummy'),
(55004, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Nitro Boosts',                       'Spell::EffectDummy'),
(55078,-1,                -1,        -1,  -1,  -1,  -1, -1,  3,-1,'Blood Plague',                       'Spell::EffectScriptEffect'),
(55090, 15,0x0800000000000000,       -1,  -1,  -1,  -1, -1, -1,-1,'Scourge Strike',                     'Spell::DoAllEffectOnTarget'),
(55095,-1,                -1,        -1,  -1,  -1,  -1, -1,  3,-1,'Frost Fever',                        'Spell::EffectScriptEffect'),
(55265, 15,0x0800000000000000,       -1,  -1,  -1,  -1, -1, -1,-1,'Scourge Strike',                     'Spell::DoAllEffectOnTarget'),
(55270, 15,0x0800000000000000,       -1,  -1,  -1,  -1, -1, -1,-1,'Scourge Strike',                     'Spell::DoAllEffectOnTarget'),
(55271, 15,0x0800000000000000,       -1,  -1,  -1,  -1, -1, -1,-1,'Scourge Strike',                     'Spell::DoAllEffectOnTarget'),
(55363,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Create Ghoul Drool Cover',           'Spell::EffectDummy'),
(55364, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Create Ghoul Drool Cover',           'Spell::EffectDummy'),
(55441,11,                -1,        -1,  -1,  -1,  -1, -1,  4,-1,'Glyph of Mana Tide',                 'Spell::EffectDummy'),
(55456,11,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Glyph of Healing Stream Totem',      'Spell::EffectDummy'),
(55528,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Hurl Boulder',                       'Spell::EffectDummy'),
(55665, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Life Drain (h)',                     'Spell::SetTargetMap'),
(55675,-1,                -1,        -1,  -1,  -1,  -1, -1,  4,-1,'Glyph of Circle of Healing',         'Spell::SetTargetMap'),
(55818, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Hurl Boulder',                       'Spell::EffectDummy'),
(56153,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Guardian Aura - Ahn\'Kahet',         'Spell::SetTargetMap'),
(56235,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Glyph of Conflagrate',               'Spell::EffectSchoolDMG'),
(56446,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Disengage',                          'Spell::EffectDummy'),
(57085,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Refreshment',                        'Spell::EffectScriptEffect'),
(57292,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Refreshment',                        'Spell::EffectScriptEffect'),
(57337, 0,                -1,        -1,  -1,  -1,  -1, 77, -1,-1,'Great Feast',                        'Spell::EffectScriptEffect'),
(57397, 0,                -1,        -1,  -1,  -1,  -1, 77, -1,-1,'Fish Feast',                         'Spell::EffectScriptEffect'),
(57467, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Meteor',                             'Spell::EffectSchoolDMG'),
(57627,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Charge',                             'Spell::EffectSchoolDMG'),
(57635, 9,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Disengage',                          'Spell::EffectDummy'),
(57636,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Disengage',                          'Spell::EffectDummy'),
(57669,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Replenishment',                      'Spell::SetTargetMap'),
(57723,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Exhaustion',                         'Spell::cast'),
(57724,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Sated',                              'Spell::cast'),
(57908, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Stain Cloth',                        'Spell::EffectDummy'),
(57915,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Create Cloth',                       'Spell::EffectDummy'),
(58067,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Refreshment',                        'Spell::EffectScriptEffect'),
(58367,-1,                -1,        -1,  -1,  -1,  -1, -1,  4,-1,'Glyph of Execution',                 'Spell::EffectDummy'),
(58418, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Portal to Orgrimmar',                'Spell::EffectDummy'),
(58420, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Portal to Stormwind',                'Spell::EffectDummy'),
(58466, 0,                -1,        -1,  -1,  -1,  -1, 77, -1,-1,'Gigantic Feast',                     'Spell::EffectScriptEffect'),
(58475, 0,                -1,        -1,  -1,  -1,  -1, 77, -1,-1,'Small Feast',                        'Spell::EffectScriptEffect'),
(58601, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Remove Flight Auras',                'Spell::EffectDummy'),
(58657,-1,                -1,        -1,  -1,  -1,  -1, -1,  4,-1,'Glyph of Plague Strike',             'Spell::EffectWeaponDmg'),
(58875,11,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Spirit Walk',                        'Spell::cast'),
(58876,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Spirit Walk',                        'Spell::cast'),
(59336,-1,                -1,        -1,  -1,  -1,  -1, -1,  4,-1,'Glyph of Death Strike',              'Spell::EffectWeaponDmg'),
(59332,-1,                -1,        -1,  -1,  -1,  -1, -1,  4,-1,'Glyph of Blood Strike',              'Spell::EffectWeaponDmg'),
(59640, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Underbelly Elixir',                  'Spell::EffectDummy'),
(59645,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Underbelly Elixir',                  'Spell::EffectDummy'),
(59831,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Underbelly Elixir',                  'Spell::EffectDummy'),
(59843,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Underbelly Elixir',                  'Spell::EffectDummy'),
(60089,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Faerie Fire',                        'Spell::cast'),
(60932, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Disengage',                          'Spell::EffectDummy'),
(60934,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Disengage',                          'Spell::EffectDummy'),
(61290, 5,0x0001000000000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Shadowflame',                        'Spell::EffectSchoolDMG'),
(61291,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Shadowflame',                        'Spell::EffectSchoolDMG'),
(61336,-1,                -1,        -1,  -1,  -1,  -1, -1,  4,-1,'Survival Instincts',                 'Spell::CheckCast'),
(61491, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Intercept',                          'Spell::EffectSchoolDMG'),
(61507, 9,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Disengage',                          'Spell::EffectDummy'),
(61508,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Disengage',                          'Spell::EffectDummy'),
(61649,11,                -1,        -1,  33,  -1,  -1,  3, -1,-1,'Fire Nova',                          'Spell::EffectDummy'),
(61650,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Fire Nova',                          'Spell::EffectDummy'),
(61654,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Fire Nova',                          'Spell::EffectDummy'),
(61657,11,                -1,        -1,  33,  -1,  -1,  3, -1,-1,'Fire Nova',                          'Spell::EffectDummy'),
(61832, 0,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Rifle the Bodies: Create Magehunter Personal Effects Cover','Spell::EffectDummy'),
(61987,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Avenging Wrath Marker',              'Spell::cast'),
(61987,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Avenging Wrath Marker',              'Spell::CheckCast'),
(62124,10,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Hand of Reckoning',                  'Spell::cast'),
(62305,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Master''s Call',                     'Spell::EffectScriptEffect'),
(62775, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Tympanic Tantrum',                   'Spell::EffectSchoolDMG'),
(63334,-1,                -1,        -1,  -1,  -1,  -1, -1,  4,-1,'Glyph of Disease',                   'Spell::EffectScriptEffect'),
(63375,-1,                -1,        -1,  -1,  -1,  -1, 30, -1,-1,'Improved Stormstrike',               'Spell::EffectEnergize'),
(64422, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Meteor Slash',                       'Spell::EffectSchoolDMG'),
(64688, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Meteor Slash',                       'Spell::EffectSchoolDMG'),
(66765,-1,                -1,        -1,  -1,  -1,  -1, 31, -1,-1,'Meteor Fists',                       'Spell::EffectWeaponDmg'),
(66809,-1,                -1,        -1,  -1,  -1,  -1, 31, -1,-1,'Meteor Fists',                       'Spell::EffectWeaponDmg'),
(64844,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Divine Hymn',                        'Spell::SetTargetMap'),
(64904,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Hymn of Hope',                       'Spell::SetTargetMap'),
(65116,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Stoneskin',                          'Spell::cast'),
(65422,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Food',                               'Spell::EffectScriptEffect'),
(66013, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Penetrating Cold',                   'Spell::SetTargetMap'),
(66477, 0,                -1,        -1,  -1,  -1,  -1, 77, -1,-1,'Bountiful Feast',                    'Spell::EffectScriptEffect'),
(66622,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Refreshment',                        'Spell::EffectScriptEffect'),
(67016,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Flask of the North',                 'Spell::EffectDummy'),
(67017,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Flask of the North',                 'Spell::EffectDummy'),
(67018,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Flask of the North',                 'Spell::EffectDummy'),
(67019,-1,                -1,        -1,  -1,  -1,  -1,  3, -1,-1,'Flask of the North',                 'Spell::EffectDummy'),
(67331,-1,                -1,        -1,  -1,  -1,  -1, 31, -1,-1,'Meteor Fists',                       'Spell::EffectWeaponDmg'),
(67333,-1,                -1,        -1,  -1,  -1,  -1, 31, -1,-1,'Meteor Fists',                       'Spell::EffectWeaponDmg'),
(67485, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Hand of Rekoning',                   'Spell::EffectSchoolDMG'),
(67485,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Hand of Rekoning',                   'Spell::cast'),
(67700, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Penetrating Cold',                   'Spell::SetTargetMap'),
(68082,-1,                -1,        -1,  -1,  -1,  -1, 30, -1,-1,'Glyph of Seal of Command',           'Spell::EffectEnergize'),
(68509, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Penetrating Cold',                   'Spell::SetTargetMap'),
(68510, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Penetrating Cold',                   'Spell::SetTargetMap'),
(69055,-1,                -1,        -1,  -1,  -1,  -1, 31, -1,-1,'Bone Slice',                         'Spell::EffectWeaponDmg'),
(70492, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Ooze Eruption',                      'Spell::EffectSchoolDMG'),
(70907,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Summon Water Elemental',             'Spell::EffectDummy'),
(70908,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Summon Water Elemental',             'Spell::EffectDummy'),
(70937,-1,                -1,        -1,  -1,  -1,  -1, -1,  4,-1,'Glyph of Eternal Water',             'Spell::EffectDummy'),
(71021,-1,                -1,        -1,  -1,  -1,  -1, 31, -1,-1,'Saber Lash',                         'Spell::EffectWeaponDmg'),
(71904, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Chaos Bane',                         'Spell::EffectSchoolDMG'),
(71904, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Chaos Bane',                         'Spell::cast'),
(72281, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Invincible',                         'Aura::HandleAuraDummy'),
(72282, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Invincible',                         'Aura::HandleAuraDummy'),
(72283, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Invincible',                         'Aura::HandleAuraDummy'),
(72284, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Invincible',                         'Aura::HandleAuraDummy'),
(72286, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Invincible',                         'Aura::HandleAuraDummy'),
(72505, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Ooze Eruption',                      'Spell::EffectSchoolDMG'),
(72624, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Ooze Eruption',                      'Spell::EffectSchoolDMG'),
(72625, 0,                -1,        -1,  -1,  -1,  -1,  2, -1,-1,'Ooze Eruption',                      'Spell::EffectSchoolDMG'),
(73422, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Chaos Bane',                         'Spell::cast'),
(73422,-1,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Chaos Bane',                         'Spell::cast'),
(74854, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Blazing Hippogryph',                 'Aura::HandleAuraDummy'),
(74855, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Blazing Hippogryph',                 'Aura::HandleAuraDummy'),
(74856, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Blazing Hippogryph',                 'Aura::HandleAuraDummy'),
(75614, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Celestial Steed',                    'Aura::HandleAuraDummy'),
(75617, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Celestial Steed',                    'Aura::HandleAuraDummy'),
(75618, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Celestial Steed',                    'Aura::HandleAuraDummy'),
(75619, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Celestial Steed',                    'Aura::HandleAuraDummy'),
(75620, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Celestial Steed',                    'Aura::HandleAuraDummy'),
(76153, 0,                -1,        -1,  -1,  -1,  -1, -1, -1,-1,'Celestial Steed',                    'Aura::HandleAuraDummy'),
/*id   fm familyMaskA        fmMaskB    icon vis  cat  eff aur ef name                                  code                   */

/* sorted by spell names */
/*id   fm familyMaskA        fmMaskB    icon vis  cat  eff aur ef name                                  code                   */
(    0, 3,0x0000000020000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Arcane Blast',                       'Spell::EffectSchoolDMG'),
(    0, 3,0x0000000000200080,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Arcane Missles / Blizzard',          'Spell::prepareDataForTriggerSystem'),
(    0, 9,0x0000000000000800,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Arcane Shot',                        'Spell::EffectSchoolDMG'),
(    0,10,0x0000200000000000,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Avenging Wrath',                     'Spell::cast'),
(    0,15,0x0000000000400000,0x00000000,  -1,  -1,  -1, 31, -1,-1,'Blood Strike',                       'Spell::EffectWeaponDmg'),
(    0,15,                -1,        -1,1736,  -1,  -1, 31, -1,-1,'Blood-Caked Strike',                 'Spell::EffectWeaponDmg'),
(    0, 5,0x0000000000004000,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Drain Soul',                         'Unit::SpellDamageBonus'),
(    0,10,0x0000000000004000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Avenger\'s Shield',                  'Spell::EffectSchoolDMG'),
(    0, 4,0x0000040000000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Bloodthirst',                        'Spell::EffectSchoolDMG'),
(    0,11,0x0000000000000100,0x00000000,  -1,  -1,  -1, 10, -1,-1,'Chain Healing',                      'Spell::EffectHeal'),
(    0, 4,0x0000000000000001,0x00000000,  -1, 867,  -1,  3, -1,-1,'Charge',                             'Spell::EffectDummy'),
(    0, 6,                -1,        -1,  -1,8253,  -1, -1, -1,-1,'Circle of Healing',                  'Spell::SetTargetMap'),
(    0,11,0x0000000004000000,0x00000000,1673,  -1,  -1,  3, -1,-1,'Cleansing Totem',                    'Spell::EffectDummy'),
(    0, 3,0x0000000200000000,0x00000008,  -1,  -1,  -1, -1, -1,-1,'Clearcasting',                       'Spell::prepareDataForTriggerSystem'),
(    0, 4,0x0000000004000000,0x00000000,  -1,  -1,  -1,  3, -1,-1,'Concussion Blow',                    'Spell::EffectDummy'),
(    0, 3,                -1,        -1,  -1,  -1,  -1,  3, -1, 1,'Conjure Mana Gem',                   'Spell::EffectDummy'), 		/*part 1*/
(    0, 3,                -1,        -1,  -1,  -1,  -1, 24, -1, 0,'Conjure Mana Gem',                   'Spell::EffectDummy'), 		/*part 2*/
(    0, 3,                -1,        -1,  -1,  -1,  -1, 24, -1, 0,'Conjure Mana Gem',                   'Spell::CheckItems'),
(    0, 9,0x0008000000000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Counterattack',                      'Spell::EffectSchoolDMG'),
(    0, 5,                -1,        -1,  -1,  -1,1179, -1, -1,-1,'Curse of Doom',                      'Spell::CheckTargetCreatureType'),
(    0, 8,0x0000000000010000,0x00000000,  -1,  -1,  -1, -1,  3,-1,'Deadly poison',                      'Spell::EffectSchoolDMG'),
(    0,15,0x0000000000002000,0x00000000,  -1,  -1,  -1,  3, -1,-1,'Death Coil',                         'Spell::EffectDummy'),
(    0,15,0x0000000000000010,0x00000000,  -1,  -1,  -1, 31, -1, 1,'Death Strike',                       'Spell::EffectWeaponDmg'),
(    0,15,0x0000000000000010,0x00000000,  -1,  -1,  -1,  3, -1, 2,'Death Strike',                       'Spell::EffectDummy'),
(    0, 5,                -1,        -1,  -1,  -1,  12, 38, -1,-1,'Devour Magic',                       'Spell::EffectDispel'),
(    0, 9,0x0000400000000000,0x00000000,  -1,  -1,  -1,  3, -1,-1,'Disengage',                          'Spell::EffectDummy'),
(    0,10,0x0000000000400080,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Divine Shield, Divine Protection or Hand of Protection','Spell::cast'),
(    0, 8,0x0000000800000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Envenom',                            'Spell::EffectSchoolDMG'),
(    0, 8,0x0000000000020000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Eviscerate',                         'Spell::EffectSchoolDMG'),
(    0, 4,0x0000000020000000,0x00000000,  -1,  -1,  -1,  3, -1,-1,'Execute',                            'Spell::EffectDummy'),
(    0,-1,                -1,        -1,1648,  -1,  -1,  3, -1,-1,'Execute',                            'Spell::CheckCast'),
(    0, 9,0x0000000000000004,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Explosive Trap Effect',              'Spell::EffectSchoolDMG'),
(    0, 7,0x0000000000800000,0x00000000,  -1,6587,  -1,  2, -1,-1,'Ferocious Bite',                     'Spell::EffectSchoolDMG'),
(    0,11,                -1,        -1,  33,  -1,  -1,  3, -1,-1,'Fire Nova',                          'Spell::CheckCast'),
(    0, 5,                -1,        -1,  16,  -1,  -1, -1, -1,-1,'Fire Shield',                        'Spell::CheckCast'),
(    0,11,0x0000000000200000,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Flametongue',                        'Spell::EffectDummy'),
(    0, 9,                -1,        -1,1578,  -1,  -1,  2, -1,-1,'Gore',                               'Spell::EffectSchoolDMG'),
(    0, 8,0x0000000000000008,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Gouge',                              'Spell::EffectSchoolDMG'),
(    0,10,0x0000008000000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Hammer of Wrath',                    'Spell::EffectSchoolDMG'),
(    0,-1,                -1,        -1,  -1,7250,  -1,  2, -1,-1,'Hammer of Wrath',                    'Spell::CheckCast'),
(    0,10,0x0004000000000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Hammer of the Righteous',            'Spell::EffectSchoolDMG'),
(    0, 5,0x0004000000000000,0x00000000,3172,  -1,  -1, -1,  4,-1,'Haunt',                              'Spell::DoAllEffectOnTarget'),
(    0,11,0x0000000000002000,0x00000000,  -1,  -1,  -1,  3, -1,-1,'Healing Stream Totem',               'Spell::EffectDummy'),
(    0, 4,0x0000800000000060,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Hellfire Effect / Rain of Fire / Seed of Corruption','Spell::prepareDataForTriggerSystem'),
(    0, 8,0x0000000002800000,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Hemorrhage',							'Spell::EffectWeaponDmg'),
(    0, 4,0x0000000100000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Heroic Throw',                       'Spell::EffectSchoolDMG'),
(    0,10,                -1,        -1, 156,  -1,  -1,  3, -1,-1,'Holy Shock',                         'Spell::EffectDummy'),
(    0,-1,                -1,        -1, 156,  -1,  -1,  3, -1,-1,'Holy Shock',                         'Spell::CheckCast'),
(    0,15,0x0000100000000000,0x00000000,  -1,  -1,  -1,  3, -1,-1,'Hungering Cold',                     'Spell::EffectDummy'),
(    0, 9,0x0100200000000214,0x00000200,  -1,  -1,  -1, -1, -1,-1,'Hunter Rapid Killing/Explosive Trap Effect/Immolation Trap Effect/Frost Trap Aura/Snake Trap Effect/Explosive Shot',                            'Spell::prepareDataForTriggerSystem'),
(    0, 3,0x0000008000000000,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Ice Block',                          'Spell::cast'),
(    0, 5,0x0000000000000004,0x00000000,  -1,  -1,  -1, -1,  3,-1,'Immolate',                           'Spell::EffectSchoolDMG'),
(    0, 9,0x000020000000001C,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Immolation Trap, Frost Trap, Explosive Trap, and Snake Trap','Spell::prepareDataForTriggerSystem'),
(    0,15,                -1,        -1,2751,  -1,  -1, -1,107, 1,'Improved Death Strike',              'Spell::EffectDummy'),
(    0,15,                -1,        -1,2751,  -1,  -1, 0,   0, 2,'Improved Death Strike',              'Spell::EffectDummy'),
(    0, 5,                -1,        -1, 208,  -1,  -1, -1,  4,-1,'Improved Life Tap',                  'Spell::EffectDummy'),
(    0, 6,                -1,        -1,  95,  -1,  -1, -1,107,-1,'Improved Mind Blast',                'Spell::EffectSchoolDMG'),
(    0, 5,0x0000004000000000,0x00000000,2128,  -1,  -1,  2, -1,-1,'Incinerate',                         'Spell::EffectSchoolDMG'),
(    0, 8,0x0000000000002000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Instant Poison',                     'Spell::EffectSchoolDMG'),
(    0,10,                -1,        -1, 561,  -1,  -1,  3, -1,-1,'Judgement of command',               'Spell::EffectDummy'),
(    0,10,0x0000000800000000,0x00000000,2292,  -1,  -1,  2, -1,-1,'Judgement of Vengeance',             'Spell::EffectSchoolDMG'),
(    0,10,0x0001000900B80400,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Judgements (all) / Holy Shock',      'Spell::prepareDataForTriggerSystem'),
(    0, 7,0x0000010000000000,0x00000000,2246,  -1,  -1,  2, -1,-1,'Lacerate',                           'Spell::EffectSchoolDMG'),
(    0,11,0x0000000000000000,0x00000004,  -1,  -1,  -1,  3, -1,-1,'Lava Lash',                          'Spell::EffectDummy'),
(    0,10,0x0000000000008000,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Lay on Hands',                       'Spell::cast'),
(    0,10,0x0000000000008000,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Lay on Hands',                       'Spell::CheckCast'),
(    0, 5,0x0000000000040000,0x00000000,  -1,  -1,  -1,  3, -1,-1,'Life Tap',                           'Spell::EffectDummy'),
(    0, 5,                -1,        -1,1982,  -1,  -1, -1,107,-1,'Mana Feed',                          'Spell::EffectDummy'),
(    0,11,0x0000000000004000,0x00000000,  -1,  -1,  -1,  3, -1,-1,'Mana Spring Totem',                  'Spell::EffectDummy'),
(    0, 7,0x0000044000000000,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Mangle (Cat) and Mangle (Bear)',     'Unit::HandleDummyAuraProc'),
(    0, 8,                -1,        -1,1960,  -1,  -1,  0,246,-1,'Master Poisoner',                    'Spell::EffectSchoolDMG'),
(    0, 6,0x0000000000002000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Mind Blast',                         'Spell::EffectSchoolDMG'),
(    0, 9,0x0000000000000002,0x00000000,  -1, 342,  -1,  2, -1,-1,'Mongoose Bite',                      'Spell::EffectSchoolDMG'),
(    0, 8,0x0020000000000000,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Mutilate',                           'Spell::CheckCast'),
(    0, 6,0x0080000000000000,0x00000000,  -1,  -1,  -1,  3, -1,-1,'Penance',                            'Spell::EffectDummy'),
(    0, 6,0x0001800000800000,0x00000040,  -1,  -1,  -1, -1, -1,-1,'Penance,Mind Sear,Mind Flay',        'Spell::prepareDataForTriggerSystem'),
(    0,15,0x0000000000000001,0x00000000,  -1,  -1,  -1, 31, -1,-1,'Plague Strike',                      'Spell::EffectWeaponDmg'),
(    0, 8,0x000000101001E000,0x00000000,  -1,  -1,  -1, -1, -1,-1,'poisons',                            'Spell::prepareDataForTriggerSystem'),
(    0, 7,0x0000000000020000,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Pounce',                             'Spell::CheckCast'),
(    0, 6,0x0000000000000001,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Power Word: Shield',                 'Spell::cast'),
(    0, 6,0x0000002000000000,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Prayer of Mending',                  'Spell::cast'),
(    0, 6,0x0000002000000000,0x00000000,  -1,  -1,  -1,  6, -1,-1,'Prayer of Mending',                  'Spell::cast'),
(    0, 8,0x0000024000000860,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Preparation (affected spells)',      'Spell::EffectDummy'),
(    0, 7,0x0000000000001000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Rake',                               'Spell::EffectSchoolDMG'),     /* used in */
(    0, 7,0x0000000000001000,0x00000000,  -1,  -1,  -1, 80, -1, 2,'Rake',                               'Spell::EffectSchoolDMG'),     /* exactly selected */
(    0, 7,0x0000000000001000,0x00000000,  -1,  -1,  -1, -1,  3,-1,'Rake',                               'Aura::HandlePeriodicDamage'), /* used in */
(    0, 7,0x0000000000001000,0x00000000,  -1,  -1,  -1, 80, -1, 2,'Rake',                               'Aura::HandlePeriodicDamage'), /* exactly selected */
(    0, 7,0x0000000000000040,0x00000000,  -1,  -1,  -1, -1,  8,-1,'Regrowth',                           'Spell::EffectHeal'),
(    0, 7,0x0000000000000010,0x00000000,  -1,  -1,  -1, -1,  8,-1,'Rejuvenation',                       'Spell::EffectHeal'),
(    0, 3,0x0000010000000000,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Replenish Mana',                     'Spell::prepareDataForTriggerSystem'),
(    0,11,0x0000000000000000,0x00000010,  -1,  -1,  -1, -1,  8,-1,'Riptide',                            'Spell::EffectHeal'),
(    0,11,                -1,        -1, 338,  -1,  -1, -1,  4, 1,'Restorative Totems',                 'Spell::EffectSchoolDMG'), 	/*part 1*/
(    0, 4,0x0000000000000400,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Revenge',                            'Spell::EffectSchoolDMG'),
(    0,11,0x0000000000400000,0x00000000,  -1,  -1,  -1, 54, -1,-1,'Rockbiter Weapon',                   'Spell::EffectEnchantItemTmp'),
(    0,15,0x0800000000000000,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Scourge Strike',                     'Spell::DoAllEffectOnTarget'),
(    0, 5,0x0040000000000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Shadow Bite',                        'Spell::EffectSchoolDMG'),
(    0, 6,0x0000000200000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Shadow Word: Death',                 'Spell::EffectSchoolDMG'),
(    0, 5,0x0000000000000000,0x00000002,  -1,  -1,  -1, -1,  3,-1,'Shadowflame',                        'Spell::EffectSchoolDMG'),     /* dot */
(    0, 5,0x0001000000000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Shadowflame',                        'Spell::EffectSchoolDMG'),     /* explcit damage */
(    0, 4,0x0040000000000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Shattering Throw',                   'Spell::EffectSchoolDMG'),
(    0,10,0x0010000000000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Shield of Righteousness',            'Spell::EffectSchoolDMG'),
(    0, 4,0x0000020000000000,0x00000000,  -1,  -1,1209,  2, -1,-1,'Shield Slam',                        'Spell::EffectSchoolDMG'),
(    0, 4,0x0000800000000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Shockwave',                          'Spell::EffectSchoolDMG'),
(    0, 7,0x0000000000008000,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Shred',                              'Unit::MeleeDamageBonus'),
(    0, 4,0x0000000000200000,0x00000000,  -1,  -1,  -1,  3, -1,-1,'Slam',                               'Spell::EffectDummy'),
(    0, 7,0x0000000000000000,0x00000100,  -1,  -1,  -1,  3, -1,-1,'Starfall',                           'Spell::EffectDummy'),
(    0, 7,0x0000000000000000,0x00000100,  -1,  -1,  -1, -1, -1,-1,'Starfall',                           'Spell::SetTargetMap'),
(    0, 9,0x0000000100000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Steady Shot',                        'Spell::EffectSchoolDMG'),
(    0, 9,0x0000000100000000,0x00000000,  -1,  -1,  -1,  3, -1,-1,'Steady Shot',                        'Spell::EffectDummy'),
(    0,-1,                -1,        -1,1989,  -1,  -1, -1, 42, 0,'Sudden Death',                       'Spell::EffectDummy'),
(    0, 7,0x0010000000000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Swipe',                              'Spell::EffectSchoolDMG'),
(    0, 4,0x0000000000000080,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Thunder Clap',                       'Spell::EffectSchoolDMG'),
(    0,11,0x0000000004000000,0x00000000,  -1,  -1,  -1, -1, -1,-1,'Totem of Wrath',                     'Spell::cast'),
(    0, 4,0x0000010000000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Victory Rush',                       'Spell::EffectSchoolDMG'),
(    0, 7,                -1,        -1,2864,  -1,  -1,  0, -1, 2,'Wild Growth',                        'Spell::SetTargetMap'),
(    0, 8,0x0000000010000000,0x00000000,  -1,  -1,  -1,  2, -1,-1,'Wound Poison',                       'Spell::EffectSchoolDMG');
/*id   fm familyMaskA        fmMaskB    icon vis  cat  eff aur ef name                                  code                   */

UPDATE `creature_template` SET `ScriptName`='mob_loatheb_spores' WHERE `entry`=16286;
UPDATE `creature_template` SET `ScriptName`='boss_gothik' WHERE `entry`=16060;
UPDATE `creature_template` SET `ScriptName`='mob_gothik_trainee' WHERE `entry` IN (16124,16127);
UPDATE `creature_template` SET `ScriptName`='mob_gothik_dk' WHERE `entry` IN (16125,16148);
UPDATE `creature_template` SET `ScriptName`='mob_gothik_rider' WHERE `entry` IN (16126,16150);

UPDATE `creature_template` SET `ScriptName`='boss_archavon' WHERE `entry`=31125;
UPDATE `creature_template` SET `ScriptName`='boss_emalon' WHERE `entry`=33993;
UPDATE `creature_template` SET `ScriptName`='npc_tempest_minion' WHERE `entry`=33998;
UPDATE `creature_template` SET `ScriptName`='npc_tempest_warder' WHERE `entry`=34015;
UPDATE `creature_template` SET `ScriptName`='boss_koralon' WHERE `entry`=35013;
UPDATE `creature_template` SET `AIName`='', ScriptName='boss_toravon' WHERE `entry`=38433;
UPDATE `instance_template` SET `script`='instance_vault_of_archavon' WHERE `map`=624;
DELETE FROM `spell_script_target` WHERE `entry` IN (72034,72096);
REPLACE INTO `spell_script_target` VALUES (72034,1,38433),(72096,1,38433);

DELETE FROM `script_texts` where entry in ('-1533082','-1533083');
REPLACE INTO `script_texts`  (entry,content_default,sound,type,language,emote,comment) VALUES
(-1533082,'%s takes in a deep breath.',0,3,0,0,'sapphiron EMOTE_BREATH'),
(-1533083,'%s lifts off into the air!',0,3,0,0,'sapphiron EMOTE_FLY'),
(-1533160,'%s resumes hit attacks!',0,3,0,0,'sapphiron EMOTE_GROUND'),
(-1533161,'%s enrages!',0,3,0,0,'sapphiron EMOTE_ENRAGE');

UPDATE `creature_template` SET `ScriptName`='boss_razorscale' WHERE `entry`=33186;
UPDATE `creature_template` SET `ScriptName`='boss_ignis' WHERE `entry`=33118;
UPDATE `creature_template` SET `ScriptName`='boss_xt002' WHERE `entry`=33293;
UPDATE `creature_template` SET `ScriptName`='boss_flame_leviathan' WHERE `entry`=33113;
UPDATE `creature_template` SET `ScriptName`='boss_auriaya' WHERE `entry`=33515;
UPDATE `creature_template` SET `ScriptName`='boss_kologarn' WHERE `entry`=32930;
UPDATE `creature_template` SET `ScriptName`='boss_kologarn_left_arm' WHERE `entry`=32933;
UPDATE `creature_template` SET `ScriptName`='boss_kologarn_right_arm' WHERE `entry`=32934;
UPDATE `creature_template` SET `ScriptName`='boss_steelbreaker' WHERE `entry`=32867;
UPDATE `creature_template` SET `ScriptName`='boss_molgeim' WHERE `entry`=32927;
UPDATE `creature_template` SET `ScriptName`='boss_brundir' WHERE `entry`=32857;
UPDATE `creature_template` SET `ScriptName`='boss_thorim' WHERE `entry`=32865;
UPDATE `creature_template` SET `ScriptName`='boss_hodir' WHERE `entry`=32845;
UPDATE `creature_template` SET `ScriptName`='boss_freya' WHERE `entry`=32906;
UPDATE `creature_template` SET `ScriptName`='boss_mimiron' WHERE `entry`=33350;
UPDATE `creature_template` SET `ScriptName`='boss_vezax' WHERE `entry`=33271;
UPDATE `creature_template` SET `ScriptName`='boss_yogg_saron' WHERE `entry`=33288;
UPDATE `creature_template` SET `ScriptName`='boss_algalon' WHERE `entry`=32871;
UPDATE `instance_template` SET `script`='instance_ulduar' WHERE `map`=603;

DELETE FROM `creature_spawns` WHERE `id` = 99005;
DELETE FROM `creature_template` WHERE `entry` = 99005;
DELETE FROM `creature_template_addon` WHERE `entry` = 99005;

UPDATE `gameobject_template` SET `flags` = 0, `ScriptName` = 'go_ulduar_teleporter' WHERE `entry`  IN (194569);

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1603017 AND -1603000;
REPLACE INTO `script_texts` VALUES
(-1603000, "New toys? For me? I promise I won't break them this time!", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15724, 1, 0, 0, "XT-002 Aggro"),
(-1603001, "NO! NO! NO! NO! NO!", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15727, 1, 0, 0, "XT-002 Tympanic Tantrum"),
(-1603002, "I... I think I broke it.", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15728, 1, 0, 0, "XT-002 Slay 1"),
(-1603003, "I guess it doesn't bend that way.", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15729, 1, 0, 0, "XT-002 Slay 2"),
(-1603004, "So tired. I will rest for just a moment!", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15725, 1, 0, 0, "XT-002 Heart Opened"),
(-1603005, "I'm ready to play!", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15726, 1, 0, 0, "XT-002 Heart Closed"),
(-1603006, "Time for a new game! My old toys will fight my new toys!", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15732, 1, 0, 0, "XT-002 Adds"),
(-1603007, "I'm tired of these toys. I don't want to play anymore!", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15730, 1, 0, 0, "XT-002 Berserk"),
(-1603008, "You are bad... Toys... Very... Baaaaad!", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15731, 1, 0, 0, "XT-002 Death"),
(-1603009, "Hostile entities detected. Threat assessment protocol active. Primary target engaged. Time minus thirty seconds to re-evaluation.", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15506, 1, 0, 0, "Flame Leviathan Aggro"),
(-1603010, "Total systems failure. Defense protocols breached. Leviathan Unit shutting down.", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15520, 1, 0, 0, "Flame Leviathan Death"),
(-1603011, "Threat assessment routine modified. Current target threat level: zero. Acquiring new target.", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15521, 1, 0, 0, "Flame Leviathan Slay"),
(-1603012, "You will suffer for this trespass!", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15552, 1, 0, 0, "Hodir Aggro"),
(-1603013, "I... I am released from his grasp... at last.", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15557, 1, 0, 0, "Hodir Death"),
(-1603014, "Tragic. To come so far, only to fail.", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15553, 1, 0, 0, "Hodir Slay 1"),
(-1603015, "Welcome to the endless winter.", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15554, 1, 0, 0, "Hodir Slay 2"),
(-1603016, "Winds of the north consume you!", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15555, 1, 0, 0, "Hodir Flash Freeze"),
(-1603017, "<Furious Roar>", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15556, 1, 0, 0, "Hodir Frozen Blows");

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1050010 AND -1050000;
REPLACE INTO `script_texts` VALUES
(-1050001, "Expedition Base Camp", NULL, NULL, NULL, NULL, NULL, NULL, NULL, "Лагерь экспедиции", 0, 0, 0, 0, "Ulduar teleporter text 1"),
(-1050002, "Formation Grounds", NULL, NULL, NULL, NULL, NULL, NULL, NULL, "Железный двор", 0, 0, 0, 0, "Ulduar teleporter text 2"),
(-1050003, "Colossal Forge", NULL, NULL, NULL, NULL, NULL, NULL, NULL, "Колоссальный горн", 0, 0, 0, 0, "Ulduar teleporter text 3"),
(-1050004, "Scrapyard", NULL, NULL, NULL, NULL, NULL, NULL, NULL, "Мусорная свалка", 0, 0, 0, 0, "Ulduar teleporter text 4"),
(-1050005, "Antechamber of Ulduar", NULL, NULL, NULL, NULL, NULL, NULL, NULL, "Вестибюль Ульдуара", 0, 0, 0, 0, "Ulduar teleporter text 5"),
(-1050006, "Shattered Walkway", NULL, NULL, NULL, NULL, NULL, NULL, NULL, "Обвалившаяся галерея", 0, 0, 0, 0, "Ulduar teleporter text 6"),
(-1050007, "Conservatory of Life", NULL, NULL, NULL, NULL, NULL, NULL, NULL, "Круг наблюдения", 0, 0, 0, 0, "Ulduar teleporter text 7"),
(-1050008, "Spark of Imagination", NULL, NULL, NULL, NULL, NULL, NULL, NULL, "Искра воображения", 0, 0, 0, 0, "Ulduar teleporter text 8"),
(-1050009, "Prison of Yogg-Saron", NULL, NULL, NULL, NULL, NULL, NULL, NULL, "Провал безумия", 0, 0, 0, 0, "Ulduar teleporter text 9");

UPDATE `creature_template` SET `ScriptName` = 'boss_krystallus' WHERE `entry` =27977 LIMIT 1 ;

UPDATE `gameobject_spawns` SET `state` = '1' WHERE `guid` =53556;
UPDATE `gameobject_spawns` SET `state` = '1' WHERE `guid` =53560;

UPDATE `gameobject_template` SET `faction` = '114',`data0` = '0' WHERE `entry` =191293;
UPDATE `gameobject_template` SET `faction` = '0', `flags` = '0'  WHERE `entry` IN (193996,190586);
UPDATE `gameobject_spawns` SET `phaseMask` = '65535' WHERE `guid` =37577;
UPDATE `gameobject_spawns` SET `phaseMask` = '65535' WHERE `guid` =37583;

DELETE FROM `script_texts` WHERE `entry` IN
('-1712001','-1712002','-1712003','-1712004','-1712005','-1712006','-1712007','-1712008');

INSERT IGNORE INTO `script_texts` 
(`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) 
VALUES 
('-1712001', 'Soft meat! Come to me!', 'Soft meat! Come to me!', NULL, NULL, NULL, NULL, NULL, NULL, 'Мягкие пришли! Заходите!', '0', '0', '0', '0', NULL),
('-1712002', 'Get it!', 'Get it!', NULL, NULL, NULL, NULL, NULL, NULL, 'Лови кирпич!', '0', '0', '0', '0', NULL),
('-1712003', 'Into the ice!', 'Into the ice!', NULL, NULL, NULL, NULL, NULL, NULL, 'Всех заморожу!', '0', '0', '0', '0', NULL),
('-1712004', 'Stone curse!', 'Stone curse!', NULL, NULL, NULL, NULL, NULL, NULL, 'Окаменей!', '0', '0', '0', '0', NULL),
('-1712005', 'Gr-r-r-r!', 'Gr-r-r-r!', NULL, NULL, NULL, NULL, NULL, NULL, 'Ух, как я зол!', '0', '0', '0', '0', NULL),
('-1712006', 'It is cool!', 'It is cool!', NULL, NULL, NULL, NULL, NULL, NULL, 'Что, съел?', '0', '0', '0', '0', NULL),
('-1712007', 'O, no...', 'O, no...', NULL, NULL, NULL, NULL, NULL, NULL, 'Не может быть...', '0', '0', '0', '0', NULL),
('-1712008', 'Enrage!', 'Enrage!', NULL, NULL, NULL, NULL, NULL, NULL, 'Ну все, вы меня достали...', '0', '0', '0', '0', NULL);

-- instance
UPDATE instance_template SET script='instance_trial_of_the_champion' WHERE map=650;

-- announcers
UPDATE creature_template SET npcflag=1, scriptname='npc_toc5_announcer' WHERE entry IN (35004, 35005);

-- grand champions
UPDATE creature_template SET scriptname='mob_toc5_warrior' WHERE entry IN (34705, 35572);
UPDATE creature_template SET scriptname='mob_toc5_mage' WHERE entry IN (34702, 35569);
UPDATE creature_template SET scriptname='mob_toc5_shaman' WHERE entry IN (34701, 35571);
UPDATE creature_template SET scriptname='mob_toc5_hunter' WHERE entry IN (34657, 35570);
UPDATE creature_template SET scriptname='mob_toc5_rogue' WHERE entry IN (34703, 35617);

-- argent challenge
UPDATE creature_template SET scriptname='boss_eadric' WHERE entry=35119;
UPDATE creature_template SET scriptname='boss_paletress' WHERE entry=34928;
UPDATE creature_template SET scriptname='mob_toc5_memory' WHERE entry IN (35052, 35041, 35033, 35046, 35043, 35047, 35044, 35039, 35034, 35049, 35030, 34942, 35050, 35042, 35045, 35037, 35031, 35038, 35029, 35048, 35032, 35028, 35040, 35036, 35051);

-- black knight
UPDATE creature_template SET faction_a=14, faction_h=14, scriptname='mob_toc5_risen_ghoul' WHERE entry IN (35545, 35564);
UPDATE creature_template SET scriptname='boss_black_knight' WHERE entry=35451;

-- free spells for creatures
UPDATE `creature_template` SET `spell1` = '0',`spell2` = '0',`spell3` = '0',`spell4` = '0' WHERE `creature_template`.`entry` IN
(34705,34702,34701,34657,34703,35572,35569,35571,35570,35617,35119,34928,35451,35545,35564,35004,35005,35052,35041,35033,35046,35043,35047,35044,35039,35034,35049,35030,34942,35050,35042,35045,35037,35031,35038,35029,35048,35032,35028,35040,35036,35051);
UPDATE `creature_template` SET `spell1` = '0',`spell2` = '0',`spell3` = '0',`spell4` = '0' WHERE `creature_template`.`entry` IN
(12002,12001,12000,12003,12004,12010,12484,12485,12447,12454,12441,12438,12453,12443,12437,12445,12725,12452,12486,12442,12482,12440,12483,12451,12456,12449,12455,12450,12487,12446,12011,12012,12436,12005,12007,12006,12009,12008);

/* VIOLET HOLD */
UPDATE `instance_template` SET `script`='instance_violet_hold' WHERE `map`=608;
UPDATE `creature_template` SET `ScriptName`='npc_sinclari', `npcflag`=1,`minhealth`=50400, `maxhealth`=50400 WHERE `entry`='30658'; -- 64
UPDATE `creature_template` SET `ScriptName`='npc_azure_saboteur' WHERE `entry`='31079';
UPDATE `creature_template` SET `ScriptName`='boss_cyanigosa' WHERE `entry`='31134';
UPDATE `creature_template` SET `ScriptName`='boss_erekem' WHERE `entry`='29315';
UPDATE `creature_template` SET `ScriptName`='mob_erekem_guard' WHERE `entry`='29395';
UPDATE `creature_template` SET `ScriptName`='boss_ichoron' WHERE `entry`='29313';
UPDATE `creature_template` SET `ScriptName`='mob_ichor_globule',`modelid_A`=5492, `modelid_H`=5492 WHERE `entry`='29321';
UPDATE `creature_template` SET `modelid_A`=5492, `modelid_H`=5492 WHERE `entry`='31515'; -- heroic
UPDATE `creature_template` SET `ScriptName`='boss_lavanthor' WHERE `entry`='29312';
UPDATE `creature_template` SET `ScriptName`='boss_moragg' WHERE `entry`='29316';
UPDATE `creature_template` SET `ScriptName`='boss_xevozz' WHERE `entry`='29266';
UPDATE `creature_template` SET `ScriptName`='mob_ethereal_sphere' WHERE `entry`='29271';
UPDATE `creature_template` SET `ScriptName`='boss_zuramat' WHERE `entry`='29314';
UPDATE `creature_template` SET `ScriptName`='mob_zuramat_sentry' WHERE `entry`='29364';
UPDATE `creature_template` SET `ScriptName`='npc_violet_portal' WHERE `entry`='31011';

DELETE FROM `creature_spawns` WHERE map = 608 AND `id`='31011';
DELETE FROM `creature_spawns` WHERE map = 608 AND `id`='31134'; -- cyanigosa should not spawn
UPDATE `gameobject_template` SET `flags`=`flags`|4 WHERE `entry` IN (191723,191564,191563,191562,191606,191722,191556,191566,191565); -- door untargetable

UPDATE `creature_template` SET AIName='EventAI',`ScriptName`='' WHERE `entry` IN ('30660','30695','30666','30668','30667','32191');
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN ('30660','30695','30666','30668','30667','32191');
REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(3066001, 30660, 0, 0, 100, 7, 5000, 7000, 6000, 9000, 11, 58504, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal Guardian - Cast Agonizing Strike'),
(3066002, 30660, 0, 0, 100, 7, 7000, 12000, 9000, 11000, 11, 58508, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal Guardian - Cast Side Swipe'),
(3066601, 30666, 1, 0, 100, 6, 1000, 1000, 0, 0, 11, 58040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azure Captain - Cast Destroy Door Seal on Spawn'),
(3066602, 30666, 9, 0, 100, 7, 0, 5, 5000, 9000, 11, 41056, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azure Captain - Cast Whirlwind'),
(3066603, 30666, 0, 0, 100, 7, 3000, 6000, 7000, 10000, 11, 32736, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azure Captain - Cast Mortal Strike'),
(3066701, 30667, 1, 0, 100, 6, 0, 0, 0, 0, 21, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 'Azure Sorceror - Prevent Combat Movement and Set Phase to 0 on Spawn'),
(3066702, 30667, 1, 0, 100, 6, 1000, 1000, 0, 0, 11, 58040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azure Sorceror - Cast Destroy Door Seal on Spawn'),
(3066703, 30667, 4, 0, 100, 2, 0, 0, 0, 0, 11, 60181, 4, 0, 23, 1, 0, 0, 0, 0, 0, 0, 'Azure Sorceror (Normal) - Cast Arcane Stream and Set Phase 1 on Aggro'),
(3066704, 30667, 9, 5, 100, 3, 5, 35, 6000, 8000, 11, 60181, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azure Sorceror (Normal) - Cast Arcane Stream (Phase 1)'),
(3066705, 30667, 4, 0, 100, 4, 0, 0, 0, 0, 11, 60204, 4, 0, 23, 1, 0, 0, 0, 0, 0, 0, 'Azure Sorceror (Heroic) - Cast Arcane Stream and Set Phase 1 on Aggro'),
(3066706, 30667, 9, 5, 100, 5, 5, 35, 6000, 8000, 11, 60204, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azure Sorceror (Heroic) - Cast Arcane Stream (Phase 1)'),
(3066707, 30667, 3, 5, 100, 6, 7, 0, 0, 0, 21, 1, 0, 0, 23, 1, 0, 0, 0, 0, 0, 0, 'Azure Sorceror - Start Combat Movement and Set Phase 2 when Mana is at 7% (Phase 1)'),
(3066708, 30667, 9, 5, 100, 6, 30, 80, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azure Sorceror - Start Combat Movement at 30 Yards (Phase 1)'),
(3066709, 30667, 9, 5, 100, 6, 5, 15, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azure Sorceror - Prevent Combat Movement at 15 Yards (Phase 1)'),
(3066710, 30667, 9, 5, 100, 6, 0, 5, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azure Sorceror - Start Combat Movement Below 5 Yards'),
(3066711, 30667, 9, 0, 100, 3, 0, 8, 9000, 15000, 11, 60182, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Azure Sorceror (Normal) - Cast Mana Detonation'),
(3066712, 30667, 9, 0, 100, 5, 0, 8, 9000, 15000, 11, 60205, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Azure Sorceror (Heroic) - Cast Mana Detonation'),
(3066713, 30667, 3, 3, 100, 7, 100, 15, 100, 100, 23, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azure Sorceror - Set Phase 1 when Mana is above 15% (Phase 2)'),
(3066714, 30667, 7, 0, 100, 6, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azure Sorceror - Set Phase to 0 on Evade'),
(3066801, 30668, 1, 0, 100, 6, 1000, 1000, 0, 0, 11, 58040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azure Raider - Cast Destroy Door Seal on Spawn'),
(3066802, 30668, 9, 0, 100, 7, 0, 8, 9000, 14000, 11, 52719, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azure Raider - Cast Concussion Blow'),
(3066803, 30668, 0, 0, 100, 7, 7000, 14000, 12000, 18000, 11, 60158, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Azure Raider - Cast Magic Reflection'),
(3069501, 30695, 1, 0, 100, 6, 0, 0, 0, 0, 21, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 'Portal Keeper - Prevent Combat Movement and Set Phase to 0 on Spawn'),
(3069502, 30695, 4, 0, 100, 2, 0, 0, 0, 0, 11, 58531, 1, 0, 23, 1, 0, 0, 0, 0, 0, 0, 'Portal Keeper (Normal) - Cast Arcane Missiles and Set Phase 1 on Aggro'),
(3069503, 30695, 9, 5, 100, 3, 0, 45, 6000, 8000, 11, 58531, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal Keeper (Normal) - Cast Arcane Missiles (Phase 1)'),
(3069504, 30695, 4, 0, 100, 4, 0, 0, 0, 0, 11, 61593, 1, 0, 23, 1, 0, 0, 0, 0, 0, 0, 'Portal Keeper (Heroic) - Cast Arcane Missiles and Set Phase 1 on Aggro'),
(3069505, 30695, 9, 5, 100, 5, 0, 45, 6000, 8000, 11, 61593, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal Keeper (Heroic) - Cast Arcane Missiles (Phase 1)'),
(3069506, 30695, 3, 5, 100, 6, 7, 0, 0, 0, 21, 1, 0, 0, 23, 1, 0, 0, 0, 0, 0, 0, 'Portal Keeper - Start Combat Movement and Set Phase 2 when Mana is at 7% (Phase 1)'),
(3069507, 30695, 9, 5, 100, 6, 40, 80, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal Keeper - Start Combat Movement at 40 Yards (Phase 1)'),
(3069508, 30695, 9, 5, 100, 6, 5, 15, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal Keeper - Prevent Combat Movement at 15 Yards (Phase 1)'),
(3069509, 30695, 9, 5, 100, 6, 0, 5, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal Keeper - Start Combat Movement Below 5 Yards'),
(3069510, 30695, 9, 0, 100, 3, 0, 8, 13000, 19000, 11, 58532, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal Keeper (Normal) - Cast Frostbolt Volley'),
(3069511, 30695, 9, 0, 100, 5, 0, 8, 13000, 19000, 11, 61594, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal Keeper (Heroic) - Cast Frostbolt Volley'),
(3069512, 30695, 0, 0, 100, 7, 0, 8, 9000, 14000, 11, 58534, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal Keeper - Cast Deep Freeze'),
(3069513, 30695, 3, 3, 100, 7, 100, 15, 100, 100, 23, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal Keeper - Set Phase 1 when Mana is above 15% (Phase 2)'),
(3069514, 30695, 7, 0, 100, 6, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal Keeper - Set Phase to 0 on Evade'),
(3219101, 32191, 1, 0, 100, 6, 1000, 1000, 0, 0, 11, 58040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azure Stalker - Cast Destroy Door Seal on Spawn'),
(3219102, 32191, 9, 0, 100, 7, 0, 5, 5000, 7000, 11, 58471, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azure Stalker - Cast Backstab'),
(3219103, 32191, 0, 0, 100, 7, 11000, 16000, 13000, 21000, 11, 58470, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Azure Stalker - Cast Tactical Blink');

DELETE FROM `spell_script_target` WHERE `entry` IN (54160,59474);
REPLACE INTO `spell_script_target` VALUES (54160, 1, 29266);
REPLACE INTO `spell_script_target` VALUES (59474, 1, 29266);

UPDATE `creature_template` SET `ScriptName`='npc_door_seal_vh', `unit_flags`=33816580 WHERE `entry`=30896;
UPDATE `creature_template` SET `faction_A`=35, faction_H=35 WHERE `entry`=30658;
UPDATE `creature_template` SET `faction_A`=1720, faction_H=1720, `ScriptName`='mob_vh_dragons', `minlevel`=70,`maxlevel`=70,`minhealth`=7000,`maxhealth`=8000  WHERE `entry` IN (30660, 30661, 30662, 30663, 30664, 30666, 30667, 30668, 32191, 30695);

-- -1 608 000 VIOLET HOLD
INSERT IGNORE INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
-- Cyanigosa
   (-1608000, 'We finish this now, champions of Kirin Tor!', 13947, 1, 0, 'cyanigosa SAY_AGGRO'),
   (-1608001, 'I will end the Kirin Tor!', 13952, 1, 0, 'cyanigosa SAY_SLAY_1'),
   (-1608002, 'Dalaran will fall!', 13953, 1, 0, 'cyanigosa SAY_SLAY_2'),
   (-1608003, 'So ends your defiance of the Spell-Weaver!', 13954, 1, 0, 'cyanigosa SAY_SLAY_3'),
   (-1608004, 'Perhaps... we have... underestimated... you.', 13955, 1, 0, 'cyanigosa SAY_DEATH'),
   (-1608005, 'A valiant defense, but this city must be razed. I will fulfill Malygos\'s wishes myself!', 13946, 1, 0, 'cyanigosa SAY_SPAWN'),
   (-1608006, 'Am I interrupting?', 13951, 1, 0, 'cyanigosa SAY_DISRUPTION'),
   (-1608007, 'Shiver and die!', 13948, 1, 0, 'cyanigosa SAY_BREATH_ATTACK'),
   (-1608008, 'The world has forgotten what true magic is! Let this be a reminder!', 13949, 1, 0, 'cyanigosa SAY_SPECIAL_ATTACK_1'),
   (-1608009, 'Who among you can withstand my power?', 13950, 1, 0, 'cyanigosa SAY_SPECIAL_ATTACK_2'),
-- Erekem
   (-1608010, 'Notcawwget in way ofrrak-rrakflee!', 14219, 1, 0, 'erekem SAY_AGGRO'),
   (-1608011, '...', 14222, 1, 0, 'erekem SAY_SLAY_1'),
   (-1608012, 'Precious life ... wasted.', 14223, 1, 0, 'erekem SAY_SLAY_2'),
   (-1608013, 'Only strong ... survive.', 14224, 1, 0, 'erekem SAY_SLAY_3'),
   (-1608014, 'Nokaw, kawflee...', 14225, 1, 0, 'erekem SAY_DEATH'),
   (-1608015, 'Free tommfly onw. Ra-aak... Not find usekh-ekh! Escape!', 14218, 1, 0, 'erekem SAY_SPAWN'),
   (-1608016, 'My-raaakfavorite! Awk awk awk! Raa-kaa!', 14220, 1, 0, 'erekem SAY_ADD_KILLED'),
   (-1608017, 'Nasty little...A-ak, kaw! Kill! Yes, kill you!', 14221, 1, 0, 'erekem SAY_BOTH_ADDS_KILLED'),
-- Ichoron
   (-1608018, 'Stand aside, mortals!', 14230, 1, 0, 'ichoron SAY_AGGRO'),
   (-1608019, 'I am a force of nature!', 14234, 1, 0, 'ichoron SAY_SLAY_1'),
   (-1608020, 'I shall pass!', 14235, 1, 0, 'ichoron SAY_SLAY_2'),
   (-1608021, 'You can not stop the tide!', 14236, 1, 0, 'ichoron SAY_SLAY_3'),
   (-1608022, 'I... recede.', 14237, 1, 0, 'ichoron SAY_DEATH'),
   (-1608023, 'I... am fury... unrestrained!', 14239, 1, 0, 'ichoron SAY_SPAWN'),
   (-1608024, 'I shall consume, decimate, devastate, and destroy! Yield now to the wrath of the pounding sea!', 14231, 1, 0, 'ichoron SAY_ENRAGE'),
   (-1608025, 'I will not be contained! Ngyah!!', 14233, 1, 0, 'ichoron SAY_SHATTER'),
   (-1608026, 'Water can hold any form, take any shape... overcome any obstacle.', 14232, 1, 0, 'ichoron SAY_BUBBLE'),
-- Xevozz
   (-1608027, 'It seems my freedom must be bought with blood...', 14499, 1, 0, 'xevozz SAY_AGGRO'),
   (-1608028, 'Nothing personal.', 14504, 1, 0, 'xevozz SAY_SLAY_1'),
   (-1608029, 'Business concluded.', 14505, 1, 0, 'xevozz SAY_SLAY_2'),
   (-1608030, 'Profit!', 14506, 1, 0, 'xevozz SAY_SLAY_3'),
   (-1608031, 'This is an... unrecoverable... loss.', 14507, 1, 0, 'xevozz SAY_DEATH'),
   (-1608032, 'Back in business! Now to execute an exit strategy.', 14498, 1, 0, 'xevozz SAY_SPAWNED'),
   (-1608033, 'It would seem that a renegotiation is in order.', 14503, 1, 0, 'xevozz SAY_CHARGED'),
   (-1608034, 'The air teems with latent energy... quite the harvest!', 14501, 1, 0, 'xevozz SAY_REPEAT_SUMMON_1'),
   (-1608035, 'Plentiful, exploitable resources... primed for acquisition!', 14502, 1, 0, 'xevozz SAY_REPEAT_SUMMON_2'),
   (-1608036, 'Intriguing... a high quantity of arcane energy is near. Time for some prospecting...', 14500, 1, 0, 'xevozz SAY_SUMMON_ENERGY'),
-- Zuramat
   (-1608037, 'Eradicate.', 13996, 1, 0, 'zuramat SAY_AGGRO'),
   (-1608038, 'More... energy.', 13999, 1, 0, 'zuramat SAY_SLAY_1'),
   (-1608039, 'Relinquish.', 14000, 1, 0, 'zuramat SAY_SLAY_2'),
   (-1608040, 'Fall... to shadow.', 14001, 1, 0, 'zuramat SAY_SLAY_3'),
   (-1608041, 'Disperse.', 14002, 1, 0, 'zuramat SAY_DEATH'),
   (-1608042, 'I am... renewed.', 13995, 1, 0, 'zuramat SAY_SPAWN'),
   (-1608043, 'Know... my... pain.', 13997, 1, 0, 'zuramat SAY_SHIELD'),
   (-1608044, 'Gaze... into the void.', 13998, 1, 0, 'zuramat SAY_WHISPER');

-- Remove old versions
DELETE FROM `creature_spawns` WHERE `guid` IN (4456649,4456653,4458724,4458725,4458738,4458739,4458740,4458741,4459981,4459615);
DELETE FROM `creature_spawns` WHERE `id` IN (27731,27734,28249,27736,27915,30571,26499,26497,26528,27891,27892,27884,32273,28439);

UPDATE `creature_spawns` SET `spawntimesecs`= 36000 WHERE `id` IN (31127, 31126, 28167, 28169);
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) values('58825','1','27733');
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) values('35481','4100','0','0','0','0','0','1','1');
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) values('35480','4100','0','0','0','0','0','0','1');
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('58825', '1', '27733');

UPDATE `instance_template` SET `script` = 'instance_culling_of_stratholme' WHERE map=595;

UPDATE `creature_template` SET `ScriptName`='npc_mike' WHERE entry=30571;
UPDATE `creature_template` SET `ScriptName`='npc_chromi_start' WHERE entry=26527;
UPDATE `creature_template` SET `ScriptName`='npc_roger' WHERE entry=27903;
UPDATE `creature_template` SET `ScriptName`='npc_morigan' WHERE entry=27877;
UPDATE `creature_template` SET `ScriptName`='npc_stratholme_crates' WHERE entry=30996;
UPDATE `creature_template` SET `ScriptName`='npc_jena' WHERE entry=27885;
UPDATE `creature_template` SET `ScriptName`='npc_malcolm' WHERE entry=27891;
UPDATE `creature_template` SET `ScriptName`='npc_bartleby_cs' WHERE entry=27907;
UPDATE `creature_template` SET `ScriptName`='npc_chromi_middle' WHERE entry=27915;
UPDATE `creature_template` SET `ScriptName`='npc_uther' WHERE entry=26528;
UPDATE `creature_template` SET `ScriptName`='npc_arthas' WHERE entry=26499;
UPDATE `creature_template` SET `ScriptName`='npc_arthas_priest' WHERE entry=27747;
UPDATE `creature_template` SET `ScriptName`='npc_arthas_marine' WHERE entry=27745;
UPDATE `creature_template` SET `ScriptName`='npc_dark_conversion' WHERE entry IN (31127, 31126, 28167, 28169);
UPDATE `creature_template` SET `ScriptName`='npc_cs_gnoul' WHERE entry=28249;
UPDATE `creature_template` SET `ScriptName`='npc_cs_necromancer' WHERE entry=28200;
UPDATE `creature_template` SET `ScriptName`='npc_cs_field' WHERE entry=27734;
UPDATE `creature_template` SET `ScriptName`='npc_cs_acolyte' WHERE entry=27731;
UPDATE `creature_template` SET `ScriptName`='npc_cs_butcher' WHERE entry=27736;
UPDATE `creature_template` SET `ScriptName`='boss_meathook' WHERE entry=26529;
UPDATE `creature_template` SET `ScriptName`='boss_salramm' WHERE entry=26530;
UPDATE `creature_template` SET `ScriptName`='npc_salramm_gnoul' WHERE entry=27733;
UPDATE `creature_template` SET `ScriptName`='boss_lord_epoch' WHERE entry=26532;
UPDATE `creature_template` SET `ScriptName`='boss_malganis' WHERE entry=26533;
UPDATE `creature_template` SET `ScriptName`='npc_time_riftCS' WHERE entry=28409;
UPDATE `creature_template` SET `ScriptName`='boss_infinite_corruptor' WHERE entry=32273;

DELETE FROM `creature_spawns` WHERE `id` in (27915, 26499, 26497, 26528, 27891, 27892, 32273, 28439);
REPLACE INTO `creature_spawns` (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(27915, 595, 3, 1, 0, 0, 1812.49, 1284.81, 142.248, 4.03364, 300, 0, 0, 17010, 0, 0, 0),
(26499, 595, 3, 1, 0, 1613, 1920.87, 1287.12, 142.935, 6.25562, 43200, 0, 0, 44100, 7988, 0, 0),
(26497, 595, 3, 1, 0, 1221, 1896.39, 1292.91, 143.711, 0.016332, 25, 5, 0, 100800, 88140, 0, 0),
(26528, 595, 3, 1, 0, 1819, 1761.42, 1285.75, 139.945, 4.93874, 25, 5, 0, 126000, 59910, 0, 0),
(27891, 595, 3, 1, 0, 0, 1603.38, 805.988, 123.272, 1.90688, 25, 5, 0, 8982, 0, 0, 0),
(27892, 595, 3, 1, 0, 0, 1602.3, 809.385, 123.454, 5.02884, 25, 5, 0, 8982, 0, 0, 0),
(32273, 595, 2, 1, 0, 1839, 2330.93, 1275.59, 132.848, 3.60489, 86400, 5, 0, 417911, 0, 0, 0),
(28439, 595, 2, 1, 0, 0, 2336.56, 1277.9, 132.885, 3.47923, 25, 5, 0, 1, 0, 0, 0);

REPLACE INTO script_texts (entry, content_default, content_loc8, sound, type, language, emote, comment) VALUES
# TAVERN EVENT
(-1557270, 'Hey! Stop rooting around in my cellar! Clear out!', 'Эй! А ну, хорош рыться в моей кладовке! Проваливайте!', 0,0,0,1, '34587'),
(-1557271, 'This whole situation seems a bit paranoid, don\'t you think?', 'По-моему, все это сильно смахивает на паранойю, вы не находите?', 0,0,0,25, '34587'),
(-1557272, 'Orders are orders, if prince says jump...', 'Приказ есть приказ. Если принц говорит прыгать...', 0,0,0,1, '34587'),
(-1557273, 'It\'s strange order, you cant deny Suspicious food? Under that definition, you should arrest Belfast!', 'Странный приказ, что верно, то верно. Подозрительная пища? Тогда уж и Белфаста арестовывайте!', 0,0,0,1, '34587'),
(-1557274, 'I HEARD THAT! No more ale for you! Not a drop!', 'Я ВСЕ СЛЫШАЛ! Больше эля ты не получишь! Ни капли!', 0,0,0,25, '34587'),
(-1557275, 'Enough, Michael. Business is hurting enough with this scare as it is. We can use every copper.', 'Довольно, Майкл. Наши дела и так страдают из-за этой угрозы. Сейчас каждый медяк на счету.', 0,0,0,274, '34587'),
(-1557276, 'The soldiers are doing important work. The safely of the people is more important, Mal, if you\'re interested in your customers living to spend another day.', 'Солдаты заняты очень важным делом, Мал. Если ты хочешь, чтобы твои покупатели дожили до завтрашнего дня - надо обеспечить их безопасность.', 0,0,0,1, '34587'),
(-1557277, 'I can\'t argue with that.', 'С этим не поспоришь.', 0,0,0,1, '34587'),
(-1557278, 'Don\'t worry too much. By the time I went odd duty, we hadnt a scrap of befouled grain here.', 'Не стоит так сильно волноваться. К тому времени, как я сдал пост, мы не нашли здесь и следа этого мерзского зерна.', 0,0,0,274, '34587'),
(-1557279, 'Thank the Light for that.', 'Скажи спасибо Свету.', 0,0,0,1, '34587'),
# ROGER EVENT
(-1557280, 'Wait, what\'s that smell?', 'Стоп, что за вонь?', 0,0,0,1, '34587'),
(-1557281, 'Can\'t be me, I took a bath 3 days ago!', 'Это не от меня, я мылся 3 дня назад!', 0,0,0,1, '34587'),
(-1557282, 'Oh, close call. It\'s just the grain here.', 'О, это всего лишь зерно.', 0,0,0,1, '34587'),
(-1557283, 'Wait a second. Grain isn\'t supposed to smell like THAT! I better go find a guard.', 'Погоди. Зерно не может ТАК вонять! Я лучше пойду поищу стражника.', 0,0,0,1, '34587'),
# MORIGAN EVENT
(-1557284, 'You don\'t mind me checking out your merchandise for signs of tampering, do you?', 'Вы же не возражаете, чтобы я проверил ваши товары?', 0,0,0,1, '34587'),
(-1557285, 'No, sir.', 'Нет, сэр.', 0,0,0,1, '34587'),
(-1557286, 'Wait, what is it? Youve been holding out on me, Perelli!', 'Подождите-ка, что это? Ты скрывал это от меня, Перелли!', 0,0,0,0, '34587'),
(-1557287, 'What are you talking about, Sergeant?', 'О чем вы говорите, сержант?', 0,0,0,1, '34587'),
(-1557288, 'I am confiscating this suspicious grain, Perelli. We were looking for signs of tampered food, and it would be in your best interest to stay put while Prince Arthas checks this out.', 'Я конфискую это подозрительное зерно, Перелли. Мы искали признаки подозрительной еды, и было бы в твоих лучших интересах оставаться на месте, пока принц Артас разбирается в происходящем.', 0,0,0,1, '34587'),
(-1557289, 'You have to belive me, I am innocent!', 'Вы должны верить мне, я не виновен!', 0,0,0,20, '34587'),
(-1557290, 'Well see about that. Perelli. Well see about that.', 'Это мы посмотрим, Перелли. Это мы посмотрим.', 0,0,0,1, '34587'),
# JENA EVENT
(-1557291, 'Martha. I am out of flour for bread. You wouldn\'t happen to have any grain from that recent, would you?', 'Марта, я не нашла у себя муки для выпечки хлеба. Вы не одолжите мне зерна?', 0,0,0,1, '34587'),
(-1557292, 'Oh hello, Jena. Of Course you can borrow some grain. Help yourself.', 'О, привет Джена. Конечно я одолжу вам зерна. Возьмите сами.', 0,0,0,1, '34587'),
(-1557293, 'Thanks. Martha! I owe you one.', 'Спасибо. Марта! Я твоя должница.', 0,0,0,1, '34587'),
(-1557294, 'Martha, somethings wrong with this grain! Some of the Princes soldiers were looking for this. Im going to go look for one.', 'Марта, с этим зерном что-то не так! Солдаты Принца что-то говорили о нем. Пойду-ка поищу кого-нибудь из них.', 0,0,0,1, '34587'),
(-1557295, 'Oh, my.', 'Боже мой.', 0,0,0,1, '34587'),
# MALCOLM EVENT
(-1557296, 'Looks like a storms coming in, Scruffy...', 'Похоже на приближающуюся бурю, Лохмач...', 0,0,0,0, '34587'),
(-1557297, 'Whats wrong, pal?', 'Что случилось, друг?', 0,0,0,1, '34587'),
(-1557298, 'What did you find, boy?', 'Что ты нашел, парень?', 0,0,0,0, '34587'),
(-1557299, 'This is no good, Scruffy. Stay here and guard the house. I need to go find a soldier.', 'Выглядит плохо, Лохмач. Стой тут и охраняй дом, а я пока сбегаю - поищу солдат.', 0,0,0,0, '34587'),
# BARTLEBY EVENT
(-1557300, 'I knew I should have secured the wagon lock better when I was in Andorhal.', 'Надо было получше запереть фургон в Андорале.', 0,0,0,1, '34587'),
(-1557301, 'This grain shipmend has been nothing but trouble!', 'От этого зерна пока одни лишь хлопоты!', 0,0,0,1, '34587'),
(-1557302, 'Well, guess I should load everything back into the cart.', 'Ну, наверное, мне нужно сложить все обратно в телегу.', 0,0,0,0, '34587'),
(-1557303, 'Oh, come on! My cart broke, my horse a shoe, and now the cargo goes bad!', 'О, черт! Моя телега сломалась, моя лошадь потеряла подкову, а теперь еще и с грузом проблемы!', 0,0,0,1, '34587'),
(-1557304, 'I guess I\'ll go find the authorites. If I\'m lucky theyll tell me it\'s the plague and that were all to die!', 'Похоже, мне придется идти искать представителей закона. Если мне повезет, они скажут, что это чума и что скоро мы все умрем!', 0,0,0,1, '34587'),
# ARTHAS INTRO EVENT
(-1594071, 'Glad you could make it, Uther.', 'Я рад, что ты пришел, Утер!', 12828,0,0,1, '34587'),
(-1594072, 'Watch your tone with me boy. You may be the prince, but I am still your superior as a paladin!', 'Следи за своим тоном, юноша. Хоть ты и принц, но, как паладин, ты все еще находишься под моим командованием.', 12839,0,0,25, '34587'),
(-1594073, 'As if I could forget. Listen, Uther, there\'s something about the plague you should know...', 'Как будто я не помню. Послушай, Утер, я должен рассказать тебе кое-что про чуму...', 12829,0,0,0, '34587'),
(-1594074, 'Oh, no. Were too late. These people have all been infected! They may look fine now, but it\'s just a matter of time before they turn into the undead!', 'О нет. Мы опоздали. Все эти люди заражены чумой! Сейчас это еще незаметно, но скоро все они превратятся в нежить!', 12830,0,0,1, '34587'),
(-1594075, 'What?', 'Что?', 12840,0,0,5, '34587'),
(-1594076, 'This entire city must be purged.', 'Весь город должен быть очищен.', 12831,0,0,1, '34587'),
(-1594077, 'How can you even consider that? There\'s got to be some other way.', 'Как ты мог даже подумать об этом?! Должен быть какой-то другой путь!', 12841,0,0,1, '34587'),
(-1594078, 'Damn it, Uther! As your future king, I order you to purge this city!', 'Проклятие, Утер! Как будущий король, я приказываю тебе очистить этот город!', 12832,1,0,5, '34587'),
(-1594079, 'You are not my king yet, boy! Nor would I obey that command even if you were!', 'Пока ты еще не король, юноша. Но этот приказ я не выполнил бы, будь ты хоть трижды королем!', 12842,1,0,22, '34587'),
(-1594080, 'Then I must consider this an act of treason.', 'Тогда я буду расценивать это как измену.', 12833,0,0,0, '34587'),
(-1594081, 'Treason? Have you lost your mind, Arthas?', 'Измену? Ты совсем лишился рассудка, Артас?', 12843,0,0,5, '34587'),
(-1594082, 'Have I? Lord Uther, by my right of succession and the sovereignty of my crown, I hereby relieve you of your commnad and suspend your paladins from service.', 'Неужели? Лорд Утер, властью, данной мне по праву наследования, я отстраняю вас от командования и освобождаю от службы ваших паладинов.', 12834,0,0,1, '34587'),
(-1594083, 'Arthas! You cant just...', 'Артас! Ты не можешь так просто...', 12837,0,0,1, '34587'),
(-1594084, 'It\'s done! those of you who have the will to save this land, follow me! The rest of you... get out of my sight!', 'Это уже сделано! Те из вас, кто действительно хочет спасти эту землю - за мной! Остальные - прочь с глаз моих!', 12835,0,0,0, '34587'),
(-1594085, 'You\'ve just crossed a terrible inreshold, Arthas!', 'Ты пересек опасную черту, Артас.', 12844,0,0,25, '34587'),
(-1594086, 'Jaina?', 'Джайна?', 12836,0,0,1, '34587'),
(-1594087, 'Im sorry Arthas. I can\'t watch you do this.', 'Прости, Артас. Я не могу на это смотреть.', 12838,0,0,1, '34587'),
(-1594088, 'Take position here and I will lead a small force inside Stratholme to begin the culling. We must contain and purge the infected for the sake of all of Lordaeron!', 'Займите позицию, а я поведу небольшой отряд в Стратхольм и начну очищение. Мы должны изолировать и уничтожить зараженных жителей ради всего Лордерона!', 14327,1,0,1, '34587'),
#ARTHAS ENTER IN THE CITY
(-1594089, 'Everyone looks ready. Remember, these people are all infected with the plague and will die soon. We must purge Stratholme to protect the remainder of Lordaeron from the Scourge. Lets go!', 'Похоже, все готовы. Помните, эти люди заражены чумой и скоро умрут. Мы должны очистить Стратхольм и защитить Лордерон от Плети. Вперед.', 14293,0,0,1, '26499'),
(-1594090, 'Prince Arthas, may the light be praised. Many people in the town have begun to fall seriously ill. Can you help us?', 'Принц Артас, слава Свету! Многие горожане серьезно больны. Можете ли вы помочь нам?', 0,0,0,1, '26499'),
(-1594091, 'I can help you only with a clean death.', 'Я могу помочь вам лишь быстрой смертью.', 14294,0,0,0, '26499'),
(-1594092, 'What? This cant be!', 'Что? Этого не может быть!', 0,0,0,0, '26499'),
(-1594093, 'Oh... My g...', 'О... Мой б...', 0,0,0,0, '26499'),
(-1594094, 'This is begining!', 'Это было только начало.', 14295,0,0,1, '26499'),
(-1594095, 'Yes, this is the beginning. I\'ve been waiting for you, young prince. I am Mal\'Ganis.', 'Да, это начало. Я ждал тебя, юный принц. Я Мал\'Ганис.', 14410,0,0,1, '26499'),
(-1594096, 'As you can see, your people are now mine. I will now turn this city, household by household, until the flame of life has been snuffed out forever.', 'Как видишь, твои люди отныне принадлежат мне. Дом за домом я порабощу этот город, и огонь жизни угаснет здесь навсегда...',14411,0,0,1, '26499'),
(-1594097, 'I will not allow this, Mal\'Ganis. Better these people will die from my hand, than become your slaves after death.', 'Я не допущу этого, Мал\'Ганис! Лучше эти люди погибнут от моей руки, чем станут твоими рабами после смерти!',14296,0,0,5, '26499'),
(-1594098, 'Mal\'Ganis will send his Scourge henchmen to meet us. Skilled warriors and mages go and destroy enemies. I will lead the remaining troops in the purification of Stratholme from infection.', 'Мал\'Ганис отправит своих прислужников из Плети навстречу нам. Опытные воины и маги, ступайте и уничтожьте врагов. Я возглавлю оставшиеся войска в деле очищения Стратхольма от заразы.',14885,0,0,1, '26499'),
#MEATHOOK
(-1594110, 'Play time!', 'Поиграем!',13428,0,0,0, '26499'),
(-1594111, 'New toys!', 'Новые игрушки!',13429,1,0,0, '26499'),
(-1594112, 'This not fun...', 'Это не смешно...',13433,1,0,0, '26499'),
(-1594113, 'Boring...', 'Скучно...',13430,1,0,0, '26499'),
(-1594114, 'Why you stop moving?', 'Почему ты не двигаться?',13431,1,0,0, '26499'), # !
(-1594115, 'Get up! Me not done!', 'Вставай! Я не закончил!',13432,1,0,0, '26499'), # !
#SALRAMM
(-1594129, 'You are too late, champion of Lordaeron. The dead shall have their day.', 'Слишком поздно, герой Лордерона! Пришло время мертвых.',0,1,0,0, '26499'),
(-1594130, 'Ah, the entertainment has arrived!', 'А, развлечемся!',0,1,0,0, '26499'),
(-1594131, 'You only advance... the master\'s plan...', 'Вы всего лишь часть плана хозяина...',0,1,0,0, '26499'),
(-1594132, 'The fun is just beginning!', 'Веселье только начинается!',0,1,0,0, '26499'),
(-1594133, 'Aah, quality materials!', 'Аааа, качественный материал...',0,1,0,0, '26499'),
(-1594134, 'Don\'t worry, I\'ll make good use of you.', 'Не волнуйся, я найду куда тебя приспособить...',0,1,0,0, '26499'),
(-1594135, 'I want a sample...', 'Мне нужен образец!',0,1,0,0, '26499'),
(-1594136, 'Such strength... it must be mine!', 'Столько силы... Она будет моей....',0,1,0,0, '26499'),
(-1594137, 'Your flesh betrays you.', 'Твоя плоть предает тебя!',0,1,0,0, '26499'),
(-1594138, 'Say hello to some friends of mine.', 'Познакомтесь с моими друзьями...',0,1,0,0, '26499'),
(-1594139, 'Come, citizen of Stratholme! Meet your saviors.', 'Жители Стратхольма, встречайте ваших спасителей...',0,1,0,0, '26499'),
(-1594140, 'BOOM! Hahahahah...', 'Бум... Ха-ха-ха-ха...',0,1,0,0, '26499'),
(-1594141, 'Blood... destruction... EXHILARATING!', 'Кровь... Разрушение... Восхитительно...',0,1,0,0, '26499'),
#ARTHAS - HOUSE
(-1594142, 'Heroes, hurry up, we\'ll meet near town hall. We must fight with Mal\'Ganis on its territory!', 'Герои, поспешите, встретимся у городской ратуши. Мы должны сразиться с Мал\'Ганисом на его территории!',14297,1,0,0, '26499'),
(-1594143, 'Follow me, I know the way.', 'Идите за мной. Я знаю дорогу.',14298,0,0,1, '26499'),
(-1594144, 'Ah, You\'ve finaly arrived, Prince Arthas. You\'re here just in the nick of time.', 'О, вы наконец-то прибыли, принц Артас. Вы едва успели.',0,0,0,1, '26499'),
(-1594145, 'Yes! I\'m glad to get here before plague!', 'Да! Я рад, что смог добраться сюда раньше чумы.',14299,0,0,1, '26499'),
(-1594146, 'What kind of magic is this?', 'Что это за магия?',14300,0,0,0, '26499'),
(-1594147, 'Theres no need for you in understand Arthas. All you need to do is die!', 'Тебе и не надо этого понимать, Артас. Все, что от тебя требуется – это умереть.',0,0,0,11, '26499'),
(-1594148, 'Seems that Mal\'Ganis has something else except Scourge. Let\'s hurry.', 'Кажется у Мал\'Ганиса в распоряжении есть еще кое что кроме Плети. Давайте поспешим.',14301,0,0,0, '26499'),
(-1594149, 'Dark magic again... Be ready for all.', 'Снова черная магия... Будьте готовы ко всему!',14302,0,0,0, '26499'),
(-1594150, 'Come on.', 'Идем дальше.',14303,0,0,0, '26499'),
(-1594151, 'Be on the alert. We were surrounded.', 'Будьте начеку. Нас окружили.',14304,0,0,0, '26499'),
(-1594152, 'Mal\'Ganis doesn\'t want to make our life easier...', 'Мал\'Ганис не собирается облегчить нам жизнь.',14305,0,0,0, '26499'),
(-1594153, 'They are stubborn.', 'Они упрямы.',14306,0,0,0, '26499'),
(-1594154, 'What else he will put on my way?', 'Что еще он поставит у меня на пути?',14307,0,0,0, '26499'),
(-1594155, 'Prince Arthas Menethil, in this day mighty evil devoured your soul. Death, which you had to bring to others, today will come for you.', 'Принц Артас Менетил, в этот самый день могущественное зло поглотило твою душу. Смерть, которую ты должен был принести другим, сегодня придет за тобой.',13408,0,0,0, '26499'),
(-1594156, 'I do for Lordaeron that should, and words and deeds will not stop me.', 'Я делаю для Лордерона то, что должен, и никакие слова и поступки меня не остановят.',14309,0,0,5, '26499'),
(-1594157, 'Let\'s see, young prince...', 'Ну что ж, посмотрим, юный принц.',13409,0,0,0, '26499'),
#Epoch
(-1594119, 'We\'ll see about that, young prince.', 'Поcмотрим, молодой принц.',13416,0,0,0, '26499'),
(-1594120, 'There is no future for you.', 'У тебя нет будущего...',13413,1,0,0, '26499'),
(-1594121, 'This is the hour of our greatest triumph!', 'Пробил час нашего величайшего триумфа..',13414,1,0,0, '26499'),
(-1594122, 'You were destined to fail.', 'Тебе было суждено потерпеть поражение...',13415,1,0,0, '26499'),
(-1594123, 'Tick tock, tick tock...', 'Тик-так... Тик-так...',13410,1,0,0, '26499'),
(-1594124, 'Not quick enough!', 'Слишком медленно...',13411,1,0,0, '26499'),
(-1594125, 'Let\'s get this over with.', 'Пора заканчивать...',13412,1,0,0, '26499'),
#Street
(-1594158, 'It will take not much time.', 'Это займет совсем немного времени.',14310,0,0,0, '26499'),
(-1594159, 'Thanks Light, backdoor still works!', 'Слава Свету, что потайной ход еще работает.',14311,0,0,0, '26499'),
(-1594160, 'Let\'s pass through this area as soon as possible. If we do not perish from the undead, we can die from this fire.', 'Давайте пройдем этот участок как можно быстрее. Если мы не погибнем от нежити, то можем погибнуть от этого огня.',14312,0,0,0, '26499'),
(-1594161, 'Breather a little bit, but keep in mind, we will soon again in the path.', 'Отдышитесь немного. Но имейте в виду, нам скоро снова в путь.',14313,0,0,0, '26499'),
(-1594162, 'The rest is over, let\'s go. Mal\'Ganis waits.', 'Отдых окончен, надо идти. Мал\'Ганис ждет.',14314,0,0,0, '26499'),
(-1594163, 'Finally, we even like that lucky! The fire has not yet reached the commercial area. Mal\'Ganis should be in Square of Knights, which is not far from here. Tell me when you\'re ready to go.', 'Наконец нам хоть как-то повезло. Огонь еще не добрался до Торгового ряда. Мал\'Ганис должен быть на Площади рыцарей, которая находится недалеко отсюда. Скажите мне, как будете готовы идти дальше.',14315,0,0,0, '26499'),
(-1594164, 'Let\'s justice will be here.', 'Да свершится правосудие.',14316,0,0,0, '26499'),
#malganis
(-1594170, 'This will be a fine test, Prince Arthas.', 'Это будет достойное испытание, принц Артас.',14413,1,0,0, '26499'),
(-1594171, 'All too easy.', 'Слишком просто...',14416,1,0,0, '26499'),
(-1594172, 'The dark lord is displeased with your interference.', 'Темный повелитель не доволен твоим вмешательством...',144107,1,0,0, '26499'),
(-1594173, 'It is Prince Arthas I want, not you.', 'Мне нужен Принц Артас, а не ты...',14418,1,0,0, '26499'),
(-1594174, 'Anak\'Keri...', 'Анак Кири...',14422,1,0,0, '26499'),
(-1594175, 'My onslaught will wash over the Lich King\'s forces...', 'Мой натиск сметет силы Короля-Лича...',14423,1,0,0, '26499'),
(-1594176, 'Your death is in vain, tiny mortal...', 'Твоя смерть была напрасна насекомое...',14424,1,0,0, '26499'),
(-1594177, 'Your time has come to an end!', 'Твое время вышло...',14425,1,0,0, '26499'),
(-1594178, '*Struggling sounds* I spent too much time in that weak little shell...', 'Аррррхххх... Я и так провел слишком много времени в этой слабой оболочке...',14426,1,0,0, '26499'),
(-1594179, 'I AM MAL\'GANIS! I AM ETERNAL!', 'Ирл Нарат... Я Мал\'Ганис.... Я вечен...',14427,1,0,0, '26499'),
(-1594180, 'You\'ll never defeat the Lich King without my forces! I\'ll have my revenge...on him, AND you...', 'Тебе никогда не победить короля - лича без моих войск! Я отомщу и тебе и ему...',14429,1,0,0, '26499'),
(-1594181, 'We\'re going to finish this right now, Mal\'Ganis!', 'Мы покончим с этим сейчас же, Мал\'Ганис. Один на один.',14317,0,0,0, '26499'),
(-1594182, 'Your journey has just begun, young prince. Gather your forces, and meet me in the arctic land of Northrend. It is there we shall settle the score between us. It is there that your true destiny will unfold.', 'Твое путешествие начинается, юный принц. Собирай свои войска и отправляйся в царство вечных снегов, в Нордскол. Там мы и уладим все наши дела, там ты узнаешь свою судьбу.',14412,0,0,0, '26499'),
(-1594183, 'I\'ll hunt you to the ends of the earth if I have to! Do you hear me? To the ends of the earth!', 'Я отыщу тебя на краю земли! Ты слышишь меня? На краю земли!',14318,1,0,5, '26499'),
(-1594184, 'You performed well this day. Anything that Mal\'Ganis has left behind is yours. Take it as your reward. I must now begin plans for an expedition to Northrend.', 'Вы славно сражались сегодня. Все, что Мал\'Ганис оставил тут – ваша награда. А мне нужно начинать готовиться к экспедиции в Нордскол.',14319,0,0,5, '26499'),
(-1594185, 'Time out...', 'Отдохни!',14414,1,0,0, '26499'),
(-1594186, 'You seem tired.', 'Ты выглядишь усталым!',14415,1,0,0, '26499'),
(-1594187, 'ENOUGH! I waste my time here...I must gather my strength on the home world...', 'Я лишь зря трачу тут свое время. Мне нужно собраться силами в моем родном мире.',14428,1,0,0, '26499');

DELETE FROM script_waypoint WHERE entry=26528;
DELETE FROM script_waypoint WHERE entry=26499;
REPLACE INTO script_waypoint VALUES
#Uther
   (26528, 0, 1772.707,1263.927,138.867, 0, 'WP1'),
   (26528, 1, 1810.249,1276.557,141.854, 0, 'WP2'),
   (26528, 2, 1810.249,1276.557,141.854, 0, 'WP3'),
   (26528, 3, 1851.476,1281.370,144.106, 0, 'WP4 - Arthas Move'),
   (26528, 4, 1898.716,1288.757,143.461, 90000, 'WP5 - Pause Escort'),
   (26528, 5, 1851.476,1281.370,144.106, 0, 'WP6'),
   (26528, 6, 1794.357,1272.183,140.558, 0, 'WP7 - Uther Despawn'),
#Arthas
   (26499, 0, 1902.959,1295.127,143.388, 0, 'WP1'),
   (26499, 1, 1916.657,1287.327,141.946, 0, 'WP2'),
   (26499, 2, 1913.726,1287.407,141.927, 10000, 'WP3 - Dialog'),
   (26499, 3, 1990.833,1293.391,145.467, 0, 'WP4'),
   (26499, 4, 1997.003,1317.776,142.963, 0, 'WP5'),
   (26499, 5, 2019.631,1326.084,142.929, 0, 'WP6'),
   (26499, 6, 2026.469,1287.088,143.596, 0, 'WP7'),
   (26499, 7, 2054.879,1287.505,142.422, 0, 'WP8'),
   (26499, 8, 2050.660,1287.333,142.671, 0, 'WP9 - Pause Escort'), 
   (26499, 9, 2050.652,1287.382,142.672, 12000, 'WP10'),
   (26499, 10, 2081.447,1287.770,141.324, 2000, 'wp11'),
   (26499, 11, 2099.876,1280.210,138.550, 0, 'WP12'),
   (26499, 12, 2120.757,1286.970,136.343, 0, 'WP13'),
   (26499, 13, 2165.073,1279.338,133.400, 0, 'WP14'),
   (26499, 14, 2186.441,1234.445,136.524, 0, 'WP15'),
   (26499, 15, 2210.385,1207.550,136.259, 0, 'WP16'),
   (26499, 16, 2243.594,1177.705,137.144, 0, 'WP17'),
   (26499, 17, 2286.883,1177.262,137.631, 0, 'WP18'),
   (26499, 18, 2320.374,1179.954,133.926, 0, 'WP19'),
   (26499, 19, 2354.626,1192.099,130.535, 0, 'WP20'),
   (26499, 20, 2363.374,1194.101,131.414, 0, 'WP21 - pause'),
   (26499, 21, 2364.749,1194.660,131.672, 3000, 'WP22 - say'),
   (26499, 22, 2390.256,1204.235,134.125, 0, 'WP21 - pause escort and start event'), #2500  2396.035 1206.942 134.038
   (26499, 23, 2442.023,1219.205,133.999, 0, 'WP22'),
   (26499, 24, 2446.945,1192.559,148.100, 0, 'WP23'),
   (26499, 25, 2443.161,1191.442,148.076, 5000, 'WP24 - summon portal'),
   (26499, 26, 2428.901,1192.164,148.076, 0, 'WP25'),
   (26499, 27, 2418.487,1196.059,148.076, 0, 'WP26'),
   (26499, 28, 2401.221,1191.705,148.076, 0, 'WP27'),
   (26499, 29, 2409.143,1157.000,148.190, 1000, 'WP28 - trap'),
   (26499, 30, 2417.584,1121.026,148.082, 10000, 'WP29'),
   (26499, 31, 2420.949,1119.944,148.075, 29000, 'WP30 - pause'),
   (26499, 32, 2444.682,1111.705,148.076, 0, 'WP31 - Stop'),

   (26499, 33, 2457.133,1120.941,150.008, 0, 'House WP11'),
   (26499, 34, 2459.694,1127.012,150.008, 0, 'House WP12'),
   (26499, 35, 2469.617,1122.274,150.008, 0, 'House WP13'),
   (26499, 36, 2470.437,1122.794,150.008, 3000, 'Open Shkaf'),
   (26499, 37, 2471.662,1123.077,150.035, 3000, 'Shkaf Dialog'),
   (26499, 38, 2483.183,1125.042,149.905, 0, 'Secret WP1'),
   (26499, 39, 2487.867,1099.760,144.858, 0, 'Secret WP2'),
   (26499, 40, 2498.270,1101.929,144.599, 0, 'Secret WP3'),
   (26499, 41, 2492.114,1128.238,139.967, 0, 'Secret WP4'),
   (26499, 42, 2500.286,1130.183,139.982, 0, 'Room WP1'),
   (26499, 43, 2503.010,1119.241,139.978, 0, 'Room WP2'),
   (26499, 44, 2517.820,1122.645,132.066, 0, 'Room WP3'),
   (26499, 45, 2540.479,1129.061,130.868, 7000, 'Fire Street WP1'),
   (26499, 46, 2568.619,1157.794,126.906, 0, 'Fire Street WP2'),
   (26499, 47, 2556.074,1222.058,125.412, 0, 'Fire Street WP3'),
   (26499, 48, 2521.531,1295.209,130.573, 20000, 'Fire Street WP4'),
   (26499, 49, 2504.362,1348.667,132.944, 0, 'Fire Street WP5'),
   (26499, 50, 2450.594,1431.544,131.361, 0, 'Fire Street WP6'),
   (26499, 51, 2353.485,1404.839,128.531, 0, 'Stop Malganis'),
   (26499, 52, 2329.882,1406.273,128.013, 0, 'wp'),
   (26499, 53, 2300.415,1489.316,128.362, 0, 'wp stop'),
   (26499, 54, 2329.882,1406.273,128.013, 0, 'wp');

DELETE FROM `creature_spawns` WHERE `id`=26712;
REPLACE INTO `creature_spawns` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(927500, 26712, 600, 3, 1, 17188, 0, -365.477, -724.849, 32.2241, 3.92699, 3600, 5, 0, 4050, 0, 0, 1),
(927501, 26712, 600, 3, 1, 17188, 0, -365.368, -751.128, 32.3213, 2.35619, 3600, 5, 0, 4050, 0, 0, 1),
(927502, 26712, 600, 3, 1, 17188, 0, -392.123, -750.941, 32.2796, 0.680678, 3600, 5, 0, 4050, 0, 0, 1),
(927503, 26712, 600, 3, 1, 17188, 0, -392.455, -724.809, 32.1685, 5.35816, 3600, 5, 0, 4050, 0, 0, 1);

DELETE FROM `creature_template` WHERE (`entry`=26710);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (26710, 0, 0, 0, 0, 0, 2536, 1160, 9829, 14952, 'Channel Target', '', '', 0, 1, 1, 8, 8, 0, 0, 7, 190, 190, 0, 1, 1, 0, 2, 2, 0, 24, 7.5, 2000, 0, 1, 33587200, 0, 0, 0, 0, 0, 0, 1, 1, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 0.2, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=26712);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (26712, 0, 0, 0, 0, 0, 169, 0, 17188, 0, 'Crystal Channel Target', '', '', 0, 70, 70, 4050, 4050, 0, 0, 6719, 16, 16, 0, 1, 1, 0, 252, 357, 0, 304, 1, 2000, 0, 1, 33554436, 0, 0, 0, 0, 0, 0, 215, 320, 44, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'crystal_channel');

DELETE FROM `creature_template` WHERE (`entry`=26714);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (26714, 0, 0, 0, 0, 0, 2536, 1160, 9829, 14952, 'Dead Crystal Holder', '', '', 0, 1, 1, 8, 8, 0, 0, 7, 190, 190, 0, 1, 1, 0, 2, 2, 0, 24, 7.5, 2000, 0, 1, 32768, 0, 0, 0, 0, 0, 0, 1, 1, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 0.2, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, '');

/*King Dred*/

DELETE FROM creature_spawns WHERE id in (27709, 27753, 27490);

DELETE FROM `creature_spawns` WHERE `id`=26632;
REPLACE INTO `creature_spawns` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(152490, 26632, 600, 3, 1, 0, 0, -237.176, -675.768, 131.866, 4.66859, 25, 0, 0, 512278, 4169, 0, 0);

DELETE FROM `creature_template` WHERE (`entry`=26632);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (26632, 31360, 0, 0, 0, 0, 27072, 0, 27072, 0, 'The Prophet Tharon\'ja', '', '', 76, 77, 275025, 275025, 0, 0, 0, 16, 16, 0, 1, 1, 1, 350, 450, 0, 400, 7.5, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 350, 450, 75, 6, 72, 26632, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'boss_tharonja');

DELETE FROM `creature_template` WHERE (`entry`=31360);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (31360, 0, 0, 0, 0, 0, 27072, 0, 27072, 0, 'The Prophet Tharon\'ja (1)', '', '', 82, 82, 512278, 512278, 4169, 4169, 0, 16, 16, 0, 1, 1, 1, 450, 650, 0, 750, 13, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 350, 530, 100, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 38, 1, 0, 43670, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, '');

DELETE FROM `spell_script_target` WHERE `entry` = 49555;
REPLACE INTO `spell_script_target` VALUES (49555, 2, 27753);

UPDATE `creature_template` SET minhealth = 1885, maxhealth = 1885 WHERE entry = 27753;

DELETE FROM `creature_template` WHERE (`entry`=26627);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (26627, 31344, 0, 0, 0, 0, 24500, 0, 24500, 0, 'Crystal Handler', '', '', 0, 75, 75, 21270, 21270, 0, 0, 0, 15, 15, 0, 1, 1, 1, 500, 1000, 0, 500, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2.5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'crystal_handler');

DELETE FROM `creature_template` WHERE (`entry`=31344);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (31344, 0, 0, 0, 0, 0, 24500, 0, 24500, 0, 'Crystal Handler (1)', '', '', 0, 81, 81, 41704, 41704, 8979, 8979, 0, 15, 15, 0, 1, 1, 1, 1000, 1500, 0, 500, 2, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=27597);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (27597, 31348, 0, 0, 0, 0, 22337, 0, 22337, 0, 'Hulking Corpse', '', '', 0, 74, 74, 12338, 12338, 0, 0, 0, 15, 15, 0, 1, 1, 1, 500, 1000, 0, 500, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1.2, 1, 0, 0, 0, 0, 0, 0, 0, 88, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=31348);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (31348, 0, 0, 0, 0, 0, 22337, 0, 22337, 0, 'Hulking Corpse (1)', '', '', 0, 80, 80, 25200, 25200, 0, 0, 0, 15, 15, 0, 1, 1, 1, 1000, 1500, 0, 500, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 88, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=27598);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (27598, 31873, 0, 0, 0, 0, 10978, 0, 10972, 0, 'Fetid Troll Corpse', '', '', 0, 74, 74, 2056, 2056, 0, 0, 0, 15, 15, 0, 1, 1, 0, 200, 400, 0, 500, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0.2, 1, 0, 0, 0, 0, 0, 0, 0, 73, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=31873);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (31873, 0, 0, 0, 0, 0, 10978, 0, 10972, 0, 'Fetid Troll Corpse (1)', '', '', 0, 80, 80, 3780, 3780, 0, 0, 0, 15, 15, 0, 1, 1, 0, 500, 1000, 0, 500, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0.3, 1, 0, 0, 0, 0, 0, 0, 0, 73, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=27600);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (27600, 31356, 0, 0, 0, 0, 2606, 0, 2606, 0, 'Risen Shadowcaster', '', '', 0, 74, 74, 1645, 1645, 7809, 7809, 0, 15, 15, 0, 1, 1, 0, 200, 400, 0, 500, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0.2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=31356);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (31356, 0, 0, 0, 0, 0, 2606, 0, 2606, 0, 'Risen Shadowcaster (1)', '', '', 0, 81, 81, 3128, 3128, 8979, 8979, 0, 15, 15, 0, 1, 1, 0, 500, 1000, 0, 500, 2, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0.3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

UPDATE `creature_template` set AIName = '', ScriptName = 'boss_trollgore' where entry = 26630;
UPDATE `creature_template` set AIName = '', ScriptName = 'boss_novos' where entry = 26631;
UPDATE `creature_template` set AIName = '', ScriptName = 'crystal_handler' where entry = 26627;
UPDATE `creature_template` set AIName = '', ScriptName = 'crystal_channel' where entry = 26712;
UPDATE `creature_template` set AIName = '', ScriptName = 'risen_shadowcaster' where entry = 27600;
UPDATE `creature_template` set AIName = '', ScriptName = 'boss_dred' where entry = 27483;
UPDATE `creature_template` set AIName = '', ScriptName = 'boss_tharonja' where entry = 26632;

DELETE FROM script_texts WHERE entry in (-1600020, -1600021);
REPLACE INTO script_texts (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) values
('-1600020','King Dred raises his talon menacingly!','0','5','0','King Dred Talon'),
('-1600021','King Dred calls for a raptor!','0','5','0','King Dred Call for Raptor');

-- Ahnkahet from Tassadar
UPDATE `instance_template` SET `script` = 'instance_ahnkahet' WHERE `map`=619;
UPDATE `creature_template` SET `ScriptName` = 'boss_jedoga', `AIName`='' WHERE `entry`=29310;
UPDATE `creature_template` SET `ScriptName` = 'boss_nadox', `AIName`='' WHERE `entry`=29309;
UPDATE `creature_template` SET `ScriptName` = 'boss_taldaram', `AIName`='' WHERE `entry`=29308;
UPDATE `gameobject_template` SET `ScriptName` = 'go_nerubian_device' WHERE `entry` IN (193093,193094);
UPDATE `creature_template` SET `ScriptName` = 'boss_volazj', `AIName`='' WHERE `entry`=29311;

DELETE FROM `creature_template_addon` WHERE `entry` IN (30385, 31474);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES
('30385', '0', '8', '1', '0', '0', NULL),
('31474', '0', '8', '1', '0', '0', NULL);

DELETE FROM `creature_template` WHERE entry IN (31474, 30385, 29310, 31465);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(29310, 31465, 0, 0, 0, 0, 26777, 0, 26777, 0, 'Jedoga Shadowseeker', '', '', 0, 75, 75, 212700, 212700, 0, 0, 8204, 16, 16, 0, 1, 1, 339, 481, 0, 370, 7.5, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 293, 436, 53, 7, 0, 29310, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4176, 6960, '', 0, 3, 20, 20, 0, 0, 0, 0, 0, 0, 0, 172, 1, 1575, 0, 0, 'boss_jedoga'),
(30385, 31474, 0, 0, 0, 0, 27382, 27384, 27383, 27385, 'Twilight Volunteer', '', '', 0, 74, 74, 25705, 25705, 0, 0, 0, 16, 16, 0, 1, 1, 0, 0, 0, 0, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2.5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 93, 0, 0, 'npc_twilight_volunteer'),
(31465, 0, 0, 0, 0, 0, 26777, 0, 26777, 0, 'Jedoga Shadowseeker (1)', '', '', 0, 82, 82, 431392, 431392, 0, 0, 10253, 16, 16, 0, 1, 1, 463, 640, 0, 726, 13, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 360, 520, 91, 7, 0, 31465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8352, 13920, '', 0, 3, 32, 20, 0, 0, 0, 0, 0, 0, 0, 172, 1, 0, 0, 1, ''),
(31474, 0, 0, 0, 0, 0, 27382, 27384, 27383, 27385, 'Twilight Volunteer (1)', '', '', 0, 81, 81, 58648, 58648, 0, 0, 0, 16, 16, 0,  1, 1, 0, 0, 0, 0, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 4.5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

UPDATE `creature_template` SET `unit_flags` = '0' WHERE `entry` IN (30114,31473);

DELETE FROM `creature_addon` WHERE guid=131953;
DELETE FROM `creature_spawns` WHERE guid IN (131953, 115064);
REPLACE INTO `creature_spawns` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(131953, 29310, 619, 3, 1, 26777, 0, 357.353, -692.808, -10.7028, 5.56541, 14400, 5, 0, 212700, 0, 0, 1);

DELETE FROM `gameobject_spawns` WHERE `guid` = 911321;
REPLACE INTO `gameobject_spawns` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(911321, 194394, 619, 2, 1, 371.842, -701.621, -16.1797, 5.67851, 0, 0, 0.297751, -0.954644, -10, 0, 1);

UPDATE `creature_template` SET `unit_flags` = 0, `difficulty_entry_1` = 0 WHERE `entry` IN (30258, 30391, 30435);
UPDATE `creature_template` SET `ScriptName` ='npc_amanitar_mushroom', `AIName`='' WHERE `entry` IN (30391, 30435);
UPDATE `creature_template` SET `ScriptName` ='boss_amanitar', `AIName`='', `mindmg` = 488, `maxdmg` = 648, `attackpower` = 782, `dmg_multiplier` = 13  WHERE `entry` = 30258;

DELETE FROM `creature_spawns` WHERE `map` = 619 AND `id` IN (30258,30391);

REPLACE INTO `creature_spawns` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
#Amanitar
(30258, 619, 2, 1, 0, 0, 340.433, -884.8, -74.6965, 6.10105, 9800, 0, 0, 1, 0, 0, 0),

#Mushrooms
(30391, 619, 2, 1, 0, 0, 358.386, -885.553, -76.1054, 3.06235, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 355.893, -871.712, -76.1473, 2.37356, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 350.343, -874.985, -76.7057, 3.40793, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 339.429, -875.16, -75.6668, 2.76233, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 333.095, -874.652, -73.8099, 3.95457, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 324.208, -878.923, -70.915, 3.95457, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 319.612, -893.614, -66.4438, 6.25892, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 335.775, -899.115, -76.1423, 0.282045, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 344.644, -898.122, -77.6435, 0.282045, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 353.341, -894.159, -77.208, 0.282045, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 363.279, -897.252, -79.5129, 0.282045, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 364.47, -903.557, -80.3345, 4.7651, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 366.219, -915.939, -82.5392, 5.04784, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 368.297, -920.562, -82.5588, 5.59919, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 381.647, -923.685, -82.4737, 0.190153, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 389.079, -916.929, -81.4451, 1.40831, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 386.916, -909.718, -79.9835, 1.40831, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 386.976, -898.374, -79.2561, 2.5652, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 390.349, -882.168, -76.0919, 1.56146, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 387.136, -871.625, -75.4158, 2.15051, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 378.056, -864.542, -73.8699, 3.01759, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 363.749, -858.04, -75.1185, 3.01759, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 352.564, -862.387, -74.7834, 3.01759, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 343.924, -860.44, -74.5909, 2.23533, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 339.94, -852.104, -74.3732, 0.995972, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 347.839, -848.228, -73.7097, 6.23065, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 324.306, -858.725, -75.0947, 3.68596, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 347.971, -882.318, -75.884, 3.55872, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 347.965, -889.829, -76.747, 3.55872, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 368.578, -877.354, -75.676, 1.46878, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 378.003, -852.353, -73.5427, 0.519235, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 361.828, -841.2, -70.86, 2.94298, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 346.972, -839.523, -73.5286, 2.94298, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 337.009, -843.074, -74.3865, 2.94298, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 330.036, -847.017, -74.318, 3.25321, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 328.839, -838.69, -72.921, 1.8929, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 322.452, -829.799, -73.5624, 2.6563, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 316.367, -822.016, -73.1033, 1.71618, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 320.592, -812.011, -73.8038, 0.957487, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 322.619, -803.898, -72.9384, 2.07668, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 331.481, -811.702, -72.9227, 5.46332, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 341.894, -826.849, -73.049, 5.46332, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 387.58, -856.341, -71.0935, 5.72486, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 401.977, -867.49, -73.3215, 5.27247, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 408.72, -872.115, -73.0256, 6.03823, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 416.438, -875.336, -70.4833, 5.08397, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 403.004, -895.527, -75.561, 5.60391, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 409.35, -902.562, -77.2837, 5.22927, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 414.538, -911.69, -79.8006, 5.22927, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 419.727, -920.818, -80.7403, 5.22927, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 428.151, -920.833, -79.0992, 0.892305, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 436.712, -911.759, -78.8367, 0.0605679, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 461.167, -910.276, -77.4777, 0.0605679, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 419.827, -930.386, -77.7951, 4.29465, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 418.017, -939.624, -80.2493, 4.29465, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 417.247, -948.532, -79.3315, 4.29465, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 409.236, -952.042, -80.6495, 4.29465, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 410.077, -959.059, -78.9977, 4.29465, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 403.871, -964.208, -77.8873, 4.29465, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 401.693, -970.428, -77.3012, 4.90255, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 402.379, -980.099, -75.4585, 4.60567, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 399.272, -984.535, -75.9494, 3.15425, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 380.102, -984.145, -74.2926, 2.13402, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 369.565, -973.481, -77.4914, 2.56756, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 360.748, -967.779, -79.832, 2.56756, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 350.138, -958.988, -79.4422, 2.16229, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 342.879, -944.352, -79.8533, 1.64157, 30, 0, 0, 1, 0, 0, 0);

UPDATE `creature_template` SET `AIname`='EventAI' WHERE `entry` = 30176;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 30176;
REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('3017610', '30176', '11', '0', '100', '6', '0', '0', '0', '0', '11', '56151', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('3017611', '30176', '8', '0', '100', '6', '56153', '0', '0', '0', '28', '0', '56153', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');

-- iron council
UPDATE creature_template SET scriptname='mob_ulduar_lightning_elemental' WHERE entry=32958;
UPDATE creature_template SET scriptname='mob_rune_of_power' WHERE entry=33705;
UPDATE creature_template SET scriptname='mob_rune_of_summoning' WHERE entry=33051;
UPDATE creature_template SET mechanic_immune_mask=619395071, scriptname='boss_brundir' WHERE entry=32857;
UPDATE creature_template SET mechanic_immune_mask=617299803, scriptname='boss_molgeim' WHERE entry=32927;
UPDATE creature_template SET mechanic_immune_mask=617299803, scriptname='boss_steelbreaker' WHERE entry=32867;

-- kologarn
DELETE FROM creature_spawns WHERE id IN (32933, 32934, 232933);
REPLACE INTO creature_spawns (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) 
VALUES (9327991, 32933, 603, 3, 65535, 0, 0, 1799.68, -24.3599, 452.227, 3.14747, 604800, 0, 0, 543855, 0, 0, 0);
REPLACE INTO creature_spawns (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) 
VALUES (9327992, 32934, 603, 3, 65535, 0, 0, 1799.68, -24.3599, 452.227, 3.14747, 604800, 0, 0, 543855, 0, 0, 0);
UPDATE creature_model_info SET bounding_radius=15, combat_reach=15 WHERE modelid IN (28638, 28822, 28821);
UPDATE creature_template SET mechanic_immune_mask=652951551, scriptname='boss_kologarn_right_arm' WHERE entry=32934;
UPDATE creature_template SET mechanic_immune_mask=652951551, scriptname='boss_kologarn_left_arm' WHERE entry=32933;
UPDATE creature_template SET scriptname='mob_ulduar_rubble' WHERE entry=33768;
UPDATE creature_template SET mechanic_immune_mask=617299803, scriptname='boss_kologarn' WHERE entry=32930;

-- razorscale
UPDATE creature_template SET mechanic_immune_mask=617299803, scriptname='boss_razorscale' WHERE entry=33186;
UPDATE creature_template SET scriptname='mob_devouring_flame_target' WHERE entry=34188;
UPDATE creature_template SET scriptname='mob_dark_rune_watcher' WHERE entry=33453;
UPDATE creature_template SET scriptname='mob_dark_rune_sentinel' WHERE entry=33846;
UPDATE creature_template SET scriptname='mob_dark_rune_guardian' WHERE entry=33388;
UPDATE creature_template SET scriptname='npc_expedition_commander' WHERE entry=33210;

-- ignis
UPDATE creature_template SET mechanic_immune_mask=617299803, scriptname='boss_ignis' WHERE entry=33118;
UPDATE creature_template SET minlevel=80, maxlevel=80, faction_h=1925, faction_a=1925, scale=0.5, scriptname='mob_scorch_target' WHERE entry=33221;
UPDATE creature_template SET scriptname='mob_iron_construct' WHERE entry=33121;

-- Entrance
UPDATE `areatrigger_teleport` SET `required_level` = '80' WHERE `areatrigger_teleport`.`id` =5670;

UPDATE `creature_spawns` SET `spawntimesecs` = 7200 WHERE `map` = 631 AND (`spawntimesecs` BETWEEN 200 AND 7100 );

DELETE FROM `gameobject_spawns` WHERE `guid` = 913334;
REPLACE INTO `gameobject_spawns` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(913334, 202244, 631, 3, 1, -209.5, 2211.91, 199.97, 3.07661, 0, 0, 0.999472, 0.0324833, 0, 0, 1);

UPDATE `gameobject_template` SET `flags` = 0, `ScriptName` = 'go_icecrown_teleporter' WHERE `entry`  IN (202242,202243,202244,202245,202235,202223,202246);
UPDATE `gameobject_spawns` SET `phaseMask` = 1 WHERE `id`  IN (202242,202243,202244,202245,202235,202223,202246);
DELETE FROM `areatrigger_teleport` WHERE `id` = 5718 AND `target_map` = 631;

DELETE FROM `creature_spawns` WHERE `id` = 99322;
DELETE FROM `creature_template` WHERE `entry` = 99322;
DELETE FROM `locales_npc_text` WHERE `entry` = 99322;
DELETE FROM `npc_text` WHERE `ID` = 99322;
DELETE FROM `locales_npc_text` WHERE `entry` = 99323;
DELETE FROM `npc_text` WHERE `ID` = 99323;
DELETE FROM `gameobject_spawns` WHERE `guid` IN (913334);

UPDATE `instance_template` SET `script`='instance_icecrown_spire' WHERE `map`=631;

-- Saurfang
UPDATE `creature_template` SET `ScriptName`='boss_deathbringer_saurfang' WHERE `entry`=37813;
DELETE FROM `gameobject_spawns` WHERE `guid` IN (913383, 913385, 913395, 913397);
DELETE FROM `gameobject_template` WHERE `entry` IN (902241,902242);
UPDATE `creature_template` SET `ScriptName`='mob_blood_beast', `AIName`='' WHERE `entry`= 38508;
DELETE FROM `spell_script_target` WHERE `entry` = 72260;
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('72260', '1', '37813');

-- Deathwhisper
UPDATE `creature_template` SET `ScriptName`='boss_lady_deathwhisper' WHERE `entry`=36855;
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14,`ScriptName`='mob_vengeful_shade', `AIName`='' WHERE `entry`= 38222;
UPDATE `creature_template` SET `ScriptName`='mob_cult_adherent', `AIName`='' WHERE `entry`= 37949;
UPDATE `creature_template` SET `ScriptName`='mob_cult_fanatic', `AIName`='' WHERE `entry`= 37890;

-- Marrowgar
UPDATE `creature_template` SET `ScriptName`='boss_lord_marrowgar' WHERE `entry`= 36612;
UPDATE `gameobject_template` SET `faction` = '114',`data0` = '0' WHERE `gameobject_template`.`entry` IN (201910,201911);
UPDATE `gameobject_spawns` SET `state` = '1' WHERE `guid` IN (72526,72525);
UPDATE `creature_template` SET `ScriptName`='mob_coldflame', `minlevel` = 82, `maxlevel` = 82, `modelid_A` = 11686, `modelid_A2` = 11686, `modelid_H` = 11686, `modelid_H2` = 11686, `faction_A` = 14, `faction_H` = 14  WHERE `entry`= 36672;
UPDATE `creature_template` SET `ScriptName`='mob_bone_spike' WHERE `entry`= 38711;

-- Gunship battle
UPDATE `creature_template` SET `ScriptName`='mob_spire_frostwyrm', `AIName`='' WHERE `entry`= 37230;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 37230;
UPDATE `creature_template` SET `ScriptName`='mob_frost_giant', `AIName`='' WHERE `entry` IN (38490, 38494) ;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (38490, 38494);

-- Gunship armory (override)
DELETE FROM `gameobject_spawns` WHERE `id` IN (201872,201873,201874,201875,202177,202178,202179,202180);
UPDATE `gameobject_template` SET `flags` = 0 WHERE `gameobject_template`.`entry` IN (201872,201873,201874,201875,202177,202178,202179,202180);
REPLACE INTO `gameobject_spawns` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(972541, 201872, 631, 1, 1, -428.141, 2421.34, 191.233, 3.10389, 0, 0, 0.999822, 0.0188489, -604800, 100, 1),
(972543, 201873, 631, 2, 1, -428.141, 2421.34, 191.233, 3.10389, 0, 0, 0.999822, 0.0188489, -604800, 100, 1),
(972545, 201874, 631, 4, 1, -428.141, 2421.34, 191.233, 3.10389, 0, 0, 0.999822, 0.0188489, -604800, 100, 1),
(972547, 201875, 631, 8, 1, -428.141, 2421.34, 191.233, 3.10389, 0, 0, 0.999822, 0.0188489, -604800, 100, 1),
(972551, 202177, 631, 1, 1, -447.493, 2003.5, 191.235, 0.153939, 0, 0, 0.0768933, 0.997039, -604800, 100, 1),
(972553, 202178, 631, 2, 1, -447.493, 2003.5, 191.235, 0.153939, 0, 0, 0.0768933, 0.997039, -604800, 100, 1),
(972555, 202179, 631, 4, 1, -447.493, 2003.5, 191.235, 0.153939, 0, 0, 0.0768933, 0.997039, -604800, 100, 1),
(972557, 202180, 631, 8, 1, -447.493, 2003.5, 191.235, 0.153939, 0, 0, 0.0768933, 0.997039, -604800, 100, 1);

-- Plague wing
-- Rotface
UPDATE `creature_template` SET `ScriptName`='boss_rotface', `AIName`=''  WHERE `entry`= 36627;
UPDATE `gameobject_template` SET `faction` = '114' WHERE `gameobject_template`.`entry` IN (201370);
UPDATE `gameobject_spawns` SET `state` = '0' WHERE `id` IN (201370);
UPDATE `creature_template` SET `ScriptName`='mob_small_ooze', `AIName`='' WHERE `entry`= 36897;
UPDATE `creature_template` SET `ScriptName`='mob_big_ooze', `AIName`='' WHERE `entry`= 36899;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `AIName` ='', `faction_A`= 14, `faction_H` = 14, `ScriptName`='mob_sticky_ooze', `AIName`='' WHERE `entry`= 37006;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `AIName` ='', `faction_A`= 14, `faction_H` = 14, `ScriptName`='mob_ooze_stalker', `AIName`='' WHERE `entry` IN (37986,37013);
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `AIName` ='', `faction_A`= 14, `faction_H` = 14, `ScriptName`='mob_ooze_explode_stalker', `AIName`='' WHERE `entry` = 38107;
DELETE FROM `spell_script_target` WHERE `entry` = 69783;
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69783', '1', '37013');
DELETE FROM `spell_script_target` WHERE `entry` = 69508;
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69508', '1', '37986');


-- Festergut
UPDATE `creature_template` SET `ScriptName`='boss_festergut', `AIName`=''  WHERE `entry`= 36626;
UPDATE `gameobject_template` SET `faction` = '114' WHERE `gameobject_template`.`entry` IN (201371);
UPDATE `gameobject_spawns` SET `state` = '0' WHERE `id` IN (201371);
UPDATE `creature_template` SET `ScriptName`='mob_vile_gas_stalker', `AIName`=''  WHERE `entry`= 38548;
DELETE FROM `spell_script_target` WHERE `targetEntry` = 38548;
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69248', '1', '38548');
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69240', '1', '38548');

-- Professor putricide
UPDATE `creature_template` SET `ScriptName`='boss_proffesor_putricide', `AIName`='' WHERE `entry`= 36678;
UPDATE `gameobject_template` SET `faction` = '114',`data0` = '0' WHERE `gameobject_template`.`entry` IN (201372,201614,201613, 201612);
UPDATE `gameobject_spawns` SET `state` = '1' WHERE `id` IN (201612,201614,201613);
UPDATE `gameobject_spawns` SET `state` = '0' WHERE `id` IN (201372);
UPDATE `creature_template` SET `ScriptName`='mob_icc_gas_cloud', `AIName`='' WHERE `entry`= 37562;
UPDATE `creature_template` SET `ScriptName`='mob_icc_volatile_ooze', `AIName`='' WHERE `entry`= 37697;
UPDATE `creature_template` SET `ScriptName`='mob_choking_gas_bomb', `AIName`='',`minlevel` = 82, `maxlevel` = 82, `faction_A` = 14, `faction_H` = 14, `scale` = 0.5 WHERE `entry`= 38159;
UPDATE `creature_template` SET `ScriptName`='mob_ooze_puddle', `AIName`='', `minlevel` = 82, `maxlevel` = 82, `modelid_A` = 11686, `modelid_A2` = 11686, `modelid_H` = 11686, `modelid_H2` = 11686, `faction_A` = 14, `faction_H` = 14  WHERE `entry`= 37690;
UPDATE `gameobject_template` SET `faction` = '0', `ScriptName` = 'go_plague_sigil' WHERE `gameobject_template`.`entry` IN (202182);

-- Blood wing
UPDATE `gameobject_template` SET `faction` = '0', `ScriptName` = 'go_bloodwing_sigil' WHERE `gameobject_template`.`entry` IN (202181);
-- Taldaram
UPDATE `creature_template` SET `ScriptName`='boss_taldaram_icc', `AIName`='' WHERE `entry`= 37973;
-- Valanar
UPDATE `creature_template` SET `ScriptName`='boss_valanar_icc', `AIName`='' WHERE `entry`= 37970;
-- Keleseth
UPDATE `creature_template` SET `ScriptName`='boss_keleseth_icc', `AIName`='' WHERE `entry`= 37972;

UPDATE `gameobject_template` SET `faction` = '114',`data0` = '0' WHERE `gameobject_template`.`entry` IN (201920,201377,201378);
UPDATE `gameobject_spawns` SET `state` = '1' WHERE `id` IN (201920,201377,201378);
UPDATE `gameobject_template` SET `faction` = '114',`data0` = '0' WHERE `gameobject_template`.`entry` IN (201376);
UPDATE `gameobject_spawns` SET `state` = '0' WHERE `id` IN (201376);

-- Qween Lana'thel
UPDATE `creature_template` SET `ScriptName`='boss_blood_queen_lanathel', `AIName`='' WHERE `entry`= 37955;
UPDATE `creature_template` SET  `minlevel` = 80, `maxlevel` = 80, `AIName` ='', `faction_A`= 14, `faction_H` = 14,`ScriptName`='mob_swarming_shadows' WHERE `entry`= 38163;

UPDATE `gameobject_template` SET `faction` = '0', `ScriptName` = 'go_frostwing_sigil' WHERE `gameobject_template`.`entry` IN (202181);

-- Valithria dreamwalker
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `ScriptName`='boss_valithria_dreamwalker' WHERE `entry`= 36789;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry`= 10067;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry`= 10068;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry`= 10069;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `ScriptName`='mob_nightmare_portal', `AIName`='' WHERE `entry`= 38429;
UPDATE `creature_template` SET `ScriptName`='mob_mana_void', `AIName`='' WHERE `entry`= 38068;


UPDATE `gameobject_template` SET `faction` = '0',`data0` = '0' WHERE `gameobject_template`.`entry` IN (201375,201373);
UPDATE `gameobject_template` SET `faction` = '114',`data0` = '0' WHERE `gameobject_template`.`entry` IN (201374);
UPDATE `gameobject_spawns` SET `state` = '1' WHERE `id` IN (201374);
UPDATE `gameobject_template` SET `faction` = '114',`data0` = '0' WHERE `gameobject_template`.`entry` IN (201380,201381,201382,201383);
UPDATE `gameobject_spawns` SET `state` = '1' WHERE `id` IN (201380,201381,201382,201383);

-- Sindragosa
UPDATE `creature_template` SET `ScriptName`='boss_sindragosa' WHERE `entry`= 36853;
UPDATE `creature_template` SET `ScriptName`='mob_rimefang', `AIName`='' WHERE `entry`= 37533;
UPDATE `creature_template` SET `ScriptName`='mob_spinestalker', `AIName`='' WHERE `entry`= 37534;
UPDATE `creature_template` SET `ScriptName`='mob_ice_tomb', `AIName`='' WHERE `entry`= 36980;
UPDATE `creature_template` SET `ScriptName`='mob_frost_bomb', `AIName`='' WHERE `entry`= 37186;
UPDATE `gameobject_template` SET `faction` = '114',`data0` = '0' WHERE `gameobject_template`.`entry` IN (201369,201379);
UPDATE `gameobject_spawns` SET `state` = '1' WHERE `id` IN (201369,201379);

-- Lich King
UPDATE `creature_template` SET `ScriptName`='boss_the_lich_king_icc', `AIName`='' WHERE `entry`= 36597;
UPDATE `creature_template` SET `ScriptName`='boss_tirion_icc', `npcflag`=1, `AIName`='' WHERE `entry`= 38995;
INSERT IGNORE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('71614', '1', '38995');

UPDATE `creature_template` SET `ScriptName`='mob_ice_sphere_icc', `AIName`='' WHERE `entry`= 36633;
UPDATE `creature_template` SET `ScriptName`='mob_defiler_icc', `AIName`='' WHERE `entry`= 38757;
UPDATE `creature_template` SET `ScriptName`='mob_strangulate_vehicle', `AIName`='' WHERE `entry`= 36598;
UPDATE `creature_template` SET `ScriptName`='mob_vile_spirit', `AIName`='' WHERE `entry`= 37799;
UPDATE `creature_template` SET `ScriptName`='mob_raging_spirit', `AIName`='' WHERE `entry`= 36701;

DELETE FROM `npc_text` WHERE `ID` IN (721001,721002);
REPLACE INTO `npc_text` (`ID`, `Text0_0`) VALUES
(721001, 'Greetings $N! Are you ready to battle with Lich King?');

-- Icecrown citadel spelltable

-- Lord Marrowgar
DELETE FROM `boss_spell_table` WHERE `entry` = 36612;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36612, 71021, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 3, 0, 0),
(36612, 69138, 0, 0, 0, 6000, 0, 0, 0, 12000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36612, 71580, 0, 0, 0, 6000, 0, 0, 0, 12000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36612, 69146, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36612, 69057, 0, 0, 0, 17000, 0, 0, 0, 27000, 0, 0, 0, 0, 0, 0, 6, 0, 0),
(36612, 69076, 0, 0, 0, 60000, 0, 0, 0, 60000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36612, 69075, 0, 0, 0, 2000, 0, 0, 0, 2000, 0, 0, 0, 5, 0, 0, 12, 0, 1),
(36612, 47008, 0, 0, 0, 600000, 0, 0, 0, 600000, 0, 0, 0, 0, 0, 0, 1, 0, 0);
-- summons
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(36612, 38711, 10000, 12000, 1, 1, 2, 2, 1, 5, 0, 9),
(36612, 36672, 45000, 45000, 1, 1, 2, 2, 75, 100, 0, 9);
-- Cold flame
DELETE FROM `boss_spell_table` WHERE `entry` = 36672;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36672, 69146, 70823, 70824, 70825, 3000, 0, 0, 0, 3000, 0, 0, 0, 5, 0, 0, 12, 0, 0),
(36672, 69145, 0, 0, 0, 3000, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 1, 0, 0);
-- Bone spike
DELETE FROM `boss_spell_table` WHERE `entry` = 38711;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(38711, 69065, 0, 0, 0, 1000, 0, 0, 0, 1000, 0, 0, 0, 6, 0, 0);

-- Lady Deathwhisper
DELETE FROM `boss_spell_table` WHERE `entry` = 36855;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36855, 70842, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 1, 0, 0),
(36855, 47008, 0, 0, 0, 600000, 0, 0, 0, 600000, 0, 0, 0, 1, 0, 0),
(36855, 71254, 72008, 72008, 72504, 5000, 0, 0, 0, 8000, 0, 0, 0, 4, 0, 0),
(36855, 71420, 72501, 72007, 72502, 15000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(36855, 71001, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(36855, 71204, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(36855, 70901, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 6, 0, 0),
(36855, 71289, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(36855, 71494, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 1, 0, 0);
-- summons
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(36855, 37890, 45000, 75000, 1, 1, 2, 2, 75, 100, 0, 11),
(36855, 37949, 45000, 75000, 1, 1, 2, 2, 75, 100, 0, 11),
(36855, 38010, 45000, 45000, 1, 1, 2, 2, 75, 100, 0, 9),
(36855, 38222, 8000,  15000, 1, 1, 1, 1, 75, 100, 0, 9),
(36855, 38009, 45000, 45000, 1, 1, 2, 2, 75, 100, 0, 9);
-- Vengeful shade
DELETE FROM `boss_spell_table` WHERE `entry` = 38222;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(38222, 71494, 0, 0, 0, 1000, 0, 0, 0, 1000, 0, 0, 0, 1, 0, 0),
(38222, 71544, 0, 0, 0, 1000, 0, 0, 0, 1000, 0, 0, 0, 3, 0, 0);
-- Adherent
DELETE FROM `boss_spell_table` WHERE `entry` = 37949;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37949, 71129, 0, 0, 0, 15000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(37949, 70594, 0, 0, 0, 5000, 0, 0, 0, 10000, 0, 0, 0, 4, 0, 0),
(37949, 71254, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 4, 0, 0),
(37949, 70906, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 4, 0, 0),
(37949, 70903, 0, 0, 0, 1000, 0, 0, 0, 2000, 0, 0, 0, 1, 0, 0),
(37949, 71237, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(37949, 70768, 0, 0, 0, 5000, 0, 0, 0, 10000, 0, 0, 0, 4, 0, 0),
(37949, 41236, 0, 0, 0, 5000, 0, 0, 0, 10000, 0, 0, 0, 1, 0, 0),
(37949, 71234, 0, 0, 0, 5000, 0, 0, 0, 10000, 0, 0, 0, 4, 0, 0);
-- Fanatic
DELETE FROM `boss_spell_table` WHERE `entry` = 37890;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37890, 70659, 0, 0, 0, 5000, 0, 0, 0, 10000, 0, 0, 0, 3, 0, 0),
(37890, 70670, 0, 0, 0, 5000, 0, 0, 0, 10000, 0, 0, 0, 3, 0, 0),
(37890, 70674, 0, 0, 0, 5000, 0, 0, 0, 10000, 0, 0, 0, 1, 0, 0);

-- Gunship battle
-- Frost wyrm
DELETE FROM `boss_spell_table` WHERE `entry` = 37230;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37230, 70116, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(37230, 70362, 0, 0, 0, 20000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(37230, 71203, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 4, 0, 0),
(37230, 70361, 0, 0, 0, 3000, 0, 0, 0, 5000, 0, 0, 0, 3, 0, 0),
(37230, 47008, 0, 0, 0, 180000, 0, 0, 0, 180000, 0, 0, 0, 1, 0, 0);

-- Rotted frost giant
DELETE FROM `boss_spell_table` WHERE `entry` IN (38490, 38494);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(38490, 64652, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(38490, 72865, 0, 0, 0, 5000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(38490, 71203, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 4, 0, 0),
(38490, 47008, 0, 0, 0, 300000, 0, 0, 0, 300000, 0, 0, 0, 1, 0, 0);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(38494, 64652, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(38494, 72865, 0, 0, 0, 5000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(38494, 71203, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 4, 0, 0),
(38494, 47008, 0, 0, 0, 300000, 0, 0, 0, 300000, 0, 0, 0, 1, 0, 0);

-- Deathbringer Saurfang
DELETE FROM `boss_spell_table` WHERE `entry` = 37813;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37813, 72178, 0, 0, 0, 20000, 0, 0, 0, 15000, 0, 0, 0, 1, 0, 0),
(37813, 72371, 0, 0, 0, 3000, 0, 0, 0, 5000, 0, 0, 0, 1, 0, 0),
(37813, 72293, 0, 0, 0, 35000, 0, 0, 0, 45000, 0, 0, 0, 6, 0, 0),
(37813, 72737, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(37813, 72385, 0, 0, 0, 20000, 0, 0, 0, 40000, 0, 0, 0, 4, 0, 0),
(37813, 72380, 0, 0, 0, 25000, 0, 0, 0, 45000, 0, 0, 0, 4, 0, 0),
(37813, 72408, 0, 0, 0, 20000, 0, 0, 0, 40000, 0, 0, 0, 4, 0, 0),
(37813, 72173, 0, 0, 0, 45000, 0, 0, 0, 45000, 0, 0, 0, 1, 0, 0),
(37813, 72769, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(37813, 72723, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 1, 0, 0),
(37813, 47008, 0, 0, 0, 480000, 0, 0, 0, 480000, 0, 0, 0, 1, 0, 0);
-- summons
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(37813, 38508, 45000, 45000, 1, 1, 2, 2, 15, 25, 0, 9);
-- Blood beast
DELETE FROM `boss_spell_table` WHERE `entry` = 38508;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(38508, 72176, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 1, 0, 0),
(38508, 72723, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 1, 0, 0),
(38508, 72769, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 1, 0, 0),
(38508, 21150, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 1, 0, 0);


-- Festergut
DELETE FROM `boss_spell_table` WHERE `entry` = 36626;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
( 36626, 69162, 0, 0, 0, 25000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 69166, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 69165, 0, 0, 0, 10000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 69157, 0, 0, 0, 10000, 0, 0, 0, 30000, 0, 0, 0, 150, 0, 0, 12, 0, 0),
( 36626, 69126, 0, 0, 0, 10000, 0, 0, 0, 30000, 0, 0, 0, 150, 0, 0, 12, 0, 0),
( 36626, 69195, 0, 0, 0, 20000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 69278, 0, 0, 0, 20000, 0, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 69279, 0, 0, 0, 20000, 0, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 69290, 0, 0, 0, 20000, 0, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 72103, 0, 0, 0, 20000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 6, 0, 1),
( 36626, 72214, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 3, 0, 0),
( 36626, 72219, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 3, 0, 0),
( 36626, 72227, 0, 0, 0, 20000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 6, 0, 1),
( 36626, 72272, 0, 0, 0, 20000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 6, 0, 0),
( 36626, 69244, 0, 0, 0, 20000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 6, 0, 0),
( 36626, 69248, 0, 0, 0, 20000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 6, 0, 0),
( 36626, 72287, 0, 0, 0, 20000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 47008, 0, 0, 0, 600000, 0, 0, 0, 600000, 0, 0, 0, 0, 0, 0, 1, 0, 0);
-- summons
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(36626, 38548, 12000, 12000, 1, 1, 1, 1, 10, 20, 0, 11);

-- Rotface
DELETE FROM `boss_spell_table` WHERE `entry` = 36627;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36627, 69508, 0, 0, 0, 15000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0),
(36627, 69674, 0, 0, 0, 1000, 0, 0, 0,  1000, 0, 0, 0, 6, 0, 0),
(36627, 70003, 0, 0, 0, 15000, 0, 0, 0, 15000, 0, 0, 0, 6, 0, 0),
(36627, 69788, 0, 0, 0, 20000, 0, 0, 0, 40000, 0, 0, 0, 1, 0, 0),
(36627, 69783, 0, 0, 0, 30000, 0, 0, 0, 45000, 0, 0, 0, 3, 0, 0),
(36627, 47008, 0, 0, 0, 600000, 0, 0, 0, 600000, 0, 0, 0, 1, 0, 0),
(36627, 69789, 0, 0, 0, 20000, 0, 0, 0, 40000, 0, 0, 0, 6, 0, 1);
-- summons
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(36627, 36897, 12000, 12000, 1, 1, 1, 1, 1, 5, 0, 9),
(36627, 37986, 15000, 15000, 1, 1, 1, 1, 10, 20, 0, 11),
(36627, 37013, 15000, 15000, 1, 1, 1, 1, 0, 0, 0, 11);
-- Small ooze
DELETE FROM `boss_spell_table` WHERE `entry` = 36897;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36897,69774, 0, 0, 0, 10000, 0, 0, 0, 15000, 0, 0, 0, 4, 0, 0),
(36897,69750, 0, 0, 0, 10000, 0, 0, 0, 15000, 0, 0, 0, 1, 0, 0),
(36897,69644, 0, 0, 0, 10000, 0, 0, 0, 15000, 0, 0, 0, 6, 0, 0),
(36897,69889, 0, 0, 0, 10000, 0, 0, 0, 15000, 0, 0, 0, 6, 0, 0);
-- summons
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(36897, 36899, 12000, 12000, 1, 1, 1, 1, 1, 5, 0, 9);
-- Big ooze
DELETE FROM `boss_spell_table` WHERE `entry` = 36899;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36899,69774, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(36899,69839, 0, 0, 0, 6000, 0, 0, 0, 6000, 0, 0, 0, 1, 0, 0),
(36899,69760, 0, 0, 0, 10000, 0, 0, 0, 15000, 0, 0, 0, 1, 0, 0),
(36899,69644, 0, 0, 0, 10000, 0, 0, 0, 15000, 0, 0, 0, 1, 0, 0),
(36899,69558, 0, 0, 0, 10000, 0, 0, 0, 15000, 0, 0, 0, 1, 0, 0),
(36899,69889, 0, 0, 0, 10000, 0, 0, 0, 15000, 0, 0, 0, 6, 0, 0);
-- Ooze explode stalker
DELETE FROM `boss_spell_table` WHERE `entry` = 38107;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(38107,69840, 0, 0, 0, 2000, 0, 0, 0, 2000, 0, 0, 0, 1, 0, 0);

-- Professor Putricide
DELETE FROM `boss_spell_table` WHERE `entry` = 36678;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36678,70351, 0, 0, 0, 40000, 0, 0, 0, 60000, 0, 0, 0, 0, 1, 0, 0),
(36678,71617, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 0, 3, 0, 0),
(36678,71615, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 100, 12, 0, 0),
(36678,71618, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 100, 12, 0, 0),
(36678,71621, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 0, 3, 0, 0),
(36678,71278, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 0, 3, 0, 0),
(36678,71279, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 0, 3, 0, 0),
(36678,71893, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 0, 3, 0, 0),
(36678,71273, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 1, 0, 0),
(36678,71275, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 1, 0, 0),
(36678,71276, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 1, 0, 0),
(36678,71702, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 0, 1, 0, 0),
(36678,71703, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 0, 1, 0, 0),
(36678,71603, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 0, 3, 0, 0),
(36678,70311, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 0, 1, 0, 0),
(36678,47008, 0, 0, 0, 600000, 0, 0, 0, 600000, 0, 0, 0, 0, 1, 0, 0),
(36678,72672, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 3, 0, 0);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36678,70342, 0, 0, 0, 30000, 0, 0, 0, 60000, 0, 0, 0, 10, 40, 0, 15, 0, 0),
(36678,70852, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 10, 30, 0, 15, 0, 0);

-- summons
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(36678, 37562, 20000, 40000, 1, 1, 1, 1, 5, 10, 0, 9),
(36678, 38159, 8000,  20000, 1, 1, 1, 1, 20, 40, 0, 9),
(36678, 37690, 40000, 60000, 1, 1, 1, 1, 10, 40, 0, 9),
(36678, 37697, 20000, 40000, 1, 1, 1, 1, 5, 10, 0, 9);
-- Gas cloud
DELETE FROM `boss_spell_table` WHERE `entry` = 37562;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37562,70672, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 6, 0, 0),
(37562,70215, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 6, 0, 0),
(37562,71203, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0),
(37562,71770, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 6, 0, 1),
(37562,70812, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 6, 0, 1),
(37562,70701, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 6, 0, 0);
-- Volatile ooze
DELETE FROM `boss_spell_table` WHERE `entry` = 37697;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37697,70492, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0),
(37697,71203, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0),
(37697,70530, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 6, 0, 1),
(37697,71770, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 6, 0, 1),
(37697,70447, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 6, 0, 0);
-- Mutated abomination (pet?)
DELETE FROM `boss_spell_table` WHERE `entry` = 37672;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37672,70311, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0),
(37672,72527, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(37672,72539, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(37672,70542, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(37672,70405, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0);

-- Taldaram
DELETE FROM `boss_spell_table` WHERE `entry` = 37973;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37973, 71807, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(37973, 71718, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(37973, 71393, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(37973, 72040, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(37973, 47008, 0, 0, 0, 600000, 0, 0, 0, 600000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(37973, 71708, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0);

-- Valanar
DELETE FROM `boss_spell_table` WHERE `entry` = 37970;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37970, 72053, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(37970, 38459, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 11, 0, 0),
(37970, 72052, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(37970, 72037, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(37970, 38422, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 11, 0, 0),
(37970, 71944, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(37970, 47008, 0, 0, 0, 600000, 0, 0, 0, 600000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(37970, 72039, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0);

-- Keleseth
DELETE FROM `boss_spell_table` WHERE `entry` = 37972;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37972, 71405, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(37972, 71815, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(37972, 71943, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(37972, 71822, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(37972, 47008, 0, 0, 0, 600000, 0, 0, 0, 600000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(37972, 38369, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 11, 0, 0);

-- Lanathel
DELETE FROM `boss_spell_table` WHERE `entry` = 37955;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37955, 72981, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(37955, 71623, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 6, 0, 0),
(37955, 70821, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 6, 0, 0),
(37955, 71510, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 6, 0, 0),
(37955, 71726, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(37955, 70867, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(37955, 70923, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(37955, 71340, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(37955, 71264, 0, 0, 0, 20000, 0, 0, 0, 35000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(37955, 71446, 0, 0, 0, 7000, 0, 0, 0, 12000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(37955, 71772, 0, 0, 0, 90000, 0, 0, 0, 90000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(37955, 47008, 0, 0, 0, 600000, 0, 0, 0, 600000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(37955, 71952, 0, 0, 0, 5000, 0, 0, 0, 8000, 0, 0, 0, 0, 0, 0, 1, 0, 0);

-- Valithria
DELETE FROM `boss_spell_table` WHERE `entry` = 36789;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36789, 71977, 0, 0, 0, 30000, 0, 0, 0, 60000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36789, 71987, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 1, 0),
(36789, 72481, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36789, 70873, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36789, 71189, 0, 0, 0, 3000, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36789, 72724, 0, 0, 0, 3000, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36789, 70904, 0, 0, 0, 5000, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 0, 1, 0, 1),
(36789, 71196, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36789, 70702, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 16, 0, 1);
-- summons
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(36789, 38429, 30000, 40000, 1, 1, 1, 1, 5, 70, 0, 9),
(36789, 37868, 30000, 45000, 1, 1, 1, 1, 1, 3, 0, 11),
(36789, 37863, 30000, 45000, 1, 1, 1, 1, 1, 3, 0, 11),
(36789, 36791, 30000, 45000, 1, 1, 1, 1, 1, 3, 0, 11),
(36789, 37934, 30000, 45000, 1, 1, 1, 1, 1, 3, 0, 11),
(36789, 37886, 30000, 45000, 1, 1, 1, 1, 1, 3, 0, 11);
-- Nightmare portal
DELETE FROM `boss_spell_table` WHERE `entry` = 38429;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(38429, 70873, 0, 0, 0, 1000, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 6, 0, 1);

-- Sindragosa
DELETE FROM `boss_spell_table` WHERE `entry` = 36853;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36853, 70084, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36853, 57764, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 1, 0),
(36853, 19983, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 3, 0, 0),
(36853, 71077, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(36853, 69649, 0, 0, 0, 20000, 0, 0, 0, 35000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(36853, 70107, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(36853, 69762, 0, 0, 0, 10000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(36853, 69766, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 6, 0, 0),
(36853, 69846, 0, 0, 0, 15000, 0, 0, 0, 20000, 0, 0, 0, 50.0, 100.0, 0, 15, 0, 0),
(36853, 70117, 0, 0, 0, 30000, 0, 0, 0, 40000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36853, 70123, 0, 0, 0, 20000, 0, 0, 0, 35000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36853, 70126, 0, 0, 0, 90000, 0, 0, 0, 90000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(36853, 70157, 0, 0, 0, 6000, 0, 0, 0, 6000, 0, 0, 0, 0, 0, 0, 6, 0, 0),
(36853, 71665, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 6, 0, 0),
(36853, 71053, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(36853, 36980, 0, 0, 0, 90000, 0, 0, 0, 90000, 0, 0, 0, 0, 0, 0, 9, 0, 0),
(36853, 47008, 0, 0, 0, 600000, 0, 0, 0, 600000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36853, 70128, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 30.0, 0, 0, 12, 0, 0);

-- Rimefang
DELETE FROM `boss_spell_table` WHERE `entry` = 37533;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37533, 71387, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(37533, 71386, 0, 0, 0, 5000, 0, 0, 0, 8000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(37533, 71376, 0, 0, 0, 4000, 0, 0, 0, 8000, 0, 0, 0, 0, 0, 0, 4, 0, 0);
-- Spinestalker
DELETE FROM `boss_spell_table` WHERE `entry` = 37534;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37534, 36922, 0, 0, 0, 8000, 0, 0, 0, 24000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(37534, 40505, 0, 0, 0, 5000, 0, 0, 0, 8000, 0, 0, 0, 0, 0, 0, 3, 0, 0),
(37534, 71369, 0, 0, 0, 4000, 0, 0, 0, 8000, 0, 0, 0, 0, 0, 0, 4, 0, 0);
-- Ice tomb
DELETE FROM `boss_spell_table` WHERE `entry` = 36980;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36980, 70157, 0, 0, 0, 2000, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 6, 0, 0);

-- Lich king
DELETE FROM `boss_spell_table` WHERE `entry` = 36597;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36597, 70541, 0, 0, 0, 6000, 0, 0, 0, 12000, 0, 0, 0, 60, 0, 0, 12, 0, 0),
(36597, 70337, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(36597, 74074, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(36597, 69409, 0, 0, 0, 10000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 3, 0, 0),
(36597, 72762, 0, 0, 0, 20000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(36597, 68980, 0, 0, 0, 1500, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(36597, 68981, 0, 0, 0, 60000, 0, 0, 0, 60000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36597, 72133, 0, 0, 0, 5000, 0, 0, 0, 10000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36597, 72262, 0, 0, 0, 5000, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36597, 69201, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 4, 0, 1),
(36597, 69200, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(36597, 69242, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36597, 69103, 0, 0, 0, 3000, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36597, 69099, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36597, 69108, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36597, 70358, 0, 0, 0, 40000, 0, 0, 0, 70000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36597, 70372, 0, 0, 0, 40000, 0, 0, 0, 70000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36597, 72149, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36597, 72143, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36597, 70498, 0, 0, 0, 3600001, 0, 0, 0, 3600001, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36597, 70503, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36597, 69037, 0, 0, 0, 20000, 0, 0, 0, 40000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36597, 36609, 0, 0, 0, 20000, 0, 0, 0, 40000, 0, 0, 0, 0, 0, 0, 9, 0, 0),
(36597, 71769, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36597, 70063, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 1),
(36597, 47008, 0, 0, 0, 900000, 0, 0, 0, 900000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36597, 74352, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0);
-- summons
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(36597, 37799, 60000, 60000, 8, 10, 10, 10, 15, 25, 0, 11);
-- ice sphere
DELETE FROM `boss_spell_table` WHERE `entry` = 36633;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36633, 69099, 0, 0, 0, 2000, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 6, 0, 0),
(36633, 69108, 0, 0, 0, 2000, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 3, 0, 0),
(36633, 69090, 0, 0, 0, 8000, 0, 0, 0, 24000, 0, 0, 0, 0, 0, 0, 1, 0, 0);
-- vile spirit
DELETE FROM `boss_spell_table` WHERE `entry` = 37799;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37799, 70503, 0, 0, 0, 10000, 0, 0, 0, 10000, 0, 0, 0, 0, 0, 0, 1, 0, 0);
-- raging spirit
DELETE FROM `boss_spell_table` WHERE `entry` = 36701;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36701, 69242, 0, 0, 0, 2000, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 0, 3, 0, 0);

update `creature_template` set `ScriptName` = 'boss_malygos' where `entry` = 28859;
update `instance_template` set `script` = 'instance_eye_of_eternity' where `map` = '616';
update `gameobject_spawns` set `phaseMask`=65536, `spawntimesecs`='-604800'  where id in(193905,193967);
update `gameobject_template` set `faction`=0 where entry in (193905,193967);

-- Forge of souls
UPDATE `instance_template` SET `script`='instance_forge_of_souls' WHERE `map`=632;
UPDATE `creature_template` SET `ScriptName`='boss_bronjahm', `AIName` ='' WHERE `entry`=36497;
UPDATE `creature_template` SET `ScriptName`='mob_soul_fragment', `modelid_A`= 30233, `modelid_H`= 30233, `AIName` ='' WHERE `entry`=36535;
-- UPDATE `creature_template` SET `ScriptName`='mob_soul_storm', `AIName` ='' WHERE `entry`=;

-- UPDATE `creature_template` SET `ScriptName`='boss_devourer', `AIName` ='' WHERE `entry`=33113;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='boss_devourer_of_souls' where `entry` IN (36502);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_well_of_soul' where `entry` IN (36536);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_unleashed_soul' where `entry` IN (36595);

UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_jaina_and_sylvana_FSintro' where `entry` IN (37597, 37596);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_jaina_and_sylvana_FSextro' where `entry` IN (38160, 38161);
UPDATE `creature_template` SET `scale`='0.8', `equipment_id`='1221' where `entry` IN (37597, 38160, 36993, 38188, 37221, 36955);
UPDATE `creature_template` SET `scale`='0.8' where `entry` IN (36658, 37225, 37223, 37226, 37554);
UPDATE `creature_template` SET `npcflag`='0' where `entry` IN (38160, 38161);
UPDATE `creature_template` SET `npcflag`='3' where `entry` IN (37597, 37596, 36993, 36990);
UPDATE `creature_template` SET `scale`='1' where `entry` IN (38161, 37596, 36990);
UPDATE `creature_template` SET `scale`='1' where `entry` IN (37755);
UPDATE `creature_template` SET `equipment_id`='1290' where `entry` IN (36990, 37596, 38161, 38189, 37223, 37554);
-- UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_soulguard_watchman' where `entry` IN (36478);
-- UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_soulguard_reaper' where `entry` IN (36499);
-- UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_soulguard_adept' where `entry` IN (36620);
-- UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_soulguard_bonecaster' where `entry` IN (36564);
-- UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_soulguard_animator' where `entry` IN (36516);
-- UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_soul_horror' where `entry` IN (36522);
-- UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_npc_spectral_warden' where `entry` IN (36666);

-- Pit of saron
-- UPDATE `instance_template` SET `script`='instance_pit_of_saron' WHERE `map`=658;
-- UPDATE `creature_template` SET `ScriptName`='boss_ick', `AIName` ='' WHERE `entry`=36476;
-- UPDATE `creature_template` SET `ScriptName`='boss_krick', `AIName` ='' WHERE `entry`=36477;
-- UPDATE `creature_template` SET `ScriptName`='mob_exploding_orb', `AIName` ='' WHERE `entry`=36610;
-- UPDATE `creature_template` SET `ScriptName`='boss_forgemaster_garfrost', `AIName` ='' WHERE `entry`=36494;
-- UPDATE `creature_template` SET `ScriptName`='boss_scourgelord_tyrannus', `AIName` ='' WHERE `entry`=36658;
-- UPDATE `creature_template` SET `ScriptName`='mob_rimefang_pos', `AIName` ='' WHERE `entry`=36661;
-- UPDATE `creature_template` SET `ScriptName`='npc_jaina_or_sylvanas_POSintro', `AIName` ='' WHERE `entry` IN (36990,36993);
-- UPDATE `creature_template` SET `ScriptName`='npc_jaina_or_sylvanas_POSoutro', `AIName` ='' WHERE `entry` IN (38189,38188);

-- Halls of reflection
UPDATE `instance_template` SET `script` = 'instance_halls_of_reflection' WHERE map=668;
UPDATE `gameobject_template` SET `ScriptName` = '' WHERE `entry` IN (202236,202302);
DELETE FROM `creature_spawns` WHERE `map` = 668 AND `id` IN (38177,38176,38173,38172,38567,38175,36940,36941,37069);

UPDATE `creature_template` SET `ScriptName`='generic_creature' WHERE `entry` IN (38177,38176,38173,38172,38567,38175);

UPDATE `gameobject_template` SET `faction` = '114' WHERE `entry` IN (197341, 201976);
UPDATE `gameobject_template` SET `faction`='1375' WHERE `entry` IN (197341, 202302, 201385, 201596);

UPDATE `creature_template` SET `speed_walk`='1.5', `speed_run`='2.0' WHERE `entry` IN (36954, 37226);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_jaina_and_sylvana_HRintro' WHERE `entry` IN (37221, 37223);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='boss_falric' WHERE `entry` IN (38112);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='boss_marwyn' WHERE `entry` IN (38113);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_lich_king_hr' WHERE `entry` IN (36954);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='boss_lich_king_hr' WHERE `entry` IN (37226);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_jaina_and_sylvana_HRextro' WHERE `entry` IN (36955, 37554);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='generic_creature' WHERE `entry` IN (36940,36941,37069);
UPDATE `creature_template` SET `scale`='0.8', `equipment_id`='1221' WHERE `entry` IN (37221, 36955);
UPDATE `creature_template` SET `equipment_id`='1290' WHERE `entry` IN (37223, 37554);
UPDATE `creature_template` SET `equipment_id`='0' WHERE `entry`=36954;
UPDATE `creature_template` SET `scale`='1' WHERE `entry` IN (37223);
UPDATE `creature_template` SET `scale`='0.8' WHERE `entry` IN (36658, 37225, 37223, 37226, 37554);
UPDATE `creature_template` SET `unit_flags`='768', `type_flags`='268435564' WHERE `entry` IN (38177, 38176, 38173, 38172, 38567, 38175);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_frostworn_general' WHERE `entry`=36723;

REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('70464', '1', '36881');
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69708', '1', '37226');
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('70194', '1', '37226');
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69784', '1', '37014');

REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69784', '1', '37014');
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('70224', '1', '37014');
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('70225', '1', '37014');

REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69431', '1', '37497');
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69431', '1', '37496');
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69431', '1', '37496');

REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69431', '1', '37588');
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69431', '1', '37584');
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69431', '1', '37587');

REPLACE INTO `creature_equip_template` VALUES ('38112', '50249', '49777', '0'); #Falric
UPDATE `creature_template` SET `equipment_id`='38112' WHERE `entry` IN (38112);

REPLACE INTO `creature_equip_template` VALUES ('38113', '50248', '50248', '0'); #Marwyn
UPDATE `creature_template` SET `equipment_id`='38113' WHERE `entry` IN (38113);
REPLACE INTO `creature_spawns` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (135341, 38112, 668, 3, 1, 0, 0, 5276.81, 2037.45, 709.32, 5.58779, 604800, 0, 0, 377468, 0, 0, 0);
REPLACE INTO `creature_spawns` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (135342, 38113, 668, 3, 1, 0, 0, 5341.72, 1975.74, 709.32, 2.40694, 604800, 0, 0, 539240, 0, 0, 0);

REPLACE INTO `gameobject_spawns` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (14531739, 201596, 668, 1, 128, 5275.28, 1694.23, 786.147, 0.981225, 0, 0, 0.471166, 0.882044, 25, 0, 1);

DELETE from `creature_spawns` WHERE `id`=36955;
REPLACE INTO `creature_spawns` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (135349, 36955, 668, 3, 128, 0, 0, 5547.27, 2256.95, 733.011, 0.835987, 7200, 0, 0, 252000, 881400, 0, 0);

DELETE from `creature_spawns` WHERE `id`=37554;
REPLACE INTO `creature_spawns` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (135345, 37554, 668, 3, 64, 0, 0, 5547.27, 2256.95, 733.011, 0.835987, 7200, 0, 0, 252000, 881400, 0, 0);

DELETE from `creature_spawns` WHERE `id`=37226;
REPLACE INTO `creature_spawns` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (135344, 37226, 668, 3, 1, 0, 0, 5551.29, 2261.33, 733.012, 4.0452, 604800, 0, 0, 27890000, 0, 0, 0);

UPDATE `creature_template` SET `modelid_A` = 11686, `modelid_A2` = 11686, `modelid_H` = 11686, `modelid_H2` = 11686 WHERE `entry` IN (37014,37704);

DELETE FROM `gameobject_spawns` WHERE `id` IN (201385,201596,202079);

UPDATE `gameobject_template` SET `faction` = '114',`data0` = '0' WHERE `gameobject_template`.`entry` IN (197341,197342,197343);
UPDATE `gameobject_spawns` SET `state` = '1' WHERE `id` IN (197341,197342,197343);

-- Captains chest (override)
DELETE FROM `gameobject_spawns` WHERE `id` IN (202212,201710,202337,202336);
UPDATE `gameobject_template` SET `flags` = 0 WHERE `gameobject_template`.`entry` IN (202212,201710,202337,202336);
REPLACE INTO `gameobject_spawns` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(972561, 202212, 668, 1, 65535,  5241.047, 1663.4364, 784.295166, 0.54, 0, 0, 0, 0, -604800, 100, 1),
(972562, 201710, 668, 1, 65535,  5241.047, 1663.4364, 784.295166, 0.54, 0, 0, 0, 0, -604800, 100, 1),
(972563, 202337, 668, 2, 65535,  5241.047, 1663.4364, 784.295166, 0.54, 0, 0, 0, 0, -604800, 100, 1),
(972564, 202336, 668, 2, 65535,  5241.047, 1663.4364, 784.295166, 0.54, 0, 0, 0, 0, -604800, 100, 1);
-- Dalaran portal (override)
DELETE FROM `gameobject_spawns` WHERE `guid` IN (972565);
REPLACE INTO `gameobject_spawns` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(972565, 202079, 668, 3, 65535, 5250.959961, 1639.359985, 784.302, 0, 0, 0, 0, 0, -604800, 100, 1);

-- Pit of saron
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1658100 AND -1658000;
REPLACE INTO `script_texts` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
-- Garfrost
(-1658001,'Tiny creatures under feet, you bring Garfrost something good to eat!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16912,1,0,0,'garfrost SAY_AGGRO'),
(-1658002,'Will save for snack. For later.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16913,1,0,0,'garfrost SAY_SLAY_1'),
(-1658003,'That one maybe not so good to eat now. Stupid Garfrost! BAD! BAD!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16914,1,0,0,'garfrost SAY_SLAY_2'),
(-1658004,'Garfrost hope giant underpants clean. Save boss great shame. For later.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16915,1,0,0,'garfrost SAY_DEATH'),
(-1658005,'Axe too weak. Garfrost make better and CRUSH YOU!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16916,1,0,0,'garfrost SAY_PHASE2'),
(-1658006,'Garfrost tired of puny mortals. Now your bones will freeze!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16917,1,0,0,'garfrost SAY_PHASE3'),
(-1658007,'Another shall take his place. You waste your time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16752,1,0,0,'Tyrannus SAY_TYRANNUS_DEATH'),

-- Krick
(-1658010,'Our work must not be interrupted! Ick! Take care of them!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16926,1,0,0,'Krick SAY_AGGRO'),
(-1658011,'Ooh...We could probably use these parts!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16927,1,0,0,'Krick SAY_SLAY_1'),
(-1658012,'Arms and legs are in short supply...Thanks for your contribution!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16928,1,0,0,'Krick SAY_SLAY_2'),
(-1658013,'Enough moving around! Hold still while I blow them all up!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16929,1,0,0,'Krick SAY_BARRAGE_1'),
(-1658014,'Krick begins rapidly conjuring explosive mines!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Krick SAY_BARRAGE_2'),
(-1658015,'Quickly! Poison them all while they''re still close!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16930,1,0,0,'Krick SAY_POISON_NOVA'),
(-1658016,'No! That one! That one! Get that one!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16931,1,0,0,'Krick SAY_CHASE_1'),
(-1658017,'I''ve changed my mind...go get that one instead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16932,1,0,0,'Krick SAY_CHASE_2'),
(-1658018,'What are you attacking him for? The dangerous one is over there,fool!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16933,1,0,0,'Krick SAY_CHASE_3'),

-- Ick
(-1658020,'Ick begins to unleash a toxic poison cloud!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Ick SAY_ICK_POISON_NOVA'),
(-1658021,'Ick is chasing you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Ick SAY_ICK_CHASE_1'),

-- Krick OUTRO
(-1658030,'Wait! Stop! Don''t kill me, please! I''ll tell you everything!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16934,1,0,0,'Krick SAY_KRICK_OUTRO_1'),
(-1658031,'I''m not so naive as to believe your appeal for clemency, but I will listen.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16611,1,0,0,'Jaina SAY_JAINA_OUTRO_2'),
(-1658032,'Why should the Banshee Queen spare your miserable life?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17033,1,0,0,'Sylvanas SAY_SYLVANAS_OUTRO_2'),
(-1658033,'What you seek is in the master''s lair, but you must destroy Tyrannus to gain entry. Within the Halls of Reflection you will find Frostmourne. It... it holds the truth.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16935,1,0,0,'Krick SAY_KRICK_OUTRO_3'),
(-1658034,'Frostmourne lies unguarded? Impossible!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16612,1,0,0,'Jaina SAY_JAINA_OUTRO_4'),
(-1658035,'Frostmourne? The Lich King is never without his blade! If you are lying to me...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17034,1,0,0,'Sylvanas SAY_SYLVANAS_OUTRO_4'),
(-1658036,'I swear it is true! Please, don''t kill me!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16936,1,0,0,'Krick SAY_KRICK_OUTRO_5'),
(-1658037,'Worthless gnat! Death is all that awaits you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16753,1,0,0,'Tyrannus SAY_TYRANNUS_OUTRO_7'),
(-1658038,'Urg... no!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16937,1,0,0,'Krick SAY_KRICK_OUTRO_8'),
(-1658039,'Do not think that I shall permit you entry into my master''s sanctum so easily. Pursue me if you dare.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16754,1,0,0,'Tyrannus SAY_TYRANNUS_OUTRO_9'),
(-1658040,'What a cruel end. Come, heroes. We must see if the gnome''s story is true. If we can separate Arthas from Frostmourne, we might have a chance at stopping him.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16613,1,0,0,'Jaina SAY_JAINA_OUTRO_10'),
(-1658041,'A fitting end for a traitor. Come, we must free the slaves and see what is within the Lich King''s chamber for ourselves.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17035,1,0,0,'Sylvanas SAY_SYLVANAS_OUTRO_10'),

-- Tyrannus
(-1658050,'Your pursuit shall be in vain, adventurers, for the Lich King has placed an army of undead at my command! Behold!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16755,1,0,0,'Tyrannus SAY_AMBUSH_1'),
(-1658051,'Persistent whelps! You will not reach the entrance of my lord''s lair! Soldiers, destroy them!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16756,1,0,0,'Tyrannus SAY_AMBUSH_2'),
(-1658052,'Rimefang! Trap them within the tunnel! Bury them alive!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16757,1,0,0,'Tyrannus SAY_GAUNTLET_START'),
(-1658053,'Alas, brave, brave adventurers, your meddling has reached its end. Do you hear the clatter of bone and steel coming up the tunnel behind you? That is the sound of your impending demise.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16758,1,0,0,'Tyrannus SAY_INTRO_1'),
(-1658054,'Ha, such an amusing gesture from the rabble. When I have finished with you, my master''s blade will feast upon your souls. Die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16759,1,0,0,'Tyrannus SAY_INTRO_2'),

(-1658055,'I shall not fail The Lich King! Come and meet your end!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16760,1,0,0,'Tyrannus SAY_AGGRO'),
(-1658056,'Such a shameful display... You are better off dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16761,1,0,0,'Tyrannus SAY_SLAY_1'),
(-1658057,'Perhaps you should have stayed in the mountains!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16762,1,0,0,'Tyrannus SAY_SLAY_2'),
(-1658058,'Impossible! Rimefang... Warn...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16763,1,0,0,'Tyrannus SAY_DEATH'),
(-1658059,'Rimefang, destroy this fool!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16764,1,0,0,'Tyrannus SAY_MARK_RIMEFANG_1'),
(-1658060,'The frostwyrm Rimefang gazes at $N and readies an icy attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Tyrannus SAY_MARK_RIMEFANG_2'),
(-1658061,'Power... overwhelming!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16765,1,0,0,'Tyrannus SAY_DARK_MIGHT_1'),
(-1658062,'Scourgelord Tyrannus roars and swells with dark might!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Tyrannus SAY_DARK_MIGHT_2'),

(-1658063,'Brave champions, we owe you our lives, our freedom... Though it be a tiny gesture in the face of this enormous debt, I pledge that from this day forth, all will know of your deeds, and the blazing path of light you cut through the shadow of this dark citadel.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Gorkun  SAY_GORKUN_OUTRO_1'),
(-1658064,'This day will stand as a testament not only to your valor, but to the fact that no foe, not even the Lich King himself, can stand when Alliance and Horde set aside their differences and ---',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Gorkun  SAY_GORKUN_OUTRO_2'),
(-1658065,'Heroes, to me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16614,1,0,0,'Jaina SAY_JAYNA_OUTRO_3'),
(-1658066,'Take cover behind me! Quickly!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17037,1,0,0,'Sylvanas SAY_SYLVANAS_OUTRO_3'),
(-1658067,'The Frost Queen is gone. We must keep moving - our objective is near.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16615,0,0,0,'Jaina SAY_JAYNA_OUTRO_4'),
(-1658068,'I thought he''d never shut up. At last, Sindragosa silenced that long-winded fool. To the Halls of Reflection, champions! Our objective  is near... I can sense it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17036,0,0,0,'Sylvanas SAY_SYLVANAS_OUTRO_4'),
(-1658069,'I... I could not save them... Damn you, Arthas! DAMN YOU!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16616,0,0,0,'Jaina SAY_JAYNA_OUTRO_5');

-- Forge of souls
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1632099 AND -1632000;
REPLACE INTO `script_texts` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
-- Bronjham
(-1632001,'Finally...a captive audience!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Наконец то! Гости пожаловали!',16595,6,0,0,'Bronjham SAY_AGGRO'),
(-1632002,'Fodder for the engine!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Скормлю тебя машине!',16596,6,0,0,'Bronjham SAY_SLAY_1'),
(-1632003,'Another soul to strengthen the host!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Еще одна душа обогатит вместилище!',16597,6,0,0,'Bronjham SAY_SLAY_2'),
(-1632004,'Oooooo...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Аааааааааааа...',16598,6,0,0,'Bronjham SAY_DEATH'),
(-1632005,'The vortex of the harvested calls to you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Вихрь погубленных душ, взываю к вам!',16599,3,0,0,'Bronjham SAY_SOUL_STORM'),
(-1632006,'I will sever the soul from your body!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Я вырву душу из твоего тела!',16600,6,0,0,'Bronjham SAY_CORRUPT_SOUL'),

-- Devourer of Souls
(-1632010,'You dare look upon the host of souls? I SHALL DEVOUR YOU WHOLE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Вы осмелились взглянуть на вместилище душ! Я сожру вас заживо!',16884,1,0,0,'Devoureur SAY_FACE_ANGER_AGGRO'),
(-1632011,'You dare look upon the host of souls? I SHALL DEVOUR YOU WHOLE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16890,1,0,0,'Devoureur SAY_FACE_DESIRE_AGGRO'),
(-1632012,'Damnation!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Проклинаю тебя!',16885,1,0,0,'Devoureur SAY_FACE_ANGER_SLAY_1'),
(-1632013,'Damnation!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16896,1,0,0,'Devoureur SAY_FACE_SORROW_SLAY_1'),
(-1632014,'Damnation!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16891,1,0,0,'Devoureur SAY_FACE_DESIRE_SLAY_1'),
(-1632015,'Doomed for eternity!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Обрекаю тебя на вечные муки!',16886,1,0,0,'Devoureur SAY_FACE_ANGER_SLAY_2'),
(-1632016,'Doomed for eternity!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16897,1,0,0,'Devoureur SAY_FACE_SORROW_SLAY_2'),
(-1632017,'Doomed for eternity!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16892,1,0,0,'Devoureur SAY_FACE_DESIRE_SLAY_2'),
(-1632018,'The swell of souls will not be abated! You only delay the inevitable!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Вместилише душ не ослабнет! Вы лишь пытаетесь отсрочить неизбежное.',16887,1,0,0,'Devoureur SAY_FACE_ANGER_DEATH'),
(-1632019,'The swell of souls will not be abated! You only delay the inevitable!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16898,1,0,0,'Devoureur SAY_FACE_SORROW_DEATH'),
(-1632020,'The swell of souls will not be abated! You only delay the inevitable!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16893,1,0,0,'Devoureur SAY_FACE_DESIRE_DEATH'),
(-1632021,'Devourer of Souls begins to cast Mirrored Soul!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Devoureur EMOTE_MIRRORED_SOUL'),
(-1632022,'Devourer of Souls begins to Unleash Souls!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Devoureur EMOTE_UNLEASH_SOUL'),
(-1632023,'SUFFERING! ANGUISH! CHAOS! RISE AND FEED!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Страдание, мучение, хаос! Восстаньте и пируйте!',16888,1,0,0,'Devoureur SAY_FACE_ANGER_UNLEASH_SOUL'),
(-1632024,'SUFFERING! ANGUISH! CHAOS! RISE AND FEED!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16899,1,0,0,'Devoureur SAY_FACE_SORROW_UNLEASH_SOUL'),
(-1632025,'SUFFERING! ANGUISH! CHAOS! RISE AND FEED!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16894,1,0,0,'Devoureur SAY_FACE_DESIRE_UNLEASH_SOUL'),
(-1632026,'Devourer of Souls begins to cast Wailing Souls!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Devoureur EMOTE_WAILING_SOUL'),
(-1632027,'Stare into the abyss, and see your end!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Вглядитесь в бездну, и узрите свою смерть!',16889,1,0,0,'Devoureur SAY_FACE_ANGER_WAILING_SOUL'),
(-1632028,'Stare into the abyss, and see your end!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16895,1,0,0,'Devoureur SAY_FACE_DESIRE_WAILING_SOUL'),
(-1632029,'Excellent work, champions! We shall set up our base camp in these chambers. My mages will get the Scourge transport device working shortly. Step inside it when you''re ready for your next mission. I will meet you on the other side.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Вы справились. Мы разобьем лагерь в этих покоях. Вскоре мои маги заставят портал плети работать! Войдите в него, когда будете готовы к следующему заданию. Я присоеденусь к вам чуть позже.',16625,1,0,0,'Jaina SAY_JAINA_OUTRO'),
(-1632030,'Excellent work, champions! We shall set up our base camp in these chambers. My mages will get the Scourge transport device working shortly. Step inside when you are ready for your next mission. I will meet you on the other side.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Превосходно! Мы разобьем лагерь в этих покоях! Вскоре мои маги заставят портал плети работать, войдите в него когда будете готовы к следующему заданию! Я присоединюсь к вам позже.',17044,1,0,0,'Sylvanas SAY_SYLVANAS_OUTRO'),

-- Jaina
(-1632040,'Thank the light for seeing you here safely. We have much work to do if we are to defeat the Lich King and put an end to the Scourge.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Слава свету! Вы целы и невредимы нам предстоит многое сделать, если мы хотим покончить с королем личем и плетью.',16617,0,0,0,'Jaina SAY_INTRO_1'),
(-1632041,'Our allies within the Argent Crusade and the Knights of the Ebon Blade have broken through the front gate of Icecrown and are attempting to establish a foothold within the Citadel.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Серебряный Авангард и рыцари черного клинка прорвались через главные ворота и пытаются укрепить свои позиции в цитадели!',16618,0,0,0,'Jaina SAY_INTRO_2'),
(-1632042,'Their success hinges upon what we discover in these cursed halls. Although our mission is a wrought with peril, we must persevere!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Их успех зависит от того что мы найдем этих ужасных залах. Пусть наша миссия опасна, но мы должны выстоять.',16619,0,0,0,'Jaina SAY_INTRO_3'),
(-1632043,'With the attention of the Lich King drawn toward the front gate, we will be working our way through the side in search of information that will enable us to defeat the Scourge - once and for all.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Пока король лич отвлекся на главные ворота, мы проникнем внутрь другим путем и постараемся узнать как можно покончить с плетью раз и навсегда.',16620,0,0,0,'Jaina SAY_INTRO_4'),
(-1632044,'King Varian''s SI7 agents have gathered information about a private sanctum of the Lich King''s deep within a place called the Halls of Reflection.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Разведчики SI7 отправленные Варианом сообщают что покои короля находятся в глубине дворца! Это место называется Залами отражений.',16621,0,0,0,'Jaina SAY_INTRO_5'),
(-1632045,'We will carve a path through this wretched place and find a way to enter the Halls of Reflection. I sense powerful magic hidden away within those walls... Magic that could be the key to destroy the Scourge.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Мы проложим себе путь сквозь это проклятое место и найдем вход в залы отражений. Я чувствую что в них сокрыта могушественная магия, которая поможет нам сокрушить плеть!',16622,0,0,0,'Jaina SAY_INTRO_6'),
(-1632046,'Your first mission is to destroy the machines of death within this malevolent engine of souls, and clear a path for our soldiers.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ваша первая задача разрушить машины смерти в этом механизме душ, это откроет путь нашим солдатам.',16623,0,0,0,'Jaina SAY_INTRO_7'),
(-1632047,'Make haste, champions! I will prepare the troops to fall in behind you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Спешите герои, я прикажу солдатам следовать за вами!',16624,0,0,0,'Jaina SAY_INTRO_8'),

-- Sylvanas
(-1632050,'The Argent Crusade and the Knights of the Ebon Blade have assaulted the gates of Icecrown Citadel and are preparing for a massive attack upon the Scourge. Our missition is a bit more subtle, but equally as important.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Серебряный Авангард и рыцари черного клинка штурмуют ворота цитадели ледяной короны! И готовятся нанести решаюший удар! Мы будем действовать незаметно, но не менее эффективно.',17038,0,0,0,'Sylvanas SAY_INTRO_1'),
(-1632051,'With the attention of the Lich King turned towards the front gate, we''ll be working our way through the side in search of information that will enable us to defeat the Lich King - once and for all.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Пока Король-Лич отвлекся мы проникнем внутрь другим путем и постараемся понять как можно покончить с ним раз и навсегда.',17039,0,0,0,'Sylvanas SAY_INTRO_2'),
(-1632052,'Our scouts have reported that the Lich King has a private chamber, outside of the Frozen Throne, deep within a place called the Halls of Reflection. That is our target, champions.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Наши разведчики сообщили что покои короля лича находятся в глубине дворца, недалеко от ледяного трона. Это место называется залами отражений, туда и лежит наш путь.',17040,0,0,0,'Sylvanas SAY_INTRO_3'),
(-1632053,'We will cut a swath of destruction through this cursed place and find a way to enter the Halls of Reflection. If there is anything of value to be found here, it will be found in the Halls.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Мы проложим себе путь сквозь это проклетое место и найдем и найдем вход в залы отражений! Если в цитадели и есть что то достойное внимания оно ждет нас именно там.',17041,0,0,0,'Sylvanas SAY_INTRO_4'),
(-1632054,'Your first mission is to destroy the machines of death within this wretched engine of souls, and clear a path for our soldiers.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Вашей первой задачей будет  разрушение машин смерти в этом гнусном механизме душ, это откроет путь к нашим солдатам',17042,0,0,0,'Sylvanas SAY_INTRO_5'),
(-1632055,'The Dark Lady watches over you. Make haste!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Темная госпожа будет наблюдать за вами, спешите!',17043,0,0,0,'Sylvanas SAY_INTRO_6');

-- Halls of reflection (from MaxXx2021 aka Mioka)
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1594540 AND -1594430;
REPLACE INTO `script_texts` (`entry`,`content_default`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
# SCENE - Hall Of Reflection (Intro) - PreUther
(-1594433, 'The chill of this place freezes the marrow of my bones!', 'Как же тут холодно... Кровь стынет в жилах.', 16631,0,0,1, '67234'),
(-1594434, 'I... I don\'t believe it! Frostmourne stands before us, unguarded! Just as the Gnome claimed. Come, heroes!', 'Я... Я не верю своим глазам. Ледяная скорбь перед нами без всякой охраны! Как и говорил гном. Вперед герои!', 17049,0,0,1, '67234'),
(-1594435, 'What is that? Up ahead! Could it be ... ? Heroes at my side!', 'Что это там впереди? Неужели? Скорее герои!', 16632,1,0,1, '67234'),
(-1594436, 'Frostmourne ... The blade that destroyed our kingdom ...', 'Ледяная Скорбь, клинок, разрушивший наше королевство...', 16633,1,0,1, '67234'),
(-1594437, 'Standing this close to the blade that ended my life... The pain... It is renewed.', 'Боль снова захлестывает меня, когда я так близко вижу меч, отнявший у меня жизнь.', 17050,0,0,1, '67234'),
(-1594438, 'Stand back! Touch that blade and your soul will be scarred for all eternity! I must attempt to commune with the spirits locked away within Frostmourne. Give me space, back up please!', 'Отойдите. Тот кто коснется этого клинка обречет себя на вечные муки. Я попытаюсь заговорить с душами заключенными в Ледяной скорби. Расступитесь... Чуть назад! Прошу.', 16634,1,0,1, '67234'),
(-1594439, 'I dare not touch it. Stand back! Stand back! As I attempt to commune with the blade. Perhaps our salvation lies within.', 'Я не смею его коснуться. Назад! Отступите! Я попробую установить связь с мечом. Возможно, спасение находится внутри!', 17051,1,0,1, '67234'),
# SCENE - Hall Of Reflection (Intro) - UtherDialog
(-1594440, 'Jaina! Could it truly be you?', 'Джайна? Неужели это ты?', 16666,0,0,1, '67234'),
(-1594441, 'Careful, girl. I\'ve heard talk of that cursed blade saving us before. Look around you and see what has been born of Frostmourne.', 'Осторожней девочка! Однажды мне уже говорили, что этот проклятый меч может нас спасти. Посмотри вокруг, и ты увидишь, что из этого вышло.', 16659,0,0,1, '67234'),
(-1594442, 'Uther! Dear Uther! I... I\'m so sorry.', 'Утер? Милый Утер! Мне... Мне так жаль.', 16635,0,0,1, '67234'),
(-1594443, 'Uther...Uther the Lightbringer. How...', 'Утер? Утер Светоносный? Как...', 17052,0,0,1, '67234'),
(-1594444, 'Jaina, you haven\'t much time. The Lich King sees what the sword sees. He will be here shortly.', 'Джайна, у вас мало времени. Король - Лич видит все что видит Ледяная Скорбь. Вскоре он будет здесь.', 16667,0,0,1, '67234'),
(-1594445, 'You haven\'t much time. The Lich King sees what the sword sees. He will be here shortly.', 'У вас мало времени. Король - Лич видит все что видит Ледяная Скорбь. Вскоре он будет здесь.', 16660,0,0,1, '67234'),
(-1594446, 'Arthas is here? Maybe I...', 'Артас здесь? Может я...', 16636,0,0,1, '67234'),
(-1594447, 'The Lich King is here? Then my destiny shall be fulfilled today!', 'Король - Лич здесь? Значит моя судьба решится сегодня!', 17053,1,0,1, '67234'),
(-1594448, 'No, girl. Arthas is not here. Arthas is merely a presence within the Lich King\'s mind. A dwindling presence...', 'Нет девочка. Артаса здесь нет. Артас лишь тень, мелькающая в сознании Короля - Лича. Смутная тень.', 16668,0,0,1, '67234'),
(-1594449, 'You cannot defeat the Lich King. Not here. You would be a fool to try. He will kill those who follow you and raise them as powerful servants of the Scourge. But for you, Sylvanas, his reward for you would be worse than the last.', 'Вам не победить Короля - Лича. Покрайней мере не здесь. Глупо и пытаться. Он убьет твоих соратников и воскресит их как воинов плети. Но что до тебя Сильвана, он готовит тебе участь еще страшнее, чем в прошлый раз.', 16661,0,0,1, '67234'),
(-1594450, 'But Uther, if there\'s any hope of reaching Arthas. I... I must try.', 'Но если есть малейшая надежда вернуть Артаса... Я должна попытаться!', 16637,0,0,1, '67234'),
(-1594451, 'There must be a way...', 'Должен быть способ!', 17054,0,0,1, '67234'),
(-1594452, 'Jaina, listen to me. You must destroy the Lich King. You cannot reason with him. He will kill you and your allies and raise you all as powerful soldiers of the Scourge.', 'Джайна послушай меня. Вам нужно уничтожить Короля - Лича. С ним нельзя договориться. Он убьет вас всех и превратит в могущественных воинов Плети.', 16669,0,0,1, '67234'),
(-1594453, 'Perhaps, but know this: there must always be a Lich King. Even if you were to strike down Arthas, another would have to take his place, for without the control of the Lich King, the Scourge would wash over this world like locusts, destroying all that they touched.', 'Возможно... Но знай! Король - Лич должен быть всегда. Даже если вы убьете Артаса кто то обязан будет занять его место. Лишившись правителя Плеть налетит на мир как стая саранчи и уничтожит все на своем пути.', 16662,0,0,1, '67234'),
(-1594454, 'Tell me how, Uther? How do I destroy my prince? My...', 'Но как Утер? Как мне убить моего принца, моего...', 16638,0,0,1, '67234'),
(-1594455, 'Who could bear such a burden?', 'Кому по силам такое бремя?', 17055,0,0,1, '67234'),
(-1594456, 'Snap out of it, girl. You must destroy the Lich King at the place where he merged with Ner\'zhul - atop the spire, at the Frozen Throne. It is the only way.', 'Забудь об этом девочка. Короля - Лича нужно уничтожить на том месте, где он слился с Нерзулом. На самой вершине, у Ледяного Трона!', 16670,0,0,1, '67234'),
(-1594457, 'I do not know, Banshee Queen. I suspect that the piece of Arthas that might be left inside the Lich King is all that holds the Scourge from annihilating Azeroth.', 'Не знаю, Королева Баньши... Если бы не Артас, который все еще является частью Короля - Лича, Плеть давно бы уже уничтожила Азерот.', 16663,0,0,1, '67234'),
(-1594458, 'You\'re right, Uther. Forgive me. I... I don\'t know what got a hold of me. We will deliver this information to the King and the knights that battle the Scourge within Icecrown Citadel.', 'Ты прав Утер, прости меня... Я не знаю что на меня нашло. Мы передадим твои слова Королю и рыцарям, которые сражаются с Плетью в Цитадели Ледяной Короны.', 16639,0,0,1, '67234'),
(-1594459, 'There is... something else that you should know about the Lich King. Control over the Scourge must never be lost. Even if you were to strike down the Lich King, another would have to take his place. For without the control of its master, the Scourge would run rampant across the world - destroying all living things.', 'Тебе нужно знать еще кое что о Короле - Личе. Плеть не должна выйти из под контроля. Даже если вы убьете Короля - Лича, кто-то должен будет занять его место. Без Короля Плеть налетит на мир как стая саранчи и уничтожит все живое.', 16671,0,0,1, '67234'),
(-1594460, 'Alas, the only way to defeat the Lich King is to destroy him at the place he was created.', 'Увы единственый способ одолеть Короля - Лича - это убить его там где он был порожден.', 16664,0,0,1, '67234'),
(-1594461, 'Who could bear such a burden?', 'Кому по силам такое бремя?', 16640,0,0,1, '67234'),
(-1594462, 'The Frozen Throne...', 'Ледяной Трон!', 17056,0,0,1, '67234'),
(-1594463, 'A grand sacrifice by a noble soul...', 'Великая жертва, благородной души.', 16672,0,0,1, '67234'),
(-1594464, 'I do not know, Jaina. I suspect that the piece of Arthas that might be left inside the Lich King is all that holds the Scourge from annihilating Azeroth.', 'Не знаю Джайна... мне кажется если бы не Артас, который все еще является частью Короля - Лича, Плеть давно бы уже уничтожила Азерот.', 16673,0,0,1, '67234'),
(-1594465, 'Then maybe there is still hope...', 'Но может еще есть надежда?', 16641,0,0,1, '67234'),
(-1594466, 'No, Jaina! ARRRRRRGHHHH... He... He is coming. You... You must...', 'Нет Джайна... Эээээ... Он... Он приближается... Вы... Вы должны...', 16674,1,0,1, '67234'),
(-1594467, 'Aye. ARRRRRRGHHHH... He... He is coming. You... You must...', 'Да... Эээээ... Он... Он приближается... Вы... Вы должны...', 16665,1,0,1, '67234'),
(-1594468, 'SILENCE, PALADIN!', 'Замолчи, паладин.', 17225,1,0,0, '67234'),
(-1594469, 'So you wish to commune with the dead? You shall have your wish.', 'Так ты хочешь поговорить с мертвыми? Нет ничего проще!', 17226,1,0,0, '67234'),
(-1594470, 'Falric. Marwyn. Bring their corpses to my chamber when you are through.', 'Фалрик, Марвин, когда закончите, принесите их тела в мои покои.', 17227,0,0,0, '67234'),
(-1594471, 'You won\'t deny me this, Arthas! I must know... I must find out...', 'Ты от меня не отмахнешься Артас. Я должна понять, я должна знать.', 16642,1,0,1, '67234'),
(-1594472, 'You will not escape me that easily, Arthas! I will have my vengeance!', 'Ты так просто от меня не уйдешь Артас. Я отомщу тебе!', 17057,1,0,1, '67234'),
(-1594473, '<need translate>', 'Глупая девчонка! Тот кого ты ищещь давно убит! Теперь он лишь призрак, слабый отзвук в моем сознании!', 17229,1,0,0, '67234'),
(-1594474, '<need translate>', 'Я не повторю прежней ошибки, Сильвана. На этот раз тебе не спастись. Ты не оправдала моего доверия и теперь тебя ждет только забвение!', 17228,1,0,0, '67234'),
(-1594475, 'As you wish, my lord.', 'Как пожелаете, мой господин!', 16717,1,0,0, '67234'),
(-1594476, 'As you wish, my lord.', 'Как пожелаете, мой господин!', 16741,1,0,0, '67234'),
# SCENE - Hall Of Reflection (Extro) - PreEscape
(-1594477, 'Your allies have arrived, Jaina, just as you promised. You will all become powerful agents of the Scourge.', 'Твои союзники прибыли, Джайна! Как ты и обещала... Ха-ха-ха-ха... Все вы станете могучими солдатами Плети...', 17212,1,0,0, '67234'),
(-1594478, 'I will not make the same mistake again, Sylvanas. This time there will be no escape. You will all serve me in death!', 'Я не повторю прежней ошибки, Сильвана! На этот раз тебе не спастись. Вы все будите служить мне после смерти...', 17213,1,0,0, '67234'),
(-1594479, 'He is too powerful, we must leave this place at once! My magic will hold him in place for only a short time! Come quickly, heroes!', 'Он слишком силен. Мы должны выбраться от сюда как можно скорее. Моя магия задержит его ненадолго, быстрее герои...', 16644,0,0,1, '67234'),
(-1594480, 'He\'s too powerful! Heroes, quickly, come to me! We must leave this place immediately! I will do what I can do hold him in place while we flee.', 'Он слишком силен. Герои скорее, за мной. Мы должны выбраться отсюда немедленно. Я постараюсь его задержать, пока мы будем убегать.', 17058,0,0,1, '67234'),
# SCENE - Hall Of Reflection (Extro) - Escape
(-1594481, 'Death\'s cold embrace awaits.', 'Смерть распростерла ледяные обьятия!', 17221,1,0,0, '67234'),
(-1594482, 'Rise minions, do not left them us!', 'Восстаньте прислужники, не дайте им сбежать!', 17216,1,0,0, '67234'),
(-1594483, 'Minions sees them. Bring their corpses back to me!', 'Схватите их! Принесите мне их тела!', 17222,1,0,0, '67234'),
(-1594484, 'No...', 'Надежды нет!', 17214,1,0,0, '67234'),
(-1594485, 'All is lost!', 'Смирись с судьбой.', 17215,1,0,0, '67234'),
(-1594486, 'There is no escape!', 'Бежать некуда!', 17217,1,0,0, '67234'),
(-1594487, 'I will destroy this barrier. You must hold the undead back!', 'Я разрушу эту преграду, а вы удерживайте нежить на расстоянии!', 16607,1,0,0, '67234'),
(-1594488, 'No wall can hold the Banshee Queen! Keep the undead at bay, heroes! I will tear this barrier down!', 'Никакие стены не удержат Королеву Баньши. Держите нежить на расстоянии, я сокрушу эту преграду.', 17029,1,0,0, '67234'),
(-1594489, 'Another ice wall! Keep the undead from interrupting my incantation so that I may bring this wall down!', 'Опять ледяная стена... Я разобью ее, только не дайте нежити прервать мои заклинания...', 16608,1,0,0, '67234'),
(-1594490, 'Another barrier? Stand strong, champions! I will bring the wall down!', 'Еще одна преграда. Держитесь герои! Я разрушу эту стену!', 17030,1,0,0, '67234'),
(-1594491, 'Succumb to the chill of the grave.', 'Покоритесь Леденящей смерти!', 17218,1,0,0, '67234'),
(-1594492, 'Another dead end.', 'Вы в ловушке!', 17219,1,0,0, '67234'),
(-1594493, 'How long can you fight it?', 'Как долго вы сможете сопротивляться?', 17220,1,0,0, '67234'),
(-1594494, '<need translate>', 'Он с нами играет. Я  покажу ему что бывает когда лед встречается со огнем!', 16609,0,0,0, '67234'),
(-1594495, 'Your barriers can\'t hold us back much longer, monster. I will shatter them all!', 'Твои преграды больше не задержат нас, чудовище. Я смету их с пути!', 16610,1,0,0, '67234'),
(-1594496, 'I grow tired of these games, Arthas! Your walls can\'t stop me!', 'Я устала от этих игр Артас. Твои стены не остановят меня!', 17031,1,0,0, '67234'),
(-1594497, 'You won\'t impede our escape, fiend. Keep the undead off me while I bring this barrier down!', 'Ты не помешаешь нам уйти, монстр. Сдерживайте нежить, а я уничтожу эту преграду.', 17032,1,0,0, '67234'),
(-1594498, 'There\'s an opening up ahead. GO NOW!', 'Я вижу выход, скорее!', 16645,1,0,0, '67234'),
(-1594499, 'We\'re almost there... Don\'t give up!', 'Мы почти выбрались, не сдавайтесь!', 16646,1,0,0, '67234'),
(-1594500, 'There\'s an opening up ahead. GO NOW!', 'Я вижу выход, скорее!', 17059,1,0,0, '67234'),
(-1594501, 'We\'re almost there! Don\'t give up!', 'Мы почти выбрались, не сдавайтесь!', 17060,1,0,0, '67234'),
(-1594502, 'It... It\'s a dead end. We have no choice but to fight. Steel yourself heroes, for this is our last stand!', 'Больше некуда бежать. Теперь нам придется сражаться. Это наша последняя битва!', 16647,1,0,0, '67234'),
(-1594503, 'BLASTED DEAD END! So this is how it ends. Prepare yourselves, heroes, for today we make our final stand!', 'Проклятый тупик, значит все закончится здесь. Готовьтесь герои, это наша последняя битва.', 17061,1,0,0, '67234'),
(-1594504, 'Nowhere to run! You\'re mine now...', 'Ха-ха-ха... Бежать некуда. Теперь вы мои!', 17223,1,0,0, '67234'),
(-1594505, 'Soldiers of Lordaeron, rise to meet your master\'s call!', 'Солдаты Лордерона, восстаньте по зову Господина!', 16714,1,0,0, '67234'),
(-1594506, 'The master surveyed his kingdom and found it... lacking. His judgement was swift and without mercy. Death to all!', 'Господин осмотрел свое королевство и признал его негодным! Его суд был быстрым и суровым - предать всех смерти!', 16738,1,0,0, '67234'),

#Falric
(-1594507, 'Men, women and children... None were spared the master\'s wrath. Your death will be no different.', 'Мужчины, Женщины и дети... Никто не избежал гнева господина. Вы разделите их участь!', 16710,1,0,0, '67234'),
(-1594508, 'Marwyn, finish them...', 'Марвин... Добей их...', 16713,1,0,0, '67234'),
(-1594509, 'Sniveling maggot!', 'Сопливый червяк!', 16711,1,0,0, '67234'),
(-1594510, 'The children of Stratholme fought with more ferocity!', 'Стратхольмские детишки - и те сражались отчаяннее!', 16712,1,0,0, '67234'),
(-1594511, 'Despair... so delicious...', 'Как сладостно отчаянье!', 16715,1,0,0, '67234'),
(-1594512, 'Fear... so exhilarating...', 'Как приятен страх!', 16716,1,0,0, '67234'),

#Marwyn
(-1594513, 'Death is all that you will find here!', 'Вы найдете здесь лишь смерть!', 16734,1,0,0, '67234'),
(-1594514, 'Yes... Run... Run to meet your destiny... Its bitter, cold embrace, awaits you.', 'Эээээ... Да... Бегите навстречу судьбе. Ее жестокие и холодные обьятия ждут вас...', 16737,1,0,0, '67234'),
(-1594515, 'I saw the same look in his eyes when he died. Terenas could hardly believe it. Hahahaha!', 'У Теренаса был такой же взгляд в миг смерти, он никак не мог поверить... Ха-ха-ха-ха-ха...', 16735,1,0,0, '67234'),
(-1594516, 'Choke on your suffering!', 'Захлебнись страданием!', 16736,1,0,0, '67234'),
(-1594517, 'Your flesh shall decay before your very eyes!', 'Вы увидите как разлагается ваша плоть!', 16739,1,0,0, '67234'),
(-1594518, 'Waste away into nothingness!', 'Сгиньте без следа!', 16740,1,0,0, '67234'),

#FrostWorn General
(-1594519, 'You are not worthy to face the Lich King!', 'Вы недостойны предстать перед Королем - Личом!', 16921,1,0,0, '67234'),
(-1594520, 'Master, I have failed...', 'Господин... Я подвел вас...', 16922,1,0,0, '67234'),

#add
(-1594531, '<need translate>', 'Ну теперь-то точно пора сваливать.', 0,0,0,0, '67234'),
(-1594532, '<need translate>', 'Вот вам сундук за работу.', 0,0,0,0, '67234'),
(-1594533, '<need translate>', 'И, поскольку корабля с оффа не будет, вот вам портал в Даларан.', 0,0,0,0, '67234');

-- Waipoints to escort event on Halls of reflection

DELETE FROM script_waypoint WHERE entry=36955;
DELETE FROM script_waypoint WHERE entry=37226;
DELETE FROM script_waypoint WHERE entry=37554;

REPLACE INTO script_waypoint VALUES
-- Jaina

   (36955, 0, 5587.682,2228.586,733.011, 0, 'WP1'),
   (36955, 1, 5600.715,2209.058,731.618, 0, 'WP2'),
   (36955, 2, 5606.417,2193.029,731.129, 0, 'WP3'),
   (36955, 3, 5598.562,2167.806,730.918, 0, 'WP4 - Summon IceWall 01'), 
   (36955, 4, 5556.436,2099.827,731.827, 0, 'WP5 - Spell Channel'),
   (36955, 5, 5543.498,2071.234,731.702, 0, 'WP6'),
   (36955, 6, 5528.969,2036.121,731.407, 0, 'WP7'),
   (36955, 7, 5512.045,1996.702,735.122, 0, 'WP8'),
   (36955, 8, 5504.490,1988.789,735.886, 0, 'WP9 - Spell Channel'),
   (36955, 9, 5489.645,1966.389,737.653, 0, 'WP10'),
   (36955, 10, 5475.517,1943.176,741.146, 0, 'WP11'),
   (36955, 11, 5466.930,1926.049,743.536, 0, 'WP12'),
   (36955, 12, 5445.157,1894.955,748.757, 0, 'WP13 - Spell Channel'),
   (36955, 13, 5425.907,1869.708,753.237, 0, 'WP14'),
   (36955, 14, 5405.118,1833.937,757.486, 0, 'WP15'),
   (36955, 15, 5370.324,1799.375,761.007, 0, 'WP16'),
   (36955, 16, 5335.422,1766.951,767.635, 0, 'WP17 - Spell Channel'),
   (36955, 17, 5311.438,1739.390,774.165, 0, 'WP18'),
   (36955, 18, 5283.589,1703.755,784.176, 0, 'WP19'),
   (36955, 19, 5260.400,1677.775,784.301, 3000, 'WP20'),
   (36955, 20, 5262.439,1680.410,784.294, 0, 'WP21'),
   (36955, 21, 5260.400,1677.775,784.301, 0, 'WP22'),

-- Sylvana

   (37554, 0, 5587.682,2228.586,733.011, 0, 'WP1'),
   (37554, 1, 5600.715,2209.058,731.618, 0, 'WP2'),
   (37554, 2, 5606.417,2193.029,731.129, 0, 'WP3'),
   (37554, 3, 5598.562,2167.806,730.918, 0, 'WP4 - Summon IceWall 01'), 
   (37554, 4, 5556.436,2099.827,731.827, 0, 'WP5 - Spell Channel'),
   (37554, 5, 5543.498,2071.234,731.702, 0, 'WP6'),
   (37554, 6, 5528.969,2036.121,731.407, 0, 'WP7'),
   (37554, 7, 5512.045,1996.702,735.122, 0, 'WP8'),
   (37554, 8, 5504.490,1988.789,735.886, 0, 'WP9 - Spell Channel'),
   (37554, 9, 5489.645,1966.389,737.653, 0, 'WP10'),
   (37554, 10, 5475.517,1943.176,741.146, 0, 'WP11'),
   (37554, 11, 5466.930,1926.049,743.536, 0, 'WP12'),
   (37554, 12, 5445.157,1894.955,748.757, 0, 'WP13 - Spell Channel'),
   (37554, 13, 5425.907,1869.708,753.237, 0, 'WP14'),
   (37554, 14, 5405.118,1833.937,757.486, 0, 'WP15'),
   (37554, 15, 5370.324,1799.375,761.007, 0, 'WP16'),
   (37554, 16, 5335.422,1766.951,767.635, 0, 'WP17 - Spell Channel'),
   (37554, 17, 5311.438,1739.390,774.165, 0, 'WP18'),
   (37554, 18, 5283.589,1703.755,784.176, 0, 'WP19'),
   (37554, 19, 5260.400,1677.775,784.301, 3000, 'WP20'),
   (37554, 20, 5262.439,1680.410,784.294, 0, 'WP21'),
   (37554, 21, 5260.400,1677.775,784.301, 0, 'WP22'),

-- Lich King

   (37226, 0, 5577.187,2236.003,733.012, 0, 'WP1'),
   (37226, 1, 5587.682,2228.586,733.011, 0, 'WP2'),
   (37226, 2, 5600.715,2209.058,731.618, 0, 'WP3'),
   (37226, 3, 5606.417,2193.029,731.129, 0, 'WP4'),
   (37226, 4, 5598.562,2167.806,730.918, 0, 'WP5'), 
   (37226, 5, 5559.218,2106.802,731.229, 0, 'WP6'),
   (37226, 6, 5543.498,2071.234,731.702, 0, 'WP7'),
   (37226, 7, 5528.969,2036.121,731.407, 0, 'WP8'),
   (37226, 8, 5512.045,1996.702,735.122, 0, 'WP9'),
   (37226, 9, 5504.490,1988.789,735.886, 0, 'WP10'),

   (37226, 10, 5489.645,1966.389,737.653, 0, 'WP10'),
   (37226, 11, 5475.517,1943.176,741.146, 0, 'WP11'),
   (37226, 12, 5466.930,1926.049,743.536, 0, 'WP12'),
   (37226, 13, 5445.157,1894.955,748.757, 0, 'WP13'),
   (37226, 14, 5425.907,1869.708,753.237, 0, 'WP14'),
   (37226, 15, 5405.118,1833.937,757.486, 0, 'WP15'),
   (37226, 16, 5370.324,1799.375,761.007, 0, 'WP16'),
   (37226, 17, 5335.422,1766.951,767.635, 0, 'WP17'),
   (37226, 18, 5311.438,1739.390,774.165, 0, 'WP18'),
   (37226, 19, 5283.589,1703.755,784.176, 0, 'WP19'),
   (37226, 20, 5278.694,1697.912,785.692, 0, 'WP20'),
   (37226, 21, 5283.589,1703.755,784.176, 0, 'WP19');

-- Icecrown down spelltable

-- Boss Bronjahm
DELETE FROM `boss_spell_table` WHERE `entry` = 36497;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `timerMin_N10`, `timerMin_N25`, `timerMax_N10`, `timerMax_N25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(36497, 68793, 0, 3000, 0, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(36497, 36535, 0, 30000, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, NULL),
(36497, 68839, 0, 15000, 0, 25000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, NULL),
(36497, 68858, 0, 1000, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(36497, 68988, 0, 1000, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(36497, 68950, 0, 8000, 0, 12000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(36497, 68872, 0, 1000, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(36497, 68921, 0, 360001, 0, 360001, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 12, 0, 0, 0, NULL),
(36497, 70043, 0, 2000, 0, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL);

-- instance
UPDATE `instance_template` SET `script`='instance_trial_of_the_crusader' WHERE `map`=649;
DELETE FROM `creature_spawns` WHERE `map` = 649 AND `id` IN 
(34797,34796,34799,35144,34780,34460,34463,34461,34471,34475,34472,34453,34455,34458,34454,34451,34456,34497,34496,34564,34467,35465,34468,35610,34473,34474,34441,34449,34448,34450,34606, 34605, 34607, 34564);

-- announcers
UPDATE `creature_template` SET `npcflag`=1, `scriptname`='npc_toc_announcer' WHERE `entry`=34816;
DELETE FROM `creature_spawns` WHERE `map` = 649 AND `id` = 35766;

DELETE FROM `npc_text` WHERE `ID` IN (724001, 724002, 724003, 724004, 724005, 724006); 
REPLACE INTO `npc_text` (`ID`, `Text0_0`) VALUES
(724001, 'Greetings $N! Are you ready to be tested in Crusaders Coliseum?'),
(724002, 'Are you ready for the next stage?'),
(724003, 'Are you ready to fight the champions of the Silver vanguard?'),
(724004, 'Are you ready for the next stage?'),
(724005, 'Are you ready to continue battle with Anub-Arak?'),
(724006, 'Today, the arena is closed. Script dungeon designed specifically for server Pandora http://wow.teletoria.ru (c) /dev/rsa 2010');

DELETE FROM `locales_npc_text` WHERE `entry` IN (724001, 724002, 724003, 724004, 724005, 724006); 
REPLACE INTO `locales_npc_text` (`entry`, `Text0_0_loc1`, `Text0_0_loc2`, `Text0_0_loc3`, `Text0_0_loc4`, `Text0_0_loc5`, `Text0_0_loc6`, `Text0_0_loc7`, `Text0_0_loc8`) VALUES
(724001, 'Greetings $N! Are you ready to be tested in Crusaders Coliseum?', NULL, NULL, NULL, NULL, NULL, NULL, 'Приветствую, $N! Вы готовы пройти Испытание Крестоносца?'),
(724002, 'Are you ready for the next stage?', NULL, NULL, NULL, NULL, NULL, NULL, 'Вы готовы к следующему этапу?'),
(724003, 'Are you ready to fight the champions of the Silver vanguard?', NULL, NULL, NULL, NULL, NULL, NULL, 'Вы готовы драться с чемпионами Серебряного авангарда?'),
(724004, 'Are you ready for the next stage?', NULL, NULL, NULL, NULL, NULL, NULL, 'Вы готовы к следующему этапу?'),
(724005, 'Are you ready to continue battle with Anub-Arak?', NULL, NULL, NULL, NULL, NULL, NULL, 'Вы готовы продолжить бой с Ануб-Араком?'),
(724006, 'Today, the arena is closed. Script dungeon designed specifically for server Pandora http://wow.teletoria.ru (c) /dev/rsa 2010', NULL, NULL, NULL, NULL, NULL, NULL, 'На сегодня арена закрыта. Скрипт инстанса разработан специально для сервера Пандора http://wow.teletoria.ru (c) /dev/rsa 2010');

UPDATE `creature_template` SET `scriptname`='boss_lich_king_toc' WHERE `entry`=35877;
UPDATE `creature_template` SET `minhealth`= 20000, `maxhealth` = 20000, `faction_A`= 1770, `faction_H` = 1770,  `scriptname`='npc_fizzlebang_toc' WHERE `entry`=35458;
UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry` IN (22517, 35651);
DELETE FROM `creature_spawns` WHERE `map` = 649 AND `id` IN (35651, 22517);

UPDATE `creature_template` SET `scriptname`='npc_tirion_toc' WHERE `entry`=34996;
UPDATE `creature_template` SET `scriptname`='npc_garrosh_toc' WHERE `entry`=34995;
UPDATE `creature_template` SET `scriptname`='npc_rinn_toc' WHERE `entry`=34990;

-- Grand crusaders
UPDATE `creature_template` SET `scriptname`='mob_toc_warrior', `AIName` ='' WHERE `entry` IN (34475,34453);
UPDATE `creature_template` SET `scriptname`='mob_toc_mage', `AIName` ='' WHERE `entry` IN (34468,34449);
UPDATE `creature_template` SET `scriptname`='mob_toc_shaman', `AIName` ='' WHERE `entry` IN (34463,34455);
UPDATE `creature_template` SET `scriptname`='mob_toc_enh_shaman', `AIName` ='' WHERE `entry` IN (34470,34444);
UPDATE `creature_template` SET `scriptname`='mob_toc_hunter', `AIName` ='' WHERE `entry` IN (34467,34448);
UPDATE `creature_template` SET `scriptname`='mob_toc_rogue', `AIName` ='' WHERE `entry` IN (34472,34454);
UPDATE `creature_template` SET `scriptname`='mob_toc_priest', `AIName` ='' WHERE `entry` IN (34466,34447);
UPDATE `creature_template` SET `scriptname`='mob_toc_shadow_priest', `AIName` ='' WHERE `entry` IN (34473,34441);
UPDATE `creature_template` SET `scriptname`='mob_toc_dk', `AIName` ='' WHERE `entry` IN (34461,34458);
UPDATE `creature_template` SET `scriptname`='mob_toc_paladin', `AIName` ='' WHERE `entry` IN (34465,34445);
UPDATE `creature_template` SET `scriptname`='mob_toc_retro_paladin', `AIName` ='' WHERE `entry` IN (34471,34456);
UPDATE `creature_template` SET `scriptname`='mob_toc_druid', `AIName` ='' WHERE `entry` IN (34460,34451);
UPDATE `creature_template` SET `scriptname`='mob_toc_boomkin', `AIName` ='' WHERE `entry` IN (34469,34459);
UPDATE `creature_template` SET `scriptname`='mob_toc_warlock' WHERE `entry` IN (34474,34450);

UPDATE `creature_template` SET `scriptname`='mob_toc_pet_warlock', `AIName` ='' WHERE `entry` IN (35465);
UPDATE `creature_template` SET `scriptname`='mob_toc_pet_hunter', `AIName` ='' WHERE `entry` IN (35610);

UPDATE `creature_template` SET `lootid`= 0 WHERE  `entry` IN
(34460,34463,34461,34471,34475,34472,34453,34455,34458,34454,34451,34456,34467,35465,34468,35610,34473,34474,34441,34449,34448,34450);
UPDATE `creature_template` SET `lootid`= 0 WHERE  `entry` IN
(12266,12209,12212,12281,12190,12284,12269,12272,12229,12187,12091,12088,12169,12103,12106,12112,12166,12163,12175,12183,12303,12300);
UPDATE `creature_template` SET `lootid`= 0 WHERE  `entry` IN
(12267,12210,12213,12282,12191,12285,12270,12273,12230,12188,12092,12089,12170,12104,12107,12113,12167,12164,12181,12184,12304,12301);
UPDATE `creature_template` SET `lootid`= 0 WHERE  `entry` IN
(12268,12211,12214,12283,12192,12286,12271,12274,12231,12189,12093,12090,12171,12105,12108,12114,12168,12165,12182,12185,12305,12302);

-- N10
DELETE FROM `creature_loot_template` WHERE `entry` IN 
(34460,34463,34461,34471,34475,34472,34453,34455,34458,34454,34451,34456,34467,35465,34468,35610,34473,34474,34441,34449,34448,34450);
-- H10
DELETE FROM `creature_loot_template` WHERE `entry` IN 
(12266,12209,12212,12281,12190,12284,12269,12272,12229,12187,12091,12088,12169,12103,12106,12112,12166,12163,12175,12183,12303,12300);
-- N25
DELETE FROM `creature_loot_template` WHERE `entry` IN 
(12267,12210,12213,12282,12191,12285,12270,12273,12230,12188,12092,12089,12170,12104,12107,12113,12167,12164,12181,12184,12304,12301);
-- H25
DELETE FROM `creature_loot_template` WHERE `entry` IN 
(12268,12211,12214,12283,12192,12286,12271,12274,12231,12189,12093,12090,12171,12105,12108,12114,12168,12165,12182,12185,12305,12302);

-- Nortrend beasts
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (34796, 34799, 35144, 34797);
UPDATE `creature_template` SET `scriptname`='boss_gormok', `AIName` ='' WHERE `entry`=34796;
UPDATE `creature_template` SET `scriptname`='mob_snobold_vassal', `AIName` ='' WHERE `entry`=34800;

UPDATE `creature_template` SET `scriptname`='boss_dreadscale', `AIName` ='' WHERE `entry`=34799;
UPDATE `creature_template` SET `scriptname`='boss_acidmaw', `AIName` ='' WHERE `entry`=35144;
UPDATE `creature_template` SET `scriptname`='mob_slime_pool', `minlevel` = 80, `maxlevel` = 80, `minhealth`= 30000, `maxhealth` = 30000,`AIName` ='', `faction_A`= 14, `faction_H` = 14, `modelid_A` = 11686, `modelid_H` = 11686 WHERE `entry` = 35176;

UPDATE `creature_template` SET `scriptname`='boss_icehowl', `AIName` ='' WHERE `entry`=34797;

UPDATE `creature_template` SET `lootid`= 0 WHERE  `entry` IN (34796,34799,35144);
DELETE FROM `creature_loot_template`  WHERE  `entry` IN (34796,34799,35144);

-- Jaraxxus
UPDATE `creature_template` SET `scriptname`='boss_jaraxxus', `AIName` ='' WHERE `entry`= 34780;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (34780, 34784, 34813, 34815, 34825, 34826);
UPDATE `creature_template` SET `scriptname`='mob_legion_flame', `minlevel` = 82, `maxlevel` = 82, `modelid_A` = 11686, `modelid_A2` = 11686, `modelid_H` = 11686, `modelid_H2` = 11686, `AIName` ='', `faction_A`= 14, `faction_H` = 14 WHERE `entry` = 34784;
UPDATE `creature_template` SET `scriptname`='mob_infernal_volcano', `AIName` ='' WHERE `entry` = 34813;
UPDATE `creature_template` SET `scriptname`='mob_fel_infernal', `AIName` ='' WHERE `entry` = 34815;
UPDATE `creature_template` SET `scriptname`='mob_nether_portal', `AIName` ='' WHERE `entry` = 34825;
UPDATE `creature_template` SET `scriptname`='mob_mistress_of_pain', `AIName` ='' WHERE `entry` = 34826;

-- Valkiries
UPDATE `creature_template` SET `scriptname` = 'boss_fjola', `AIName` ='' WHERE `entry`=34497;
UPDATE `creature_template` SET `scriptname` = 'boss_eydis', `AIName` ='' WHERE `entry`=34496;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (34497, 34496, 34568, 34567);
UPDATE `creature_template` SET `npcflag`=1, `scriptname`='mob_light_essence', `AIName` ='' WHERE entry = 34568;
UPDATE `creature_template` SET `npcflag`=1, `scriptname`='mob_dark_essence', `AIName` ='' WHERE entry = 34567;
UPDATE `creature_template` SET `faction_A` = 14, `minlevel` = 82, `maxlevel` = 82,`faction_H` = 14, `AIName` ='', `scriptname`='mob_unleashed_dark' WHERE entry = 34628;
UPDATE `creature_template` SET `faction_A` = 14, `minlevel` = 82, `maxlevel` = 82,`faction_H` = 14, `AIName` ='', `scriptname`='mob_unleashed_light' WHERE entry = 34630;
-- Twin pact by Wowka321
DELETE FROM `spell_script_target` WHERE `entry` IN (65875,67303,67304,67305,65876,67306,67307,67308);
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES 
('65875', '1', '34497'),
('67303', '1', '34497'),
('67304', '1', '34497'),
('67305', '1', '34497'),
('65876', '1', '34496'),
('67306', '1', '34496'),
('67307', '1', '34496'),
('67308', '1', '34496');

-- Anub'arak
UPDATE `creature_template` SET `scriptname`='boss_anubarak_trial', `unit_flags` = 0, `AIName` ='' WHERE `entry`=34564;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (34606, 34605, 34607, 34564, 34660);
UPDATE `creature_template` SET `modelid_A` = 25144, `modelid_A2` = 0, `modelid_H` = 25144, `modelid_H2` = 0, `faction_A` = 14, `faction_H` = 14, `AIName` = '', `ScriptName` = 'mob_frost_sphere' WHERE `entry` = 34606;
UPDATE `creature_template` SET `scriptname`='mob_swarm_scarab', `AIName` ='' WHERE `entry`=34605;
UPDATE `creature_template` SET `scriptname`='mob_nerubian_borrower', `AIName` ='' WHERE `entry`=34607;
UPDATE `creature_template` SET `scriptname`='mob_anubarak_spike', `faction_A` = 14, `minlevel` = 80, `maxlevel` = 80,`faction_H` = 14, `AIName` ='' WHERE `entry`=34660;

-- TOC original texts/sounds (thanks to griffonheart)
-- english translation by Cristy
-- reworked by rsa

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1713799 AND -1713499;
REPLACE INTO `script_texts`
(`comment`,`sound`, `entry`,`content_loc8`,`type`,`language`,`emote`,`content_default`) VALUES
('34996','16036','-1713500','Добро пожаловать, герои! Вы услышали призыв Серебряного Авангарда и без колебаний откликнулись на него! В этом колизее вам предстоит сразиться с опаснейшими противниками. Те из вас, кто смогут пережить испытания, войдут в ряды Серебряного Авангарда, который направится в Цитадель Ледяной Короны.','6','0','0','Welcome champions, you have heard the call of the argent crusade and you have boldly answered. It is here in the crusaders coliseum that you will face your greatest challenges. Those of you who survive the rigors of the coliseum will join the Argent Crusade on its marsh to ice crown citadel.'),
('34996','16038','-1713501','Из самых глубоких и темных пещер Грозовой Гряды был призван Гормок Пронзающий Бивень! В бой, герои!','6','0','0','Hailing from the deepest, darkest carverns of the storm peaks, Gormok the Impaler! Battle on, heroes!'),
('34990','16069','-1713502','Твои чудовища не чета героям Альянса, Тирион!','6','0','0','Your beast will be no match for my champions Tirion!'),
('34995','16026','-1713702','Я видел и более достойных соперников в багровом круге. Ты напрасно тратишь наше время, паладин.','6','0','0','Your beast will be no match for my champions Tirion!'),
('34796','0','-1713601','Мои рабы! Уничтожьте врага!','3','0','0','My slaves! Destroy the enemy!'),
('34996','16039','-1713503','Приготовьтесь к схватке с близнецами-чудовищами, Кислотной Утробой и Жуткой Чешуей!','6','0','0','Steel yourselves, heroes, for the twin terrors Acidmaw and Dreadscale. Enter the arena!'),
('34799','0','-1713504','После гибели товарища %s приходит в ярость!','3','0','0','After the death of sister %s goes berserk!'),
('34996','16040','-1713505','В воздухе повеяло ледяным дыханием следующего бойца: на арену выходит Ледяной Рев! Сражайтесь или погибните, чемпионы!','6','0','0','The air freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions!'),
('34797','0','-1713506','%s глядит на |3-3($n) и испускает гортанный вой!','3','0','0','%S looks at |3-3($n) and emits a guttural howl!'),
('34797','0','-1713507','%s врезается в стену Колизея и теряет ориентацию!','3','0','0','%S crashes into a wall of the Colosseum and lose focus!'),
('34797','0','-1713508','|3-3(%s) охватывает кипящая ярость, и он растаптывает всех на своем пути!','3','0','0','|3-3(%s) covers boiling rage, and he tramples all in its path!'),
('34996','16041','-1713509','Все чудовища повержены!','6','0','0','All the monsters defeated!'),
('34996','16042','-1713709','Прискорбно. Как яростно они не бились, чудовища Нордскола оказались сильнее. Почтим память павших героев минутой молчания.','6','0','0',''),
('34996','16043','-1713510','Сейчас великий чернокнижник Вилфред Непопамс призовет вашего нового противника. Готовьтесь к бою!','6','0','0','Grand Warlock Wilfred Fizzlebang will summon forth your next challenge. Stand by for his entry!'),
('35458','16268','-1713511','Благодарю, Верховный лорд. А теперь, смельчаки, я приступаю к ритуалу призыва. Когда я закончу, появится грозный демон!','6','0','0','Thank you, Highlord! Now challengers, I will begin the ritual of summoning! When I am done, a fearsome Doomguard will appear!'),
('35458','16269','-1713512','Готовьтесь к забвению!','6','0','0','Prepare for oblivion!'),
('35458','16270','-1713513','АГА! Получилось! Трепещи перед всевластным Вилфредом Непопамсом, мастером призыва! Ты покорен мне, демон!','6','0','0','Ah ha! Behold the absolute power of Wilfred Fizzlebang, master summoner! You are bound to ME, demon!'),
('34780','16143','-1713514','Ничтожный гном! Тебя погубит твоя самоуверенность!','6','0','0','Trifling gnome, your arrogance will be your undoing!'),
('35458','16271','-1713515','Тут я главный!','6','0','0','But I am in charge here-'),
('35458','0','-1713715','Ну вот, опять я облажался...','6','0','0','Agonized Scream!!!'),
('34996','16044','-1713516','Быстрей, герои, расправьтесь с повелителем демонов, прежде чем он откроет портал в свое темное царство!','6','0','0','Quickly, heroes! Destroy the demon lord before it can open a portal to its twisted demonic realm!'),
('34780','16144','-1713517','Перед вами Джараксус, эредарский повелитель Пылающего Легиона!','6','0','0','You face Jaraxxus, eredar lord of the Burning Legion!'),
('34780','0','-1713518','На вас направлено |cFFFF0000Пламя Легиона!|r','3','0','0','You have been sent |cFFFF0000Plamya Legion!|R'),
('34780','0','-1713519','%s создает врата Пустоты!','3','0','0','%S creates the gates of the Void!'),
('34780','0','-1713520','%s создает |cFF00FF00Вулкан инферналов!|r','3','0','0','%S creates |cFF00FF00Vulkan Infernals!|R'),
('34780','16150','-1713521','Явись, сестра! Господин зовет!','6','0','0','Come forth, sister! Your master calls!'),
('34780','0','-1713522','$n $gподвергся:подверглась; |cFF00FFFFИспепелению плоти!|r Исцелите $gего:ее;!','3','0','0','$N $gpodvergsya:been; |cFF00FFFFIspepeleniyu flesh!|R Heal $gego:it;!'),
('34780','16149','-1713523','ПЛОТЬ ОТ КОСТИ!','6','0','0','FLESH FROM BONE!'),
('34780','16151','-1713524','ИНФЕРНАЛ!','6','0','0','INFERNO!'),
('34780','16147','-1713525','Мое место займут другие. Ваш мир обречен...','6','0','0','Another will take my place. Your world is doomed.'),
('34996','16045','-1713526','Гибель Вилфреда Непопамса весьма трагична и должна послужить уроком тем, кто смеет беспечно играть с темной магией. К счастью, вы победили демона, и теперь вас ждет новый противник.','6','0','0','The loss of Wilfred Fizzlebang, while unfortunate, should be a lesson to those that dare dabble in dark magic. Alas, you are victorious and must now face the next challenge.'),
('34995','16021','-1713527','Подлые собаки Альянса! Вы выпустили повелителя демонов на воинов Орды? Ваша смерть будет быстрой!','6','0','0','Treacherous Alliance dogs! You summon a demon lord against warriors of the Horde!? Your deaths will be swift!'),
('34990','16064','-1713528','Альянсу не нужна помощь повелителя демонов, чтобы справиться с ордынским отродьем, пес!','6','0','0','The Alliance doesnt need the help of a demon lord to deal with Horde filth. Come, pig!'),
('34996','16046','-1713529','Тише! Успокойтесь! Никакого заговора здесь нет. Чернокнижник заигрался и поплатился за это. Турнир продолжается!','6','0','0','Everyone, calm down! Compose yourselves! There is no conspiracy at play here. The warlock acted on his own volition - outside of influences from the Alliance. The tournament must go on!'),
('34996','16047','-1713530','В следующем бою вы встретитесь с могучими рыцарями Серебряного Авангарда! Лишь победив их, вы заслужите достойную награду.','6','0','0','The next battle will be against the Argent Crusades most powerful knights! Only by defeating them will you be deemed worthy...'),
('34995','16023','-1713531','Орда требует справедливости! Мы вызываем Альянс на бой! Позволь нам встать на место твоих рыцарей, паладин. Мы покажем этим псам, как оскорблять Орду!','6','0','0','The Horde demands justice! We challenge the Alliance. Allow us to battle in place of your knights, paladin. We will show these dogs what it means to insult the Horde!'),
('34995','16066','-1713731','Они хотели запятнать честь Альянса, они пытались нас оклеветать! Я требую справедливости! Тириорн, позволь моим чемпионам сражаться вместо твоих рыцарей. Мы бросаем вызов Орде!','6','0','0','Our honor has been besmirched! They make wild claims and false accusations against us. I demand justice! Allow my champions to fight in place of your knights, Tirion. We challenge the Horde!'),
('34996','16048','-1713532','Хорошо. Да будет так. Сражайтесь с честью!','','0','0','Very well, I will allow it. Fight with honor!'),
('34995','16022','-1713533','Не щадите никого, герои Орды! ЛОК-ТАР ОГАР!','6','0','0','Show them no mercy, Horde champions! LOK-TAR OGAR!'),
('34995','16065','-1713733','Сражайтесь во славу Альянса, герои! Во имя вашего короля!','6','0','0','Fight for the glory of the Alliance, heroes! Honor your king and your people!'),
('34990','16067','-1713534','СЛАВА АЛЬЯНСУ!','6','0','0','GLORY OF THE ALLIANCE!'),
('34990','16024','-1713734','Это было лишь пробой того, что ждёт нас в будущем. За Орду!','6','0','0','LOK-TAR OGAR!'),
('34996','16049','-1713535','Пустая и горькая победа. После сегодняшних потерь мы стали слабее как целое. Кто еще, кроме Короля-лича, выиграет от подобной глупости? Пали великие воины. И ради чего? Истинная опасность еще впереди - нас ждет битва с Королем-личом.','6','0','0','A shallow and tragic victory. We are weaker as a whole from the losses suffered today. Who but the Lich King could benefit from such foolishness? Great warriors have lost their lives. And for what? The true threat looms ahead - the Lich King awaits us all in death.'),
('34996','16050','-1713536','Лишь сплотившись, вы сможете пройти последнее испытание. Из глубин Ледяной Короны навстречу вам подымаются две могучие воительницы Плети: жуткие валькирии, крылатые вестницы Короля-лича!','6','0','0','Only by working together will you overcome the final challenge. From the depths of Icecrown come two of the Scourges most powerful lieutenants: fearsome valkyr, winged harbingers of the Lich King!'),
('34996','16037','-1713537','Пусть состязания начнутся!','6','0','0','Let the games begin!'),
('34497','0','-1713538','%s начинает читать заклинание|cFFFFFFFFСветлая воронка!|r Переключение к |cFFFFFFFFСветлой|r сущности!','3','0','0','%S begins to read a spell |cFFFFFFFFSvetlaya funnel!|R switch to |cFFFFFFFFSvetloy|r essence!'),
('34497','0','-1713539','%s начинает читать заклинание Договор близнецов!','3','0','0','%S begins to read the spell Treaty twins!'),
('34496','0','-1713540','%s начинает читать заклинание |cFF9932CDТемная воронка!|r Переключение к |cFF9932CDТемной|r сущности!','3','0','0','%S begins to read a spell |cFF9932CDTemnaya funnel!|R switch to |cFF9932CDTemnoy|r essence!'),
('34497','16272','-1713541','Во имя темного повелителя. Во имя Короля-лича. Вы. Умрете.','6','0','0','In the name of our dark master. For the Lich King. You. Will. Die.'),
('34496','16272','-1713741','Во имя светлого повелителя. Во имя Короля-лича. Вы. Умрете.','6','0','0','In the name of our dark master. For the Lich King. You. Will. Die.'),
('34496','16279','-1713542','Да поглотит вас Свет!','6','0','0','Let the light consume you!'),
('34496','16277','-1713543','Пустое место!','6','0','0','Empty place!'),
('34497','16276','-1713544','Тебя оценили и признали ничтожеством.','6','0','0','You appreciated and acknowledged nothing.'),
('34497','16274','-1713545','ХАОС!','3','0','0','CHAOS!'),
('34496','16278','-1713546','Да поглотит вас Тьма!','6','0','0','Let the dark consume you!'),
('34496','16275','-1713547','Плеть не остановить...','6','0','0','The Scourge cannot be stopped...'),
('34990','16068','-1713548','Против Альянса не выстоять даже самым сильным прислужникам Короля-лича! Все славьте наших героев!','6','0','0','Against the Alliance can not stand even the most powerful henchmen of the Lich King! All glorify our heroes!'),
('34995','16025','-1713748','Ты все еще сомневаешься в могуществе Орды, паладин? Мы примем любой вызов!','6','0','0','Against the Horde does not withstand even the most powerful henchmen of the Lich King! All glorify our heroes!'),
('34996','16051','-1713549','Король-лич понес тяжелую потерю! Вы проявили себя как бесстрашные герои Серебряного Авангарда! Мы вместе нанесем удар по Цитадели Ледяной Короны и разнесем в клочья остатки Плети! Нет такого испытания, которое мы бы не могли пройти сообща!','6','0','0','A mighty blow has been dealt to the Lich King! You have proven yourselves able bodied champions of the Argent Crusade. Together we will strike at Icecrown Citadel and destroy what remains of the Scourge! There is no challenge that we cannot face united!'),
('16980','16321','-1713550','Будет тебе такое испытание, Фордринг.','6','0','0','You will have your challenge, Fordring.'),
('34996','16052','-1713551','Артас! Нас гораздо больше! Сложи Ледяную Скорбь, и я подарю тебе заслуженную смерть.','6','0','0','Arthas! You are hopelessly outnumbered! Lay down Frostmourne and I will grant you a just death.'),
('35877','16322','-1713552','Нерубианцы воздвигли целую империю под льдами Нордскола. Империю, на которой вы так бездумно построили свои дома. МОЮ ИМПЕРИЮ.','6','0','0','The Nerubians built an empire beneath the frozen wastes of Northrend. An empire that you so foolishly built your structures upon. MY EMPIRE.'),
('16980','16323','-1713553','Души твоих павших чемпионов будут принадлежать мне, Фордринг.','6','0','0','The souls of your fallen champions will be mine, Fordring.'),
('34564','16235','-1713554','А вот и гости заявились, как и обещал господин.','6','0','0','Ahhh... Our guests arrived, just as the master promised.'),
('34564','16234','-1713555','Это место станет вашей могилой!','3','0','0','This place will serve as your tomb!'),
('34564','16240','-1713556','Ауум на-л ак-к-к-к, ишшш. Вставайте, слуги мои. Время пожирать...','6','0','0','Auum na-l ak-k-k-k, isshhh. Rise, minions. Devour...'),
('34564','0','-1713557','%s зарывается в землю!','3','0','0','%S buries itself in the earth!'),
('34660','0','-1713558','Шипы %s преследуют $n!','3','0','0','%s spikes  pursuing $n!'),
('34564','0','-1713559','%s вылезает на поверхность!','3','0','0','%S getting out of the ground!'),
('34564','16241','-1713560','Стая поглотит вас!','6','0','0','The swarm shall overtake you!'),
('34564','0','-1713561','%s выпускает рой жуков-трупоедов, чтобы восстановить здоровье!','3','0','0','%S produces a swarm of beetles Peon to restore your health!'),
('34564','16236','-1713562','Ф-лаккх шир!','6','0','0','F-lakkh shir!'),
('34564','16237','-1713563','Еще одна душа накормит хозяина.','6','0','0','Another soul to sate the host.'),
('34564','16238','-1713564','Я подвел тебя, господин...','6','0','0','I have failed you, master...'),
('36095','0','-1713565','Чемпионы, вы прошли испытание великого крестоносца! Знайте, что только самые сильные искатели приключений могли рассчитывать завершить это испытание.','6','0','0','Champions, you are alive! Not only have you defeated every challenge of the Trial of the Crusader, but thwarted Arthas directly! Your skill and cunning will prove to be a powerful weapon against the Scourge. Well done! Allow one of my mages to transport you back to the surface!'),
('36095','0','-1713566','Позвольте вручить вам эти сундуки в качестве заслуженной награды, и пусть его содержимое послужит вам верой и правдой в походе против Артаса в самом центре Цитадели Ледяной Короны!','6','0','0','Let me hand you the chests as a reward, and let its contents will serve you faithfully in the campaign against Arthas in the heart of the Icecrown Citadel!');

-- Trial of the crusader spelltable
DELETE FROM `boss_spell_table` WHERE `entry` IN 
(34496,34497,34564,34605,34607,34780,34784,34796,34797,34799, 34800, 34813, 34815, 34826, 35144, 35176, 34606, 34660);

-- Eydis Darkbane
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34496, 64238, 0, 0, 0, 600000, 0, 0, 0, 600000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34496, 65768, 0, 0, 0, 30000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34496, 65874, 0, 0, 0, 15000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34496, 65876, 0, 0, 0, 30000, 0, 0, 0, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34496, 65879, 0, 0, 0, 30000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34496, 65916, 0, 0, 0, 15000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34496, 66058, 0, 0, 0, 30000, 0, 0, 0, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34496, 66069, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(34496, 67282, 0, 0, 0, 8000, 0, 6000, 0, 12000, 0, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, NULL);
-- summons
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(34496, 34628, 45000, 45000, 1, 1, 2, 2, 10, 100, 0, 11);

-- Fjola Lightbane
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34497, 64238, 0, 0, 0, 600000, 0, 0, 0, 600000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34497, 65766, 67270, 67271, 67272, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34497, 65858, 0, 0, 0, 15000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34497, 65875, 0, 0, 0, 30000, 0, 0, 0, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34497, 65879, 0, 0, 0, 30000, 0, 0, 0, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34497, 65916, 0, 0, 0, 15000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34497, 66046, 0, 0, 0, 30000, 0, 0, 0, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34497, 66075, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(34497, 67297, 0, 0, 0, 8000, 0, 6000, 0, 0, 12000, 0, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, NULL);
-- summons
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(34497, 34630, 45000, 45000, 1, 1, 2, 2, 10, 100, 0, 11);

-- AnubArak
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34564, 26662, 26662, 26662, 26662, 600000, 600000, 600000, 600000, 600000, 600000, 600000, 600000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34564, 34605, 0, 0, 0, 90000, 0, 0, 0, 90000, 0, 0, 0, 0, 0, 0, 0, 20.0, 100.0, 0, 0, 0, 0, 9, 1, 0, 0, NULL),
(34564, 34660, 0, 0, 0, 20000, 0, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 0, 5.0, 10.0, 0, 0, 0, 0, 9, 1, 0, 0, NULL),
(34564, 34606, 0, 0, 0, 5000, 0, 0, 0, 10000, 0, 0, 0, 0, 0, 0, 0, 10.0, 100.0, 0, 0, 0, 0, 9, 1, 0, 0, NULL),
(34564, 34607, 0, 0, 0, 70000, 0, 0, 0, 90000, 0, 0, 0, 0, 0, 0, 0, 20.0, 100.0, 0, 0, 0, 0, 9, 1, 0, 0, NULL),
(34564, 53421, 53421, 53421, 53421, 45000, 45000, 45000, 45000, 60000, 60000, 60000, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, NULL),
(34564, 66169, 0, 0, 0, 20000, 0, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34564, 66012, 66012, 66012, 66012, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34564, 66013, 67700, 68509, 68510, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34564, 66339, 66339, 66339, 66339, 5000, 5000, 5000, 5000, 10000, 10000, 10000, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, NULL),
(34564, 67574, 0, 0, 0, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 1, 0, NULL),
(34564, 66118, 67630, 68646, 68647, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34564, 66240, 0, 0, 0, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34564, 66125, 0, 0, 0, 10000, 0, 0, 0, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34564, 67730, 0, 0, 0, 20000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL);

-- Anub'arak scarab
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34605, 66092, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34605, 67861, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL);

-- Cold sphere
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34606, 66193, 67855, 67856, 67857, 5000, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL);

-- Anub'arak spike
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34660, 67574, 0, 0, 0, 20000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, NULL),
(34660, 66193, 67855, 67856, 67857, 1000, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34660, 65920, 65921, 65922, 65923, 1000, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL);

-- Nerubian Borrower
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34607, 66129, 66129, 66129, 66129, 10000, 10000, 10000, 10000, 20000, 20000, 20000, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, NULL),
(34607, 67322, 67322, 67322, 67322, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, NULL),
(34607, 67847, 67847, 67847, 67847, 5000, 5000, 5000, 5000, 20000, 20000, 20000, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL);

-- Jaraxxus
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34780, 26662, 26662, 26662, 26662, 600000, 600000, 600000, 600000, 600000, 600000, 600000, 600000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34780, 66197, 68123, 68124, 68125, 30000, 30000, 30000, 30000, 45000, 45000, 45000, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34780, 66237, 67049, 67050, 67051, 40000, 40000, 40000, 40000, 90000, 90000, 40000, 90000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, NULL),
(34780, 66242, 67060, 67060, 67060, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34780, 66264, 66264, 68405, 68405, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 1, 0, NULL),
(34780, 66528, 66528, 67029, 67029, 15000, 15000, 15000, 15000, 25000, 25000, 25000, 25000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34780, 66532, 66963, 66964, 66965, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34780, 67108, 0, 0, 0, 30000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34780, 66255, 0, 0, 0, 30000, 0, 0, 0, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34780, 34825, 0, 0, 0, 60000, 0, 0, 0, 60000, 0, 0, 0, 0, 0, 0, 0, 20.0, 80.0, 0, 0, 0, 0, 10, 0, 0, 0, NULL),
(34780, 34813, 0, 0, 0, 60000, 0, 0, 0, 60000, 0, 0, 0, 0, 0, 0, 0, 20.0, 60.0, 0, 0, 0, 0, 10, 0, 0, 0, NULL);

-- NPC Legion flame
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34784, 66199, 68127, 68126, 68128, 30000, 30000, 30000, 30000, 45000, 45000, 45000, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL);

-- Gormok
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34796, 34800, 0, 0, 0, 30000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 20.0, 80.0, 0, 0, 0, 0, 9, 0, 0, 0, NULL),
(34796, 66331, 67477, 67478, 67479, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34796, 66636, 0, 0, 0, 15000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 1, 0, NULL),
(34796, 67648, 0, 0, 0, 15000, 0, 0, 0, 40000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL);

-- Icehowl
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34797, 66683, 67660, 67661, 67662, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34797, 66689, 67650, 67651, 67652, 25000, 25000, 25000, 25000, 40000, 40000, 40000, 40000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34797, 66734, 0, 0, 0, 4000, 4000, 3000, 3000, 4000, 4000, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, NULL),
(34797, 66770, 67654, 67655, 67656, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(34797, 66758, 0, 0, 0, 15000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34797, 68667, 0, 0, 0, 8000, 0, 0, 0, 8000, 0, 0, 0, 0, 0, 0, 0, 200.0, 0, 0, 0, 0, 0, 12, 0, 1, 0, NULL),
(34797, 66759, 0, 0, 0, 300000, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34797, 67345, 67663, 67664, 67665, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL);

-- Dreadscale
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34799, 53421, 0, 0, 0, 40000, 0, 0, 0, 40000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34799, 66794, 67644, 67645, 67646, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34799, 66796, 67632, 67633, 67634, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34799, 66821, 66821, 66821, 66821, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34799, 66879, 67624, 67625, 67626, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34799, 66902, 67627, 67628, 67629, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(34799, 66883, 67641, 67642, 67643, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34799, 35176, 0, 0, 0, 30000, 30000, 45000, 60000, 30000, 30000, 45000, 60000, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 11, 0, 0, 0, NULL),
(34799, 68335, 68335, 68335, 68335, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL);

-- Snobold vassal
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34800, 66313, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, NULL),
(34800, 66317, 0, 0, 0, 10000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, NULL),
(34800, 66318, 0, 0, 0, 10000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, NULL),
(34800, 66406, 0, 0, 0, 10000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL),
(34800, 66407, 0, 0, 0, 10000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(34800, 66408, 0, 0, 0, 10000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(34800, 66636, 0, 0, 0, 15000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 1, 0, NULL);

-- Infernal volcano
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34813, 66255, 0, 0, 0, 30000, 0, 0, 0, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34813, 66258, 0, 0, 0, 20000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, NULL);

-- Fel infernal
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34815, 66494, 66494, 66494, 66494, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34815, 67047, 67047, 67047, 67047, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL);

-- Mistress of pain
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34826, 66316, 66316, 66316, 66316, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34826, 67098, 67098, 67098, 67098, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL);

-- Acidmaw
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(35144, 53421, 0, 0, 0, 40000, 0, 0, 0, 40000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, NULL),
(35144, 66794, 67644, 67645, 67646, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(35144, 66819, 66819, 66819, 66819, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(35144, 66824, 67612, 67613, 67614, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(35144, 66880, 67606, 67607, 67608, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(35144, 66901, 0, 0, 0, 15000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(35144, 66883, 67641, 67642, 67643, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(35144, 35176, 0, 0, 0, 30000, 30000, 45000, 60000, 30000, 30000, 45000, 60000, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 11, 0, 0, 0, NULL),
(35144, 68335, 68335, 68335, 68335, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL);

-- Slime pool
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(35176, 63084, 0, 0, 0, 1000, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, NULL),
(35176, 66882, 0, 0, 0, 500, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL);

-- Retro Paladins
DELETE FROM `boss_spell_table` WHERE `entry` IN (34471,34456);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34471, 66011, 0, 180000, 180000, 3),
(34471, 66003, 0, 6000, 18000, 3),
(34471, 66010, 0, 0, 3600001, 1),
(34471, 66006, 0, 10000, 10000, 3),
(34471, 66007, 0, 40000, 40000, 3),
(34471, 66009, 0, 300000, 300000, 1),
(34471, 66005, 68018, 8000, 15000, 3),
(34471, 66008, 0, 60000, 60000, 4),
(34471, 66004, 68021, 10000, 15000, 1);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34456, 66011, 0, 180000, 180000, 3),
(34456, 66003, 0, 6000, 18000, 3),
(34456, 66010, 0, 0, 3600001, 1),
(34456, 66006, 0, 10000, 10000, 3),
(34456, 66007, 0, 40000, 40000, 3),
(34456, 66009, 0, 300000, 300000, 1),
(34456, 66005, 68018, 8000, 15000, 3),
(34456, 66008, 0, 60000, 60000, 4),
(34456, 66004, 68021, 10000, 15000, 1);

-- Pet's
DELETE FROM `boss_spell_table` WHERE `entry` IN (35465,35610);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(35465, 67518, 0, 15000, 30000, 3),
(35465, 67519, 0, 15000, 30000, 3);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(35610, 67793, 67980, 67981, 67982, 5000, 10000, 3);

-- Druids
DELETE FROM `boss_spell_table` WHERE `entry` IN (34460,34451);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34460, 66093, 67957, 5000, 15000, 14),
(34460, 66066, 67965, 10000, 20000, 14),
(34460, 66067, 67968, 10000, 20000, 14),
(34460, 66065, 67971, 10000, 20000, 14),
(34460, 66086, 67974, 40000, 90000, 1),
(34460, 65860, 0, 45000, 90000, 1),
(34460, 66068, 0, 15000, 30000, 6),
(34460, 66071, 0, 40000, 80000, 1);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34451, 66093, 67957, 10000, 20000, 14),
(34451, 66066, 67965, 10000, 20000, 14),
(34451, 66067, 67968, 10000, 20000, 14),
(34451, 66065, 67971, 10000, 20000, 14),
(34451, 66086, 67974, 40000, 90000, 1),
(34451, 65860, 0, 45000, 90000, 1),
(34451, 66068, 0, 15000, 30000, 6),
(34451, 66071, 0, 40000, 80000, 1);

-- Warriors
DELETE FROM `boss_spell_table` WHERE `entry` IN (34475,34453);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34475, 65947, 0, 20000, 30000, 1),
(34475, 65930, 0, 10000, 60000, 3),
(34475, 65926, 0, 6000, 25000, 3),
(34475, 68764, 0, 3000, 25000, 3),
(34475, 65935, 0, 20000, 80000, 3),
(34475, 65924, 0, 30000, 90000, 1),
(34475, 65936, 0, 5000, 25000, 3),
(34475, 65940, 0, 10000, 25000, 3),
(34475, 65932, 0, 30000, 60000, 1);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34453, 65947, 0, 20000, 30000, 1),
(34453, 65930, 0, 10000, 60000, 3),
(34453, 65926, 0, 6000, 25000, 3),
(34453, 68764, 0, 3000, 25000, 3),
(34453, 65935, 0, 20000, 80000, 3),
(34453, 65924, 0, 30000, 90000, 1),
(34453, 65936, 0, 5000, 25000, 3),
(34453, 65940, 0, 10000, 25000, 3),
(34453, 65932, 0, 30000, 60000, 1);

-- Mage
DELETE FROM `boss_spell_table` WHERE `entry` IN (34468,34449);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34468, 65799, 67995, 3000, 10000, 3),
(34468, 65791, 67998, 5000, 15000, 3),
(34468, 65800, 68001, 5000, 15000, 3),
(34468, 65793, 0, 7000, 25000, 1),
(34468, 65807, 68004, 5000, 15000, 4),
(34468, 65790, 0, 5000, 15000, 6),
(34468, 65792, 0, 7000, 15000, 1),
(34468, 65802, 0, 0, 3600001, 1),
(34468, 65801, 0, 15000, 40000, 4);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34449, 65799, 67995, 3000, 10000, 3),
(34449, 65791, 67998, 5000, 15000, 3),
(34449, 65800, 68001, 5000, 15000, 3),
(34449, 65793, 0, 7000, 25000, 1),
(34449, 65807, 68004, 5000, 15000, 4),
(34449, 65790, 0, 5000, 15000, 6),
(34449, 65792, 0, 7000, 15000, 1),
(34449, 65802, 0, 0, 3600001, 1),
(34449, 65801, 0, 15000, 40000, 4);

-- Shaman
DELETE FROM `boss_spell_table` WHERE `entry` IN (34463,34455);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34463, 66055, 68115, 5000, 15000, 14),
(34463, 66053, 68118, 5000, 15000, 14),
(34463, 66056, 0, 5000, 15000, 14),
(34463, 65983, 0, 30000, 60000, 1),
(34463, 65980, 0, 5000, 15000, 6),
(34463, 66054, 0, 10000, 40000, 4),
(34463, 66063, 0, 5000, 15000, 14),
(34463, 65973, 68100, 5000, 15000, 4);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34455, 66055, 68115, 5000, 15000, 14),
(34455, 66053, 68118, 5000, 15000, 14),
(34455, 66056, 0, 5000, 15000, 14),
(34455, 65983, 0, 30000, 60000, 1),
(34455, 65980, 0, 5000, 15000, 6),
(34455, 66054, 0, 10000, 40000, 4),
(34455, 66063, 0, 5000, 15000, 14),
(34455, 65973, 68100, 5000, 15000, 4);

-- Enh shaman
DELETE FROM `boss_spell_table` WHERE `entry` IN (34470,34444);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34470, 65973, 0, 5000, 8000, 4),
(34470, 65974, 0, 5000, 8000, 3),
(34470, 65983, 0, 25000, 600000, 1),
(34470, 65970, 0, 5000, 90000, 3);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34444, 65973, 0, 5000, 8000, 4),
(34444, 65974, 0, 5000, 8000, 3),
(34444, 65983, 0, 25000, 600000, 1),
(34444, 65970, 0, 5000, 90000, 3);

-- Hunter
DELETE FROM `boss_spell_table` WHERE `entry` IN (34467,34448);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34467, 65583, 67978, 3000, 8000, 3),
(34467, 65871, 0, 20000, 120000, 1),
(34467, 65869, 0, 12000, 20000, 1),
(34467, 65866, 67984, 3000, 8000, 3),
(34467, 65880, 0, 12000, 30000, 1),
(34467, 65868, 67989, 4000, 8000, 3),
(34467, 65867, 0, 4000, 8000, 3),
(34467, 66207, 0, 4000, 8000, 3),
(34467, 65877, 0, 7000, 60000, 4);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34448, 65583, 67978, 3000, 8000, 3),
(34448, 65871, 0, 20000, 120000, 1),
(34448, 65869, 0, 12000, 20000, 1),
(34448, 65866, 67984, 3000, 8000, 3),
(34448, 65880, 0, 12000, 30000, 1),
(34448, 65868, 67989, 4000, 8000, 3),
(34448, 65867, 0, 4000, 8000, 3),
(34448, 66207, 0, 4000, 8000, 3),
(34448, 65877, 0, 7000, 60000, 4);

-- Rogue
DELETE FROM `boss_spell_table` WHERE `entry` IN (34472,34454);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34472, 65955, 0, 8000, 10000, 3),
(34472, 65956, 0, 12000, 120000, 1),
(34472, 65960, 0, 7000, 8000, 6),
(34472, 65961, 0, 20000, 120000, 1),
(34472, 66178, 0, 10000, 8000, 3),
(34472, 65954, 0, 5000, 8000, 3),
(34472, 65957, 68095, 15000, 20000, 3);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34454, 65955, 0, 8000, 10000, 3),
(34454, 65956, 0, 12000, 120000, 1),
(34454, 65960, 0, 7000, 8000, 6),
(34454, 65961, 0, 20000, 120000, 1),
(34454, 66178, 0, 10000, 8000, 3),
(34454, 65954, 0, 5000, 8000, 3),
(34454, 65957, 68095, 15000, 20000, 3);

-- Priest
DELETE FROM `boss_spell_table` WHERE `entry` IN (34466,34447);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34466, 66177, 68035, 3000, 8000, 14),
(34466, 66099, 68032, 3000, 8000, 14),
(34466, 66104, 68023, 3000, 8000, 14),
(34466, 66100, 68026, 3000, 8000, 4),
(34466, 65546, 0, 3000, 8000, 6),
(34466, 65543, 0, 5000, 25000, 1);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34447, 66177, 68035, 3000, 8000, 14),
(34447, 66099, 68032, 3000, 8000, 14),
(34447, 66104, 68023, 3000, 8000, 14),
(34447, 66100, 68026, 3000, 8000, 4),
(34447, 65546, 0, 3000, 8000, 6),
(34447, 65543, 0, 5000, 25000, 1);

-- Shadow priest
DELETE FROM `boss_spell_table` WHERE `entry` IN (34473,34441);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34473, 65542, 0, 8000, 15000, 6),
(34473, 65490, 68091, 3000, 8000, 4),
(34473, 65541, 68088, 3000, 8000, 4),
(34473, 65488, 68042, 3000, 8000, 3),
(34473, 65492, 68038, 3000, 8000, 3),
(34473, 65545, 0, 3000, 8000, 3),
(34473, 65544, 0, 1000, 180000, 1),
(34473, 65546, 0, 3000, 8000, 4),
(34473, 65543, 0, 8000, 24000, 1),
(34473, 16592, 0, 3000, 8000, 1);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34441, 65542, 0, 8000, 15000, 6),
(34441, 65490, 68091, 3000, 8000, 4),
(34441, 65541, 68088, 3000, 8000, 4),
(34441, 65488, 68042, 3000, 8000, 3),
(34441, 65492, 68038, 3000, 8000, 3),
(34441, 65545, 0, 3000, 8000, 3),
(34441, 65544, 0, 1000, 180000, 1),
(34441, 65546, 0, 3000, 8000, 4),
(34441, 65543, 0, 8000, 24000, 1),
(34441, 16592, 0, 3000, 8000, 1);

-- Death knight
DELETE FROM `boss_spell_table` WHERE `entry` IN (34461,34458);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34461, 66020, 0, 5000, 15000, 3),
(34461, 66019, 67930, 5000, 15000, 3),
(34461, 66017, 0, 5000, 15000, 3),
(34461, 66047, 67936, 5000, 15000, 3),
(34461, 66023, 0, 5000, 90000, 1),
(34461, 66021, 67939, 8000, 12000, 3),
(34461, 66018, 0, 10000, 90000, 6);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34458, 66020, 0, 5000, 15000, 3),
(34458, 66019, 67930, 5000, 15000, 3),
(34458, 66017, 0, 5000, 15000, 3),
(34458, 66047, 67936, 5000, 15000, 3),
(34458, 66023, 0, 5000, 90000, 1),
(34458, 66021, 67939, 8000, 12000, 3),
(34458, 66018, 0, 10000, 90000, 6);

-- Paladin
DELETE FROM `boss_spell_table` WHERE `entry` IN (34465,34445);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34465, 68757, 0, 25000, 40000, 6),
(34465, 66010, 0, 0, 3600001, 14),
(34465, 66116, 0, 5000, 15000, 14),
(34465, 66113, 68008, 5000, 10000, 14),
(34465, 66112, 68011, 5000, 15000, 14),
(34465, 66009, 0, 0, 3600001, 6),
(34465, 66114, 68015, 6000, 15000, 14),
(34465, 66613, 0, 5000, 15000, 4);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34445, 68757, 0, 25000, 40000, 6),
(34445, 66010, 0, 0, 3600001, 14),
(34445, 66116, 0, 5000, 15000, 14),
(34445, 66113, 68008, 5000, 10000, 14),
(34445, 66112, 68011, 5000, 15000, 14),
(34445, 66009, 0, 0, 3600001, 6),
(34445, 66114, 68015, 6000, 15000, 14),
(34445, 66613, 0, 5000, 15000, 4);

-- Boomkin (druid in moonkin form)
DELETE FROM `boss_spell_table` WHERE `entry` IN (34469,34459);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34469, 65859, 0, 5000, 40000, 4),
(34469, 65857, 0, 5000, 40000, 3),
(34469, 65863, 0, 10000, 40000, 4),
(34469, 65861, 0, 25000, 40000, 3),
(34469, 65855, 67942, 25000, 40000, 4),
(34469, 65856, 67945, 5000, 40000, 3),
(34469, 65854, 67948, 25000, 40000, 3),
(34469, 65860, 0, 5000, 120000, 1),
(34469, 65862, 67952, 25000, 40000, 3);

-- Warlock
DELETE FROM `boss_spell_table` WHERE `entry` IN (34474,34450);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34474, 65816, 68146, 15000, 30000, 1),
(34474, 65810, 68134, 15000, 30000, 4),
(34474, 65814, 68137, 15000, 30000, 4),
(34474, 65815, 0, 15000, 30000, 4),
(34474, 65809, 0, 4000, 15000, 4),
(34474, 65819, 68149, 15000, 30000, 3),
(34474, 65821, 68152, 3000, 10000, 3),
(34474, 65812, 68155, 2000, 10000, 4);
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34450, 65816, 68146, 15000, 30000, 1),
(34450, 65810, 68134, 15000, 30000, 4),
(34450, 65814, 68137, 15000, 30000, 4),
(34450, 65815, 0, 15000, 30000, 4),
(34450, 65809, 0, 4000, 15000, 4),
(34450, 65819, 68149, 15000, 30000, 3),
(34450, 65821, 68152, 3000, 10000, 3),
(34450, 65812, 68155, 2000, 10000, 4);

--  Arachnid Quarter
UPDATE `creature_template` SET `ScriptName`='mob_crypt_guard' WHERE `entry` IN (16573);
UPDATE `creature_template` SET `ScriptName`='mob_worshippers' WHERE `entry`='16506';
UPDATE `creature_template` SET `ScriptName`='mob_webwrap' WHERE `entry`='16486';
UPDATE `creature_template` SET `flags_extra` = '2' WHERE `entry` IN ('16486','30183');
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (16506);
-- Construct Quarter
UPDATE `creature_template` SET `ScriptName`='boss_grobbulus' WHERE `entry`='15931';
UPDATE `creature_template` SET `ScriptName`='npc_grobbulus_poison_cloud' WHERE `entry`='16363';
UPDATE `creature_template` SET `ScriptName`='boss_thaddius', `unit_flags`=0 WHERE `entry`='15928';
UPDATE `creature_template` SET `ScriptName`='mob_stalagg' WHERE `entry`='15929';
UPDATE `creature_template` SET `ScriptName`='mob_feugen' WHERE `entry`='15930';
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry` = '16027';
UPDATE `creature_template` SET `ScriptName`='mob_zombie_chows' WHERE `entry` = '16360';
-- Military Quarter
UPDATE `creature_template` SET `attackpower` = `attackpower`*40 WHERE `entry` IN (16061,29940); -- Instructor Razuvious
UPDATE `creature_template` SET `attackpower` = `attackpower`*12 WHERE `entry` IN (16803,29941); -- Death Knight Understudy
UPDATE `creature_template` SET `spell1`=61696, `spell2`=29060, `spell3`=29061 WHERE `entry` IN (16803);
UPDATE `creature_spawns` SET `MovementType`=0, `spawndist`=0 WHERE `id`=16211;
UPDATE `creature_template` SET `ScriptName`='boss_gothik' WHERE `entry`='16060';
UPDATE `creature_template` SET `flags_extra` = '2' WHERE `entry` IN (16697);
UPDATE `gameobject_spawns` SET `spawntimesecs`=-604800 WHERE `id` IN ('181366','193426');
-- Plague Quarter
UPDATE `creature_template` SET `ScriptName`='boss_heigan' WHERE `entry`='15936';
UPDATE `creature_template` SET `ScriptName`='npc_loatheb_spores' WHERE `entry`='16286';
-- Frostwyrm Lair
UPDATE `creature_template` SET `ScriptName`='boss_kelthuzad' WHERE `entry`='15990';
UPDATE `creature_template` SET `ScriptName`='mob_shadow_issure', `flags_extra` = '2', `faction_A`=16, `faction_H`=16 WHERE `entry`='16129';
-- Adds
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `entry` IN (16981, 16427, 16429);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (16981, 16427, 16429);
REPLACE INTO `creature_ai_scripts` VALUES
('1698101', '16981', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '54890', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('1698102', '16981', '0', '0', '100', '5', '10000', '20000', '10000', '20000', '11', '54891', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('1642701', '16427', '6', '0', '100', '3', '0', '0', '0', '0', '11', '28457', '6', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'Soldiers of the Frozen Wastes - Dark Blast'),
('1642702', '16427', '6', '0', '100', '5', '0', '0', '0', '0', '11', '55714', '6', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'Soldiers of the Frozen Wastes - Dark Blast'),
('1642901', '16429', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '28459', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soul Weaver - Wail of Souls'),
('1642902', '16429', '0', '0', '100', '5', '10000', '20000', '10000', '20000', '11', '55765', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soul Weaver - Wail of Souls');
UPDATE gameobject_spawns SET `state`='1' WHERE `map`=533 AND `id` IN (181225,181124);
DELETE FROM `spell_target_position` WHERE `id` IN (28444);
REPLACE INTO `spell_target_position` VALUES (28444, 533, 3005.776, -3483.284, 299.551, 1.552);
-- Portal at end
UPDATE `gameobject_template` SET `flags`=0 WHERE `entry` IN ('181575', '181576', '181577', '181578'); -- 16
DELETE FROM `gameobject_spawns` WHERE `id` in ('181575', '181576', '181577', '181578');
REPLACE INTO `gameobject_spawns` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(181575, 533, 3, 1, 3521.34, -3942.85, 308.106, 2.12884, 0, 0, 1, 0, -604800, 0, 1),
(181576, 533, 3, 1, 3548.85, -2958.15, 302.688, 3.16206, 0, 0, 1, 0, -604800, 0, 1),
(181577, 533, 3, 1, 2909, -4025.02, 273.475, 3.14159, 0, 0, 1, 0, -604800, 0, 1),
(181578, 533, 3, 1, 2492.16, -2921.66, 241.276, 5.52219, 0, 0, 1, 0, -604800, 0, 1);

INSERT IGNORE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) values('2','0','0','0','0','0','0','0','0','0','Erupt trigger','',NULL,'80','80','200','300','20','30','0','21','21','0','1','1','0','0','0','0','0','1','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','0','0','0','0','0','0','0','0','1','0','0','194','');
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15384, 0, 18783, 0, 11686, 0, 'Plague Fissure', '', '', 83, 83, 4120, 4120, 0, 0, 0, 21, 21, 0, 1.1, 1, 0, 0, 0, 0, 0, 1, 2000, 0, 1, 33555206, 0, 0, 0, 0, 0, 0, 0, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.35, 1, 0, 1, 0, 0, 130, 'npc_heigan_eruption');

-- Soul Weaver
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `minhealth` = 56700, `maxhealth` = 56700 WHERE `entry` = 16429;
-- Guardian of Icecrown 10 men
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `minhealth` = 2520000, `maxhealth` = 2520000, `dmg_multiplier` = 1.5, mechanic_immune_mask = 1073741823 WHERE entry = 16441;
-- Guardian of Icecrown 25 men
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `minhealth` = 6300000, `maxhealth` = 6300000, `armor` = 7369, dmg_multiplier = 1.8, mechanic_immune_mask = 1073741823 WHERE entry = 30057;
-- Shadow Fissure
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `flags_extra` = 130 WHERE `entry` = 16129;

UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 193426;

DELETE FROM `gameobject_spawns` WHERE `guid`=21640;
REPLACE INTO `gameobject_spawns` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`, `animprogress`,`state`) VALUES
(21640,193426, 533, 2, 1, 2511.51, -2943.93, 245.552, 5.48707, 0, 0, 0.387631, -0.921815, -604800, 100, 1);

DELETE FROM `spell_script_target` WHERE `entry`=55479;
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (55479, 1, 16803);               

DELETE FROM `npc_gossip` WHERE `npc_guid` IN (128352, 128353);
DELETE FROM `npc_text` WHERE `ID`=100;
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (128352, 100);
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (128353, 100);
REPLACE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES (100, 'Hi. In front of you is standing a Instructor Razuvious. To defeat this boss, you ll need to use Mind Control. If you don t have any priest in your group, press button below.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

UPDATE `creature_spawns` set `spawnMask` = 1 where `id` = 29912;

DELETE FROM `creature_template` WHERE (`entry`=16803);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (16803, 29941, 0, 0, 0, 0, 16539, 0, 16539, 0, 'Death Knight Understudy', '', '', 0, 82, 82, 404430, 404430, 0, 0, 49905, 21, 21, 0, 1, 1, 1, 488, 642, 0, 782, 7.5, 2000, 0, 1, 32832, 0, 0, 0, 0, 0, 0, 363, 521, 121, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61696, 29060, 29061, 0, 0, 0, 0, 'EventAI', 0, 3, 30, 2, 0, 22708, 0, 0, 0, 0, 0, 144, 1, 1728, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=29941);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (29941, 0, 0, 0, 0, 0, 16539, 0, 16539, 0, 'Death Knight Understudy (1)', '', '', 0, 82, 82, 404430, 404430, 0, 0, 49905, 14, 14, 0, 1.5, 1, 1, 488, 642, 0, 782, 13, 2000, 0, 1, 32832, 0, 0, 0, 0, 0, 0, 363, 521, 121, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 30, 2, 0, 22708, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=16061);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (16061, 29940, 0, 0, 0, 0, 16582, 0, 16582, 0, 'Instructor Razuvious', '', '', 0, 83, 83, 3346800, 3346800, 0, 0, 10673, 21, 21, 0, 1.6, 1, 3, 1000, 1200, 0, 800, 70, 3500, 0, 1, 32832, 0, 0, 0, 0, 0, 0, 371, 535, 135, 6, 76, 16061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1253602, 1532181, '', 0, 3, 240, 2, 0, 0, 0, 0, 0, 0, 0, 167, 1, 1718, 617299803, 1, 'boss_razuvious');

DELETE FROM `creature_template` WHERE (`entry`=29940);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (29940, 0, 0, 0, 0, 0, 16582, 0, 16582, 0, 'Instructor Razuvious (1)', '', '', 0, 83, 83, 10110125, 10110125, 0, 0, 10673, 21, 21, 0, 2, 1, 3, 1000, 1200, 0, 800, 70, 3500, 0, 1, 32832, 0, 0, 0, 0, 0, 0, 371, 535, 135, 6, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2507204, 3064362, '', 0, 3, 725, 2, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 617299803, 1, '');

DELETE FROM `creature_template` WHERE (`entry`=29912);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `power_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (29912, 0, 0, 0, 0, 0, 26620, 0, 26620, 0, 'Obedience Crystal', '', 'Interact', 0, 80, 80, 12600, 12600, 0, 0, 9729, 35, 35, 1, 1, 1, 0, 422, 586, 0, 642, 1, 2000, 0, 1, 64, 0, 0, 0, 0, 0, 0, 345, 509, 103, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_obedience_crystal');

UPDATE `creature_spawns` SET `MovementType` = 2 WHERE `guid` = 128312;
DELETE FROM `creature_movement` WHERE id = 128312;
REPLACE INTO `creature_movement` (`id`,`POINT`,`position_x`,`position_y`,`position_z`) VALUES
(128312,1,2777.138672,-3110.880859,267.684509),
(128312,2,2781.611328,-3106.903076,267.684509),
(128312,3,2784.291748,-3098.885254,267.684509),
(128312,4,2781.093018,-3090.532959,267.684509),
(128312,5,2773.239014,-3085.609619,267.684509),
(128312,6,2765.775146,-3086.021240,267.684509),
(128312,7,2758.100586,-3091.694824,267.684509),
(128312,8,2755.643555,-3097.803467,267.684509),
(128312,9,2756.769775,-3104.073975,267.684509),
(128312,10,2760.447021,-3109.536621,267.684509),
(128312,11,2766.769531,-3112.940918,267.684509);

-- set ai for riggle
UPDATE `creature_template` SET `ScriptName`='npc_riggle_bassbait' WHERE entry=15077;
-- updated start time for event Fishing Extravaganza
UPDATE `game_event` SET `start_time`='2009-06-14 14:00:00', `occurence`=10080, `length`=120 where entry=15;
-- Create Jang
DELETE FROM `creature_spawns` WHERE `id`=15078;
REPLACE INTO `creature_spawns` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(954687, 15078, 0, 1, 1, 0, 1711, -14438, 473.661, 15.3137, 3.65362, 25, 0, 0, 3200, 0, 0, 0);
-- Create Fishbot 5000
DELETE FROM `creature_spawns` WHERE `id`=15079;
REPLACE INTO `creature_spawns` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(954688, 15079, 0, 1, 1, 0, 0, -14440, 477.446, 15.25, 3.71802, 25, 0, 0, 2600, 0, 0, 0);
-- Create Riggle Bassbait
DELETE FROM `creature_spawns` WHERE `id`=15077;
REPLACE INTO `creature_spawns` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(954689, 15077, 0, 1, 1, 0, 13, -14439.3, 475.42, 15.892, 3.68503, 25, 0, 0, 3700, 0, 0, 0);
-- Create Soapbox gameobject
DELETE FROM `gameobject_spawns` WHERE `id`=180403;
REPLACE INTO `gameobject_spawns` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(954391, 180403, 0, 1, 1, -14439.3, 475.42, 15.2791, 3.68503, 0, 0, 0.963311, -0.268388, 25, 0, 1);

-- new event - Fishing Extravaganza Questgivers
-- Remove NPC and GO from any other event.
DELETE FROM `game_event_creature` WHERE `guid` IN (954687,954688,954689);
DELETE FROM `game_event_gameobject`WHERE `guid`=954391;
-- Create Event
DELETE FROM `game_event` WHERE `entry`=35;
REPLACE INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES (35, '2009-03-29 14:00:00', '2020-12-31 00:00:00', 10080, 180, 0, 'Fishing Extravaganza Questgivers');
-- Add NPCs to Event
DELETE FROM `game_event_creature` WHERE abs(`event`) = 35;
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES (954687,35), (954688,35), (954689,35);
-- Add Soapbox to Event
DELETE FROM `game_event_gameobject` WHERE abs(`event`) = 35;
REPLACE INTO `game_event_gameobject` (`guid`, `event`) VALUES (954391,35);
-- Remove Quests from normal DB:
DELETE FROM `creature_questrelation` WHERE quest IN (8193,8194,8225,8224,8221);
-- Add Quests to Event
-- Riggle Bassbait Quest: Master Angler
-- Jang Quest: Apprentice Angler
-- Fishbot 5000 Quest: Rare Fish - Brownell's Blue Striped Racer
-- Fishbot 5000 Quest: Rare Fish - Dezian Queenfish
-- Fishbot 5000 Quest: Rare Fish - Keefer's Angelfish
DELETE FROM `game_event_creature_quest` WHERE `event` IN (15,35);
REPLACE INTO `game_event_creature_quest` (`id`,`quest`,`event`) VALUES (15077,8193,35), (15078,8194,35), (15079,8225,35), (15079,8224,35), (15079,8221,35);

-- add ai text for riggle
DELETE FROM `script_texts` WHERE `entry` IN (-1510356,-1510357,-1510358);
REPLACE INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(-1510356, 'Let the Fishing Tournament BEGIN!', 0, 6, 0, 0, 'riggle SAY_START'),
(-1510357, 'We have a winner! $N is the Master Angler!', 0, 6, 0, 0, 'riggle SAY_WINNER'),
(-1510358, 'And the Tastyfish have gone for the week! I will remain for another hour to allow you to turn in your fish!', 0, 6, 0, 0, 'riggle SAY_END');

-- Ruby sanctum
UPDATE `instance_template` SET `script`='instance_ruby_sanctum' WHERE `map`=724;
-- Halion
UPDATE `creature_template` SET `ScriptName`='boss_halion_real', `AIName` ='' WHERE `entry`=39863;
UPDATE `creature_template` SET `ScriptName`='boss_halion_twilight', `AIName` ='' WHERE `entry`=40142;
UPDATE `creature_template` SET `ScriptName`='mob_halion_meteor', `AIName` ='' WHERE `entry`=40029;
UPDATE `creature_template` SET `ScriptName`='mob_halion_flame', `AIName` ='' WHERE `entry` IN (36673,36674,36675,36676);
-- Baltharus
UPDATE `creature_template` SET `ScriptName`='boss_baltharus', `AIName` ='' WHERE `entry`=39751;
UPDATE `creature_template` SET `ScriptName`='mob_baltharus_clone', `AIName` ='' WHERE `entry`=39899;
-- Zarithian
UPDATE `creature_template` SET `ScriptName`='boss_zarithian', `AIName` ='' WHERE `entry`=39746;
UPDATE `creature_template` SET `ScriptName`='mob_flamecaller_ruby', `AIName` ='' WHERE `entry`=39814;
-- Ragefire
UPDATE `creature_template` SET `ScriptName`='boss_ragefire', `AIName` ='' WHERE `entry`=39747;

-- sound / text
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1666404 AND -1666000;

-- xerestrasza
REPLACE INTO `script_texts` (`entry`, `content_default`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
('-1666000','Help! I am trapped within this tree! I require aid!','Спасите! Я под этим деревом. Мне нужна помощь!','17490','1','0','0','SAY_XERESTRASZA_YELL_1'),
('-1666001','Thank you! I could have not held out for much longer. A terrible thing has happened here.','Спасибо! Без вас я бы долго не продержалась... Здесь произошли страшные события...','17491','1','0','0','SAY_XERESTRASZA_YELL_2'),
('-1666002','We believed that the Sanctum was well fortified, but we were not prepareted for the nature of this assault.','Святилище считалось неприступным, но до сих пор оно не подвергалось такому штурму...','17492','0','0','0','SAY_XERESTRASZA_SAY_1'),
('-1666003','The Black Dragonkin materialized from thin air, and set upon us before we could react.','','17493','0','0','0','SAY_XERESTRASZA_SAY_2'),
('-1666004','We did not stand a chance. As my brethren perished around me, I managed to retreat hear and bar the entrance.','Силы были неравны, мои братья гибли один за другим. А я спряталась здесь и запечатала вход.','17494','0','0','0','SAY_XERESTRASZA_SAY_3'),
('-1666005','They slaughtered us with cold efficiency, but the true focus of their interest seemed to be the eggs kept here in the sanctum.','Нас убивали с расчетливой жестокостью, но основной целью врага была кладка яиц в святилище.','17495','0','0','0','SAY_XERESTRASZA_SAY_4'),
('-1666006','The commander of the forces on the ground here is a cruel brute named Zarithrian. But I fear there are greater powers at work.',' Атакой руководил кровожадный Заритриан, но, боюсь, тут замешано и более могущественное зло.','17496','0','0','0','SAY_XERESTRASZA_SAY_5'),
('-1666007','In their initial assault I caught a glimpse of their true leader, a fearsome full-grown Twilight Dragon.','В самом начале я ощутила присутствие их настоящего лидера - огромного сумеречного дракона.','17497','0','0','0','SAY_XERESTRASZA_SAY_6'),
('-1666008','I know not the extent of their plans heroes, but I know this: they cannot be allowed to succeed!','В самом начале я ощутила присутствие их настоящего лидера - огромного сумеречного дракона.','17498','0','0','0','SAY_XERESTRASZA_SAY_7'),

-- Halion
('-1666100','Meddlesome insects, you\'re too late! The Ruby Sanctum is lost.','Назойливая мошкара! Вы опоздали. Рубиновое святилище пало!','17499','1','0','0','SAY_HALION_SPAWN'),
('-1666101','Your world teeters on the brink of annihilation. You will all bear witness to the coming of a new age of destruction!','Этот мир вот-вот соскользнет в бездну. Вам выпала честь узреть начало эры РАЗРУШЕНИЯ!','17500','1','0','0','SAY_HALION_AGGRO'),
('-1666102','Another hero falls.','Сколько еще таких героев?','17501','1','0','0','SAY_HALION_SLAY_1'),
('-1666103','Ha Ha Ha!','','17502','1','0','0','SAY_HALION_SLAY_2'),
('-1666104','Relish this victory mortals, for it will be your last. This world will burn with the Master\'s return!','Это ваша последняя победа. Насладитесь сполна ее вкусом. Ибо когда вернется мой господин, этот мир сгинет в огне!','17503','1','0','0','SAY_HALION_DEATH'),
('-1666105','Not good enough!','','17504','1','0','0','SAY_HALION_BERSERK'),
('-1666106','The heavens burn!','Небеса в огне!','17505','1','0','0','SAY_HALION_SPECIAL_1'),
('-1666107','Beware the shadow!','','17506','1','0','0','SAY_HALION_SPECIAL_2'),
('-1666108','You will find only suffering within the realm of Twilight. Enter if you dare.','','17507','1','0','0','SAY_HALION_PHASE_2'),
('-1666109','I am the light AND the darkness! Cower mortals before the Herald of Deathwing!','Я есть свет и я есть тьма! Трепещите, ничтожные, перед посланником Смертокрыла!','17508','1','0','0','SAY_HALION_PHASE_3'),

-- Zarthrian
('-1666200','Alexstrasza has chosen capable allies. A pity that I must end you!','Алекстраза выбрала достойных союзников... Жаль, что придется ПРИКОНЧИТЬ ВАС!','17512','1','0','0','SAY_ZARITHRIAN_AGGRO'),
('-1666201','You thought you stood a chance?','','17513','1','0','0','SAY_ZARITHRIAN_SLAY_1'),
('-1666202','It\'s for the best.','','17514','1','0','0','SAY_ZARITHRIAN_SLAY_2'),
('-1666203','Halion! I\'m...aah!','ХАЛИОН! Я...','17515','1','0','0','SAY_ZARITHRIAN_DEATH'),
('-1666204','Turn them to ash, minions!','Слуги! Обратите их в пепел!','17516','1','0','0','SAY_ZARITHRIAN_SPECIAL_1'),

-- baltharus
('-1666300','Ah, the entertainment has arrived...','А-а-а, цирк приехал.','17520','1','0','0','SAY_BALTHARUS_AGGRO'),
('-1666301','Baltharus leaves no survivors!','','17521','1','0','0','SAY_BALTHARUS_SLAY_1'),
('-1666302','This world has enough heroes!','В мире хватает героев и без тебя...','17522','1','0','0','SAY_BALTHARUS_SLAY_2'),
('-1666303','I...didn\'t see that coming...','Как… это могло произойти?..','17523','1','0','0','SAY_BALTHARUS_DEATH'),
('-1666304','Twice the pain and half the fun!','Вдвое сильнее страдание.','17524','1','0','0','SAY_BALTHARUS_SPECIAL_1'),
('-1666305','Your power wanes, ancient one! Soon, you will join your friends!','','17525','1','0','0','SAY_BALTHARUS_YELL'),

-- saviana
('-1666400','You will suffer for this intrusion...','Ваш-ш-ши муки с-cтанут платой за это вторжение!','17528','1','0','0','SAY_SAVIANA_AGGRO'),
('-1666401','As it should be!','','17529','1','0','0','SAY_SAVIANA_SLAY_1'),
('-1666402','Halion will be pleased...','','17530','1','0','0','SAY_SAVIANA_SLAY_2'),
('-1666403','<screaming>','','17531','1','0','0','SAY_SAVIANA_DEATH'),
('-1666404','Burn in the master\'s flame!','Горите в огне хозяина!','17532','1','0','0','SAY_SAVIANA_SPECIAL_1');

-- Ruby sanctum spelltable
-- Boss Halion
DELETE FROM `boss_spell_table` WHERE `entry` = 39863;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(39863, 26663, 0, 0, 0, 600000, 0, 0, 0, 600000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 74808, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 74807, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 74531, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 75063, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 74562, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(39863, 74792, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(39863, 77844, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(39863, 74826, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 77827, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 74828, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 77829, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 74830, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 77831, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 74832, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 77833, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 77834, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 74835, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 77836, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 75877, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 74637, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 74641, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 74648, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 74718, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39863, 78243, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0);
-- Meteor
DELETE FROM `boss_spell_table` WHERE `entry` = 40029;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(40029, 36673, 0, 0, 0, 20000, 0, 0, 0, 20000, 0, 0, 0, 10, 0, 0, 9, 0, 0),
(40029, 36674, 0, 0, 0, 20000, 0, 0, 0, 20000, 0, 0, 0, 10, 0, 0, 9, 0, 0),
(40029, 36675, 0, 0, 0, 20000, 0, 0, 0, 20000, 0, 0, 0, 10, 0, 0, 9, 0, 0),
(40029, 36676, 0, 0, 0, 20000, 0, 0, 0, 20000, 0, 0, 0, 10, 0, 0, 9, 0, 0);

-- Twilight Halion
DELETE FROM `boss_spell_table` WHERE `entry` = 40142;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(40142, 78243, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0);

-- Boss Baltharus
DELETE FROM `boss_spell_table` WHERE `entry` = 39751;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(39751, 75125, 0, 0, 0, 22000, 0, 0, 0, 22000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39751, 74502, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 15, 0, 0, 1, 0, 0),
(39751, 74505, 0, 0, 0, 22000, 0, 0, 0, 22000, 0, 0, 0, 15, 0, 0, 1, 0, 0),
(39751, 74509, 0, 0, 0, 10000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39751, 74511, 0, 0, 0, 20000, 0, 0, 0, 45000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39751, 78243, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0);

-- Boss Zarithian
DELETE FROM `boss_spell_table` WHERE `entry` = 39746;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(39746, 74367, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 3, 0, 0),
(39746, 74384, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 3, 0, 0),
(39746, 74395, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 3, 0, 0),
(39746, 74393, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 3, 0, 0),
(39746, 39814, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 9, 0, 0),
(39746, 78243, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0);

-- Boss Ragefire
DELETE FROM `boss_spell_table` WHERE `entry` = 39747;
REPLACE INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(39747, 78722, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39747, 74404, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(39747, 74453, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
(39747, 74452, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 6, 0, 0),
(39747, 78243, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0);

UPDATE creature_template SET ScriptName='mob_fire_cyclone' WHERE entry = 30648;
UPDATE creature_template SET ScriptName='mob_flame_tsunami' WHERE entry = 30616;

-- CUSTOM hack to different hard mode loot
REPLACE INTO creature_template (entry, difficulty_entry_1, modelid_A, modelid_H, faction_A, faction_H, NAME, subname, minhealth, maxhealth, rank, lootid) VALUES
(288601, 313111, 27035, 27035, 103, 103, 'Sartharion', 'The Onyx Guardian', 1, 1, 3, 288601),
(288602, 313112, 27035, 27035, 103, 103,  'Sartharion', 'The Onyx Guardian', 1, 1, 3, 288602),
(288603, 313113, 27035, 27035, 103, 103,  'Sartharion', 'The Onyx Guardian', 1, 1, 3, 288603),
(313111, 0, 27035, 27035, 103, 103,  'Sartharion', 'The Onyx Guardian', 1, 1, 3, 313111),
(313112, 0, 27035, 27035, 103, 103,  'Sartharion', 'The Onyx Guardian', 1, 1, 3, 313112),
(313113, 0, 27035, 27035, 103, 103,  'Sartharion', 'The Onyx Guardian', 1, 1, 3, 313113);

-- boss loot
DELETE FROM creature_loot_template WHERE entry IN (30452, 30451, 30449, 28860, 288601, 288602, 288603, 31534, 31520, 31535, 31311, 313111, 313112, 313113);
-- Tenebron, Shadron, Vesperon
UPDATE creature_template SET lootid=30449 WHERE entry IN (30452, 30451, 30449, 31534, 31520, 31535);
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, lootcondition, condition_value1, condition_value2) VALUES
(30449, 45624, 100, 0, 1, 1, 0, 0, 0);
-- Sartharion
-- references
DELETE FROM reference_loot_template WHERE entry IN (615000, 615001, 615002, 615010, 615011, 615012);
REPLACE INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, lootcondition, condition_value1, condition_value2) VALUES
-- normal, no drakes
(615000, 40426, 0, 2, 1, 1, 0, 0, 0),
(615000, 40427, 0, 2, 1, 1, 0, 0, 0),
(615000, 40428, 0, 2, 1, 1, 0, 0, 0),
(615000, 40429, 0, 2, 1, 1, 0, 0, 0),
(615000, 40430, 0, 2, 1, 1, 0, 0, 0),
(615000, 40613, 0, 1, 1, 1, 0, 0, 0),
(615000, 40614, 0, 1, 1, 1, 0, 0, 0),
(615000, 40615, 0, 1, 1, 1, 0, 0, 0),
(615000, 43345, 100, 0, 1, 1, 0, 0, 0),
(615000, 43347, 100, 0, 1, 1, 0, 0, 0),
-- normal, 1 drake
(615001, 43992, 0, 1, 1, 1, 0, 0, 0),
(615001, 43988, 0, 1, 1, 1, 0, 0, 0),
(615001, 43990, 0, 1, 1, 1, 0, 0, 0),
(615001, 43989, 0, 1, 1, 1, 0, 0, 0),
(615001, 43991, 0, 1, 1, 1, 0, 0, 0),
-- normal, 2 drakes
(615002, 43995, 0, 1, 1, 1, 0, 0, 0),
(615002, 43998, 0, 1, 1, 1, 0, 0, 0),
(615002, 43994, 0, 1, 1, 1, 0, 0, 0),
(615002, 43996, 0, 1, 1, 1, 0, 0, 0),
(615002, 43993, 0, 1, 1, 1, 0, 0, 0),
-- heroic, no drakes
(615010, 40431, 0, 2, 1, 1, 0, 0, 0),
(615010, 40432, 0, 3, 1, 1, 0, 0, 0),
(615010, 40433, 0, 3, 1, 1, 0, 0, 0),
(615010, 40437, 0, 2, 1, 1, 0, 0, 0),
(615010, 40438, 0, 3, 1, 1, 0, 0, 0),
(615010, 40439, 0, 3, 1, 1, 0, 0, 0),
(615010, 40446, 0, 2, 1, 1, 0, 0, 0),
(615010, 40451, 0, 2, 1, 1, 0, 0, 0),
(615010, 40453, 0, 3, 1, 1, 0, 0, 0),
(615010, 40455, 0, 2, 1, 1, 0, 0, 0),
(615010, 40628, 0, 1, 1, 1, 0, 0, 0),
(615010, 40629, 0, 1, 1, 1, 0, 0, 0),
(615010, 40630, 0, 1, 1, 1, 0, 0, 0),
(615010, 43345, 100, 0, 1, 1, 0, 0, 0),
(615010, 43346, 100, 0, 1, 1, 0, 0, 0),
-- heroic, 1 drake
(615011, 44003, 0, 1, 1, 1, 0, 0, 0),
(615011, 44002, 0, 1, 1, 1, 0, 0, 0),
(615011, 44000, 0, 1, 1, 1, 0, 0, 0),
(615011, 44004, 0, 1, 1, 1, 0, 0, 0),
-- heroic, 2 drakes
(615012, 44007, 0, 1, 1, 1, 0, 0, 0),
(615012, 44006, 0, 1, 1, 1, 0, 0, 0),
(615012, 44005, 0, 1, 1, 1, 0, 0, 0),
(615012, 44008, 0, 1, 1, 1, 0, 0, 0),
(615012, 44011, 0, 1, 1, 1, 0, 0, 0);
UPDATE creature_template SET lootid=entry WHERE entry IN (28860, 288601, 288602, 288603, 31311, 313111, 313112, 313113);
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, lootcondition, condition_value1, condition_value2) VALUES
-- normal, no drakes
(28860, 615000, 100, 0, -615000, 1, 0, 0, 0),
(28860, 45624, 100, 0, 1, 1, 0, 0, 0),
-- normal, 1 drake
(288601, 615000, 100, 0, -615000, 1, 0, 0, 0),
(288601, 615001, 100, 0, -615001, 1, 0, 0, 0),
(288601, 45624, 100, 0, 2, 2, 0, 0, 0),
-- normal, 2 drakes
(288602, 615000, 100, 0, -615000, 1, 0, 0, 0),
(288602, 615001, 100, 0, -615001, 1, 0, 0, 0),
(288602, 615002, 100, 0, -615002, 1, 0, 0, 0),
(288602, 45624, 100, 0, 3, 3, 0, 0, 0),
-- normal, 3 drakes
(288603, 615000, 100, 0, -615000, 1, 0, 0, 0),
(288603, 615001, 100, 0, -615001, 1, 0, 0, 0),
(288603, 615002, 100, 0, -615002, 1, 0, 0, 0),
(288603, 43986, 100, 0, 1, 1, 0, 0, 0),
(288603, 45624, 100, 0, 4, 4, 0, 0, 0),
-- heroic, no drakes
(31311, 615010, 100, 0, -615010, 1, 0, 0, 0),
(31311, 45624, 100, 0, 1, 1, 0, 0, 0),
-- heroic, 1 drake
(313111, 615010, 100, 0, -615010, 1, 0, 0, 0),
(313111, 615011, 100, 0, -615011, 1, 0, 0, 0),
(313111, 45624, 100, 0, 2, 2, 0, 0, 0),
-- heroic, 2 drakes
(313112, 615010, 100, 0, -615010, 1, 0, 0, 0),
(313112, 615011, 100, 0, -615011, 1, 0, 0, 0),
(313112, 615012, 100, 0, -615012, 1, 0, 0, 0),
(313112, 45624, 100, 0, 3, 3, 0, 0, 0),
-- heroic, 3 drakes
(313113, 615010, 100, 0, -615010, 1, 0, 0, 0),
(313113, 615011, 100, 0, -615011, 1, 0, 0, 0),
(313113, 615012, 100, 0, -615012, 1, 0, 0, 0),
(313113, 43954, 100, 0, 1, 1, 0, 0, 0),
(313113, 45624, 100, 0, 4, 4, 0, 0, 0);

-- Snakes trap
UPDATE `creature_template` SET `ScriptName`='npc_snake_trap_serpents' WHERE `entry` IN (19921, 19833);
-- Mirror Immage
UPDATE `creature_template` SET `speed_walk` = 2.5, `modelid_A` = 11686, `modelid_H` = 11686, `minlevel` = 80, `maxlevel` = 80, `AIName` = '', `ScriptName`='npc_mirror_image' WHERE `entry` = 31216;
-- Rune blade
UPDATE `creature_template` SET  `modelid_A` = 11686, `modelid_H` = 11686,`AIName` = '', `ScriptName`='npc_runeblade' WHERE `entry` = 27893;
-- UPDATE `creature_template` SET  `modelid_A` = 11686, `modelid_H` = 11686,`AIName` = '', `ScriptName`='' WHERE `entry` = 27893;

-- Azjol-Nerub from MaxXx2021
UPDATE creature_template SET ScriptName = 'npc_watcher_gashra' WHERE entry = 28730;
UPDATE creature_template SET ScriptName = 'npc_watcher_narjil' WHERE entry = 28729;
UPDATE creature_template SET ScriptName = 'boss_krikthir' WHERE entry = 28684;
UPDATE creature_template SET ScriptName = 'npc_watcher_silthik' WHERE entry = 28731;
UPDATE creature_template SET ScriptName = 'boss_hadronox' WHERE entry = 28921;
UPDATE creature_template SET ScriptName = 'npc_anub_ar_warrior' WHERE entry = 28732;
UPDATE creature_template SET ScriptName = 'npc_anub_ar_skirmisher' WHERE entry = 28734;
UPDATE creature_template SET ScriptName = 'npc_anub_ar_shadowcaster' WHERE entry = 28733;
UPDATE creature_template SET ScriptName = 'npc_skittering_infector' WHERE entry = 28736;

ALTER TABLE `creature_template`
  CHANGE COLUMN `power_mod` `unk17` FLOAT NOT NULL DEFAULT '1',
  DROP COLUMN `PowerType`;

DELETE FROM `command` WHERE `name` = 'loadscripts';
DELETE FROM `command` WHERE `name` = 'reload creature_template';
DELETE FROM `command` WHERE `name` = 'reload gameobject_template';
DELETE FROM `command` WHERE `name` = 'reload item_template';
DELETE FROM `command` WHERE (`name`='character delete');
