ALTER TABLE groups
  
CHANGE COLUMN isRaid groupType tinyint(1) unsigned NOT NULL;


/* now fixed bug in past can save raids as 1 (BG group) */

UPDATE groups
  SET groupType = 2 WHERE groupType = 1;
