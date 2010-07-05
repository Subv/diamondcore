DELETE FROM strings WHERE entry BETWEEN 1149 AND 1151;

INSERT INTO strings VALUES
(1149,' (Pool %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1150,' (Event %i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1151,' (Pool %u Event %i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

DELETE FROM strings WHERE entry in (515, 517, 1110, 1111, 1137);

INSERT INTO strings VALUES
(515,'%d%s - |cffffffff|Hcreature:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), -- LANG_CREATURE_LIST_CHAT (.list creature)
(517,'%d%s, Entry %d - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), -- LANG_GO_MIXED_LIST_CHAT (.gobject near)
(1110,'%d%s - %s X:%f Y:%f Z:%f MapId:%d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), -- LANG_CREATURE_LIST_CONSOLE
(1111,'%d%s - %s X:%f Y:%f Z:%f MapId:%d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), -- LANG_GO_LIST_CONSOLE
(1137,'%d%s - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL); -- LANG_GO_LIST_CHAT (.list object)