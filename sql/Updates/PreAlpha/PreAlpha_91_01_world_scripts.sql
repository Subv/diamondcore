UPDATE creature_template SET modelid_A = 16925, modelid_H = 16925, scale = 2, flags_extra = 0 WHERE entry IN (28525,28542,28543,28544);

UPDATE quest_template SET ReqSpellCast1 = 51859, ReqSpellCast2 = 51859, ReqSpellCast3 = 51859, ReqSpellCast4 = 51859 WHERE entry = 12641;

REPLACE INTO creature_template_addon (`entry`,`moveflags`,`auras`) VALUES (28511,33562624,''),(28525,0,'64328 0'),(28542,0,'64328 0'),(28543,0,'64328 0'),(28544,0,'64328 0');

REPLACE INTO spell_script_target (`entry`,`type`,`targetEntry`) VALUES (51859,1,28525),(51859,1,28542),(51859,1,28543),(51859,1,28544);

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature_spawns WHERE id IN (28511,28525,28542,28543,28544));

UPDATE creature_template SET modelid_H = 26320, modelid_H2 = 26320, ScriptName = 'npc_eye_of_acherus' WHERE entry = 28511;
UPDATE gameobject_template SET ScriptName = 'go_eye_of_acherus' WHERE entry = 191609;
