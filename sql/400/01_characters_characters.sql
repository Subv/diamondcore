ALTER TABLE `characters`
    ADD COLUMN `power10` int(10) UNSIGNED DEFAULT '0' NOT NULL AFTER `power9`;

ALTER TABLE `character_stats`
    ADD COLUMN `maxpower10` int(10) UNSIGNED DEFAULT '0' NOT NULL AFTER`maxpower9`;
