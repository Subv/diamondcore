

-- 21084 replace of 20154 at learn judgements
DELETE FROM spell_chain WHERE first_spell = 20154;
INSERT INTO spell_chain VALUES
(20154,0,20154,1,0),
(21084,20154,20154,2,0);
