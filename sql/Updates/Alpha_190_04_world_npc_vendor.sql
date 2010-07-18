UPDATE npc_vendor
  SET ExtendedCost = abs(ExtendedCost) WHERE ExtendedCost < 0;

ALTER TABLE npc_vendor
  CHANGE COLUMN `ExtendedCost` `ExtendedCost` mediumint(8) unsigned NOT NULL default '0';
