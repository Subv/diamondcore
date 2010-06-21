

DELETE FROM command WHERE name IN('go');

INSERT INTO command (name, security, help) VALUES
('go',1,'Syntax: .go  [$playername|pointlink|#x #y #z [#mapid]]\r\nTeleport your character to point with coordinates of player $playername, or coordinates of one from shift-link types: player, tele, taxinode, creature, gameobject, or explicit #x #y #z #mapid coordinates.');
