/* Copyright (C) 2006 - 2010 Scripts <https://Scripts.svn.sourceforge.net/>
 * This program is free software licensed under GPL version 2
 * Please see the included DOCS/LICENSE.TXT for more information */

#include "precompiled.h"
#include "Config/Config.h"
#include "Database/DatabaseEnv.h"
#include "DBCStores.h"
#include "ObjectMgr.h"
#include "../system/ScriptLoader.h"
#include "../system/system.h"

#define _FULLVERSION "DiamondScripts"
#define _SCRIPTS_CONFIG SYSCONFDIR "WorldServer.conf"

INSTANTIATE_SINGLETON_1(ScriptMgr);

int num_sc_scripts;
Script *m_scripts[MAX_SCRIPTS];

Config DSConfig;

void FillSpellSummary();

ScriptMgr::ScriptMgr()
{
}
ScriptMgr::~ScriptMgr()
{
}

void ScriptMgr::LoadDatabase()
{
    pSystemMgr.LoadVersion();
    pSystemMgr.LoadScriptTexts();
    pSystemMgr.LoadScriptTextsCustom();
    pSystemMgr.LoadScriptWaypoints();
}

struct TSpellSummary {
    uint8 Targets;                                          // set of enum SelectTarget
    uint8 Effects;                                          // set of enum SelectEffect
}extern *SpellSummary;

void ScriptMgr::ScriptsInit()
{
    //Scripts startup
    outstring_log("");
    outstring_log(" DDD     DDD DDDDD  DD DDDDD  DDDDDDDD  DDD");
    outstring_log("D  DD  DDD   D   DD DD D   DD    DD    D  DD");
    outstring_log("DD    DD     D   DD DD D   DD    DD    DD");
    outstring_log(" DDD  D      DDDDD  DD DDDDD     DD     DDD");
    outstring_log("   DD DD     D DD   DD D         DD       DD");
    outstring_log("DD  D  DDD   D  DD  DD D         DD    DD  D");
    outstring_log(" DDD     DDD D   DD DD D         DD     DDD");
    outstring_log("");

    LoadDatabase();

    outstring_log("DS: Loading Scripts");

    for (int i=0; i<MAX_SCRIPTS; ++i)
        m_scripts[i]=NULL;

    FillSpellSummary();

    AddScripts();

    outstring_log(">> Loaded %i Scripts.", num_sc_scripts);
}

//*********************************
//*** Functions used globally ***

void DoScriptText(int32 iTextEntry, WorldObject* pSource, Unit* pTarget)
{
    if (!pSource)
    {
        error_log("DS: DoScriptText entry %i, invalid Source pointer.", iTextEntry);
        return;
    }

    if (iTextEntry >= 0)
    {
        error_log("DS: DoScriptText with source entry %u (TypeId=%u, guid=%u) attempts to process text entry %i, but text entry must be negative.",
            pSource->GetEntry(), pSource->GetTypeId(), pSource->GetGUIDLow(), iTextEntry);

        return;
    }

    const StringTextData* pData = pSystemMgr.GetTextData(iTextEntry);

    if (!pData)
    {
        error_log("DS: DoScriptText with source entry %u (TypeId=%u, guid=%u) could not find text entry %i.",
            pSource->GetEntry(), pSource->GetTypeId(), pSource->GetGUIDLow(), iTextEntry);

        return;
    }

    debug_log("DS: DoScriptText: text entry=%i, Sound=%u, Type=%u, Language=%u, Emote=%u",
        iTextEntry, pData->uiSoundId, pData->uiType, pData->uiLanguage, pData->uiEmote);

    if (pData->uiSoundId)
    {
        if (GetSoundEntriesStore()->LookupEntry(pData->uiSoundId))
            pSource->PlayDirectSound(pData->uiSoundId);
        else
            error_log("DS: DoScriptText entry %i tried to process invalid sound id %u.", iTextEntry, pData->uiSoundId);
    }

    if (pData->uiEmote)
    {
        if (pSource->GetTypeId() == TYPEID_UNIT || pSource->GetTypeId() == TYPEID_PLAYER)
            ((Unit*)pSource)->HandleEmoteCommand(pData->uiEmote);
        else
            error_log("DS: DoScriptText entry %i tried to process emote for invalid TypeId (%u).", iTextEntry, pSource->GetTypeId());
    }

    switch (pData->uiType)
    {
        case CHAT_TYPE_SAY:
            pSource->MonsterSay(iTextEntry, pData->uiLanguage, pTarget ? pTarget->GetGUID() : 0);
            break;
        case CHAT_TYPE_YELL:
            pSource->MonsterYell(iTextEntry, pData->uiLanguage, pTarget ? pTarget->GetGUID() : 0);
            break;
        case CHAT_TYPE_TEXT_EMOTE:
            pSource->MonsterTextEmote(iTextEntry, pTarget ? pTarget->GetGUID() : 0);
            break;
        case CHAT_TYPE_BOSS_EMOTE:
            pSource->MonsterTextEmote(iTextEntry, pTarget ? pTarget->GetGUID() : 0, true);
            break;
        case CHAT_TYPE_WHISPER:
        {
            if (pTarget && pTarget->GetTypeId() == TYPEID_PLAYER)
                pSource->MonsterWhisper(iTextEntry, pTarget->GetGUID());
            else
                error_log("DS: DoScriptText entry %i cannot whisper without target unit (TYPEID_PLAYER).", iTextEntry);

            break;
        }
        case CHAT_TYPE_BOSS_WHISPER:
        {
            if (pTarget && pTarget->GetTypeId() == TYPEID_PLAYER)
                pSource->MonsterWhisper(iTextEntry, pTarget->GetGUID(), true);
            else
                error_log("DS: DoScriptText entry %i cannot whisper without target unit (TYPEID_PLAYER).", iTextEntry);

            break;
        }
        case CHAT_TYPE_ZONE_YELL:
            pSource->MonsterYellToZone(iTextEntry, pData->uiLanguage, pTarget ? pTarget->GetGUID() : 0);
            break;
    }
}

char const* GetScriptText(int32 iTextEntry, Player* pPlayer)
{
    if (iTextEntry >= 0)
    {
        error_log("SD2: GetScriptText attempts to process text entry %i, but text entry must be negative.", iTextEntry);
        return NULL;
    }

    const StringTextData* pData = pSystemMgr.GetTextData(iTextEntry);

    if (!pData)
    {
        error_log("SD2: GetScriptText could not find text entry %i.", iTextEntry);
        return NULL;
    }

    debug_log("SD2: GetScriptText: text entry=%i, Sound=%u, Type=%u, Language=%u, Emote=%u",
        iTextEntry, pData->uiSoundId, pData->uiType, pData->uiLanguage, pData->uiEmote);

    int currentLocaleIdx;

    if (pPlayer && pPlayer->IsInWorld()) currentLocaleIdx = pPlayer->GetSession()->GetSessionDbLocaleIndex();
        else currentLocaleIdx = LOCALE_enUS;

    return sObjectMgr.GetString(iTextEntry,currentLocaleIdx);
}

//*********************************
//*** Functions used internally ***

void Script::RegisterSelf()
{
    int id = GetScriptId(Name.c_str());
    if (id != 0)
    {
        m_scripts[id] = this;
        ++num_sc_scripts;
    }
    else
    {
        debug_log("DS: RegisterSelf, but script named %s does not have ScriptName assigned in database.",(this)->Name.c_str());
        delete this;
    }
}

bool ScriptMgr::GossipHello(Player* pPlayer, Creature* pCreature)
{
    Script *tmpscript = m_scripts[pCreature->GetScriptId()];

    if (!tmpscript || !tmpscript->pGossipHello)
        return false;

    pPlayer->PlayerTalkClass->ClearMenus();

    return tmpscript->pGossipHello(pPlayer, pCreature);
}

bool ScriptMgr::GOGossipHello(Player *pPlayer, GameObject *pGo)
{
    Script *tmpscript = m_scripts[pGo->GetGOInfo()->ScriptId];

    if (!tmpscript || !tmpscript->pGOGossipHello)
        return false;

    pPlayer->PlayerTalkClass->ClearMenus();

    return tmpscript->pGOGossipHello(pPlayer, pGo);
}

bool ScriptMgr::GossipSelect(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    debug_log("DS: Gossip selection, sender: %u, action: %u", uiSender, uiAction);

    Script *tmpscript = m_scripts[pCreature->GetScriptId()];

    if (!tmpscript || !tmpscript->pGossipSelect)
        return false;

    pPlayer->PlayerTalkClass->ClearMenus();

    return tmpscript->pGossipSelect(pPlayer, pCreature, uiSender, uiAction);
}

bool ScriptMgr::GOGossipSelect(Player *pPlayer, GameObject *pGo, uint32 sender, uint32 action)
{
    debug_log("DS: GO Gossip selection, sender: %u, action: %u", sender, action);

    Script *tmpscript = m_scripts[pGo->GetGOInfo()->ScriptId];

    if (!tmpscript || !tmpscript->pGOGossipSelect)
        return false;

    pPlayer->PlayerTalkClass->ClearMenus();

    return tmpscript->pGOGossipSelect(pPlayer, pGo, sender, action);
}

bool ScriptMgr::GossipSelectWithCode(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction, const char* sCode)
{
    debug_log("DS: Gossip selection with code, sender: %u, action: %u", uiSender, uiAction);

    Script *tmpscript = m_scripts[pCreature->GetScriptId()];

    if (!tmpscript || !tmpscript->pGossipSelectWithCode)
        return false;

    pPlayer->PlayerTalkClass->ClearMenus();

    return tmpscript->pGossipSelectWithCode(pPlayer, pCreature, uiSender, uiAction, sCode);
}

bool ScriptMgr::GOGossipSelectWithCode(Player *pPlayer, GameObject *pGo, uint32 sender, uint32 action, const char* sCode)
{
    debug_log("DS: GO Gossip selection with code, sender: %u, action: %u", sender, action);

    Script *tmpscript = m_scripts[pGo->GetGOInfo()->ScriptId];

    if (!tmpscript || !tmpscript->pGOGossipSelectWithCode)
        return false;

    pPlayer->PlayerTalkClass->ClearMenus();

    return tmpscript->pGOGossipSelectWithCode(pPlayer, pGo, sender, action, sCode);
}

bool ScriptMgr::GOSelect(Player* pPlayer, GameObject* pGO, uint32 uiSender, uint32 uiAction)
{
    if (!pGO)
    return false;
    debug_log("DS: Gossip selection, sender: %d, action: %d", uiSender, uiAction);

    Script *tmpscript = m_scripts[pGO->GetGOInfo()->ScriptId];
    if (!tmpscript || !tmpscript->pGOSelect) return false;

    pPlayer->PlayerTalkClass->ClearMenus();
    return tmpscript->pGOSelect(pPlayer, pGO, uiSender, uiAction);
}

bool ScriptMgr::GOSelectWithCode(Player* pPlayer, GameObject* pGO, uint32 uiSender, uint32 uiAction, const char* sCode)
{
    if (!pGO)
    return false;
    debug_log("DS: Gossip selection, sender: %d, action: %d",uiSender, uiAction);

    Script *tmpscript = m_scripts[pGO->GetGOInfo()->ScriptId];
    if (!tmpscript || !tmpscript->pGOSelectWithCode) return false;

    pPlayer->PlayerTalkClass->ClearMenus();
    return tmpscript->pGOSelectWithCode(pPlayer, pGO, uiSender ,uiAction, sCode);
}

bool ScriptMgr::QuestAccept(Player* pPlayer, Creature* pCreature, const Quest* pQuest)
{
    Script *tmpscript = m_scripts[pCreature->GetScriptId()];

    if (!tmpscript || !tmpscript->pQuestAccept)
        return false;

    pPlayer->PlayerTalkClass->ClearMenus();

    return tmpscript->pQuestAccept(pPlayer, pCreature, pQuest);
}

bool ScriptMgr::QuestSelect(Player* pPlayer, Creature* pCreature, const Quest* pQuest)
{
    Script *tmpscript = m_scripts[pCreature->GetScriptId()];

    if (!tmpscript || !tmpscript->pQuestSelect)
        return false;

    pPlayer->PlayerTalkClass->ClearMenus();

    return tmpscript->pQuestSelect(pPlayer, pCreature, pQuest);
}

bool ScriptMgr::QuestComplete(Player* pPlayer, Creature* pCreature, const Quest* pQuest)
{
    Script *tmpscript = m_scripts[pCreature->GetScriptId()];

    if (!tmpscript || !tmpscript->pQuestComplete)
        return false;

    pPlayer->PlayerTalkClass->ClearMenus();

    return tmpscript->pQuestComplete(pPlayer, pCreature, pQuest);
}

bool ScriptMgr::ChooseReward(Player* pPlayer, Creature* pCreature, const Quest* pQuest, uint32 opt)
{
    Script *tmpscript = m_scripts[pCreature->GetScriptId()];

    if (!tmpscript || !tmpscript->pChooseReward)
        return false;

    pPlayer->PlayerTalkClass->ClearMenus();

    return tmpscript->pChooseReward(pPlayer, pCreature, pQuest, opt);
}

uint32 ScriptMgr::NPCDialogStatus(Player* pPlayer, Creature* pCreature)
{
    Script *tmpscript = m_scripts[pCreature->GetScriptId()];

    if (!tmpscript || !tmpscript->pNPCDialogStatus)
        return 100;

    pPlayer->PlayerTalkClass->ClearMenus();

    return tmpscript->pNPCDialogStatus(pPlayer, pCreature);
}

uint32 ScriptMgr::GODialogStatus(Player* pPlayer, GameObject* pGo)
{
    Script *tmpscript = m_scripts[pGo->GetGOInfo()->ScriptId];

    if (!tmpscript || !tmpscript->pGODialogStatus)
        return 100;

    pPlayer->PlayerTalkClass->ClearMenus();

    return tmpscript->pGODialogStatus(pPlayer, pGo);
}

bool ScriptMgr::ItemHello(Player* pPlayer, Item *_Item, const Quest* pQuest)
{
    Script *tmpscript = m_scripts[_Item->GetProto()->ScriptId];

    if (!tmpscript || !tmpscript->pItemHello)
        return false;

    pPlayer->PlayerTalkClass->ClearMenus();

    return tmpscript->pItemHello(pPlayer,_Item, pQuest);
}

bool ScriptMgr::ItemQuestAccept(Player* pPlayer, Item *_Item, const Quest* pQuest)
{
    Script *tmpscript = m_scripts[_Item->GetProto()->ScriptId];

    if (!tmpscript || !tmpscript->pItemQuestAccept)
        return false;

    pPlayer->PlayerTalkClass->ClearMenus();

    return tmpscript->pItemQuestAccept(pPlayer,_Item, pQuest);
}

bool ScriptMgr::GOHello(Player* pPlayer, GameObject* pGo)
{
    Script *tmpscript = m_scripts[pGo->GetGOInfo()->ScriptId];

    if (!tmpscript || !tmpscript->pGOHello)
        return false;

    return tmpscript->pGOHello(pPlayer, pGo);
}

bool ScriptMgr::GOQuestAccept(Player* pPlayer, GameObject* pGo, const Quest* pQuest)
{
    Script *tmpscript = m_scripts[pGo->GetGOInfo()->ScriptId];

    if (!tmpscript || !tmpscript->pGOQuestAccept)
        return false;

    pPlayer->PlayerTalkClass->ClearMenus();

    return tmpscript->pGOQuestAccept(pPlayer, pGo, pQuest);
}

bool ScriptMgr::GOChooseReward(Player* pPlayer, GameObject* pGo, const Quest* pQuest, uint32 opt)
{
    Script *tmpscript = m_scripts[pGo->GetGOInfo()->ScriptId];

    if (!tmpscript || !tmpscript->pGOChooseReward)
        return false;

    pPlayer->PlayerTalkClass->ClearMenus();

    return tmpscript->pGOChooseReward(pPlayer, pGo, pQuest,opt);
}

bool ScriptMgr::AreaTrigger(Player* pPlayer, AreaTriggerEntry const* atEntry)
{
    Script *tmpscript = m_scripts[GetAreaTriggerScriptId(atEntry->id)];

    if (!tmpscript || !tmpscript->pAreaTrigger)
        return false;

    return tmpscript->pAreaTrigger(pPlayer, atEntry);
}

CreatureAI* ScriptMgr::GetAI(Creature* pCreature)
{
    Script *tmpscript = m_scripts[pCreature->GetScriptId()];

    if (!tmpscript || !tmpscript->GetAI)
        return NULL;

    return tmpscript->GetAI(pCreature);
}

bool ScriptMgr::ItemUse(Player* pPlayer, Item* _Item, SpellCastTargets const& targets)
{
    Script *tmpscript = m_scripts[_Item->GetProto()->ScriptId];

    if (!tmpscript || !tmpscript->pItemUse)
        return false;

    return tmpscript->pItemUse(pPlayer,_Item,targets);
}

bool ScriptMgr::EffectDummyCreature(Unit *pCaster, uint32 spellId, SpellEffectIndex effIndex, Creature *pCreatureTarget)
{
    Script *tmpscript = m_scripts[pCreatureTarget->GetScriptId()];

    if (!tmpscript || !tmpscript->pEffectDummyCreature)
        return false;

    return tmpscript->pEffectDummyCreature(pCaster, spellId, effIndex, pCreatureTarget);
}

bool ScriptMgr::EffectDummyGameObj(Unit *pCaster, uint32 spellId, SpellEffectIndex effIndex, GameObject *pGameObjTarget)
{
    Script *tmpscript = m_scripts[pGameObjTarget->GetGOInfo()->ScriptId];

    if (!tmpscript || !tmpscript->pEffectDummyGameObj)
        return false;

    return tmpscript->pEffectDummyGameObj(pCaster, spellId, effIndex, pGameObjTarget);
}

bool ScriptMgr::EffectDummyItem(Unit *pCaster, uint32 spellId, SpellEffectIndex effIndex, Item *pItemTarget)
{
    Script *tmpscript = m_scripts[pItemTarget->GetProto()->ScriptId];

    if (!tmpscript || !tmpscript->pEffectDummyItem)
        return false;

    return tmpscript->pEffectDummyItem(pCaster, spellId, effIndex, pItemTarget);
}

bool ScriptMgr::EffectAuraDummy(const Aura* pAura, bool apply)
{
    Script *tmpscript = m_scripts[((Creature*)pAura->GetTarget())->GetScriptId()];

    if (!tmpscript || !tmpscript->pEffectAuraDummy)
        return false;

    return tmpscript->pEffectAuraDummy(pAura, apply);
}

InstanceData* ScriptMgr::CreateInstanceData(Map *map)
{
    if (!map->IsDungeon())
        return NULL;

    Script *tmpscript = m_scripts[((InstanceMap*)map)->GetScriptId()];
    if (!tmpscript || !tmpscript->GetInstanceData)
        return NULL;

    return tmpscript->GetInstanceData(map);
}
