

ALTER TABLE saved_variables 
ADD cleaning_flags int(11) unsigned NOT NULL default '0' AFTER NextWeeklyQuestResetTime;

UPDATE saved_variables SET cleaning_flags = 0xF;
