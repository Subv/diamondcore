/* Copyright (C) 2006 - 2010 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 * This program is free software licensed under GPL version 2
 * Please see the included DOCS/LICENSE.TXT for more information */

#ifndef SC_SCRIPTMGR_H
#define SC_SCRIPTMGR_H

#include "Common.h"
#include "DBCStructure.h"
#include "ObjectMgr.h"
#include "Database/DatabaseEnv.h"
#include "Policies/Singleton.h"

class Player;
class Creature;
class CreatureAI;
class InstanceData;
class Quest;
class Item;
class GameObject;
class SpellCastTargets;
class Map;
class Unit;
class WorldObject;
class Aura;

#define MAX_SCRIPTS         5000                            //72 bytes each (approx 351kb)
#define VISIBLE_RANGE       (166.0f)                        //MAX visible range (size of grid)
#define DEFAULT_TEXT        "<Scripts Text Entry Missing!>"

struct Script
{
    Script() :
        pGossipHello(NULL), pGOGossipHello(NULL), pGossipSelect(NULL), pGOGossipSelect(NULL),
        pGossipSelectWithCode(NULL), pGOGossipSelectWithCode(NULL), pGOSelect(NULL), pGOSelectWithCode(NULL),
        pQuestSelect(NULL), pQuestComplete(NULL), pNPCDialogStatus(NULL), pGODialogStatus(NULL),
        pChooseReward(NULL), pItemHello(NULL), pGOHello(NULL), pAreaTrigger(NULL), pItemQuestAccept(NULL),
        pQuestAccept(NULL), pGOQuestAccept(NULL), pGOChooseReward(NULL), pItemUse(NULL),
        pEffectDummyCreature(NULL), pEffectDummyGameObj(NULL), pEffectDummyItem(NULL), pEffectAuraDummy(NULL),
        GetAI(NULL), GetInstanceData(NULL)
    {}

    std::string Name;

    //Methods to be scripted
    bool (*pGossipHello             )(Player*, Creature*);
    bool (*pGOGossipHello           )(Player*, GameObject*);
    bool (*pQuestAccept             )(Player*, Creature*, const Quest*);
    bool (*pGossipSelect            )(Player*, Creature*, uint32, uint32);
    bool (*pGOGossipSelect          )(Player*, GameObject*, uint32, uint32);
    bool (*pGossipSelectWithCode    )(Player*, Creature*, uint32, uint32, const char*);
    bool (*pGOGossipSelectWithCode  )(Player*, GameObject*, uint32, uint32, const char*);
	bool (*pGOSelect)(Player*, GameObject*, uint32 , uint32);
    bool (*pGOSelectWithCode)(Player*, GameObject*, uint32 , uint32 , const char*);
    bool (*pQuestSelect             )(Player*, Creature*, const Quest*);
    bool (*pQuestComplete           )(Player*, Creature*, const Quest*);
    uint32 (*pNPCDialogStatus       )(Player*, Creature*);
    uint32 (*pGODialogStatus        )(Player*, GameObject*);
    bool (*pChooseReward            )(Player*, Creature*, const Quest*, uint32);
    bool (*pItemHello               )(Player*, Item*, const Quest*);
    bool (*pGOHello                 )(Player*, GameObject*);
    bool (*pAreaTrigger             )(Player*, AreaTriggerEntry*);
    bool (*pItemQuestAccept         )(Player*, Item*, const Quest*);
    bool (*pGOQuestAccept           )(Player*, GameObject*, const Quest*);
    bool (*pGOChooseReward          )(Player*, GameObject*, const Quest*, uint32);
    bool (*pItemUse                 )(Player*, Item*, SpellCastTargets const&);
    bool (*pEffectDummyCreature     )(Unit*, uint32, SpellEffectIndex, Creature*);
    bool (*pEffectDummyGameObj      )(Unit*, uint32, SpellEffectIndex, GameObject*);
    bool (*pEffectDummyItem         )(Unit*, uint32, SpellEffectIndex, Item*);
    bool (*pEffectAuraDummy         )(const Aura*, bool);

    CreatureAI* (*GetAI)(Creature*);
    InstanceData* (*GetInstanceData)(Map*);

    void RegisterSelf();
};

class ScriptMgr
{
    public:
        ScriptMgr();
        ~ScriptMgr();

		void ScriptsInit();
        void LoadDatabase();

        bool GossipHello(Player *player, Creature *_Creature);
        bool GOGossipHello(Player *player, GameObject *_GO);
        bool QuestAccept(Player *player, Creature *_Creature, Quest const *);
        bool GossipSelect(Player *player, Creature *_Creature, uint32 sender, uint32 action);
        bool GOGossipSelect(Player *player, GameObject *_GO, uint32 sender, uint32 action);
        bool GossipSelectWithCode( Player *player, Creature *_Creature, uint32 sender, uint32 action, const char* sCode );
        bool GOGossipSelectWithCode( Player *player, GameObject *_GO, uint32 sender, uint32 action, const char* sCode );
        bool GOSelect(Player* pPlayer, GameObject* pGO, uint32 uiSender, uint32 uiAction);
        bool GOSelectWithCode(Player* pPlayer, GameObject* pGO, uint32 uiSender, uint32 uiAction, const char* sCode);
        bool QuestSelect( Player *player, Creature *_Creature, Quest const* );
        bool QuestComplete(Player *player, Creature *_Creature, Quest const*);
        uint32 NPCDialogStatus( Player *player, Creature *_Creature);
        uint32 GODialogStatus( Player *player, GameObject * _GO);
        bool ChooseReward( Player *player, Creature *_Creature, Quest const*, uint32 opt );
        bool ItemHello( Player *player, Item *, Quest const*);
        bool GOHello( Player *player, GameObject * );
        bool AreaTrigger( Player *player, AreaTriggerEntry const* );
        bool ItemQuestAccept(Player *player, Item *, Quest const*);
        bool GOQuestAccept(Player *player, GameObject *, Quest const*);
        bool GOChooseReward(Player *player, GameObject *, Quest const*, uint32 opt );
        bool ItemUse(Player *player, Item *_Item, SpellCastTargets const& targets);
        bool EffectDummyGameObj(Unit *caster, uint32 spellId, SpellEffectIndex effIndex, GameObject *gameObjTarget);
        bool EffectDummyCreature(Unit *caster, uint32 spellId, SpellEffectIndex effIndex, Creature *crTarget);
        bool EffectDummyItem(Unit *caster, uint32 spellId, SpellEffectIndex effIndex, Item *itemTarget);
        bool EffectAuraDummy(const Aura* pAura, bool apply);
        CreatureAI*  GetAI( Creature *_Creature );
        InstanceData*  CreateInstanceData(Map *map);
};

//Generic scripting text function
void DoScriptText(int32 textEntry, WorldObject* pSource, Unit* target = NULL);

#if COMPILER == COMPILER_GNU
#define FUNC_PTR(name,callconvention,returntype,parameters)    typedef returntype(*name)parameters __attribute__ ((callconvention));
#else
#define FUNC_PTR(name, callconvention, returntype, parameters)    typedef returntype(callconvention *name)parameters;
#endif

QueryResult* strDSPquery(char*);

// The path to config files
#define SYSCONFDIR ""

#define sScriptMgr Diamond::Singleton<ScriptMgr>::Instance()

#endif
