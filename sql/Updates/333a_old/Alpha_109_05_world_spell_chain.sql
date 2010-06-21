DELETE FROM  `spell_chain` WHERE `spell_id` IN (61024,61316);

INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES

/*Dalaran Intellect*/

(61024,0,61024,1,27126),

/*Dalaran Brilliance*/

(61316,0,61316,1,27127);
