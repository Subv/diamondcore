#include "precompiled.h"
#include "escort_ai.h"
#include "WorldPacket.h"

/*######
## npc_eye_of_acherus
######*/

struct npc_eye_of_acherusAI : public ScriptedAI
{
    npc_eye_of_acherusAI(Creature *pCreature) : ScriptedAI(pCreature)
    {
        m_creature->SetActiveObjectState(true);
        m_creature->SetLevel(55); //else one hack
        StartTimer = 2000;
        Active = false;
    }

    uint32 StartTimer;
    bool Active;

    void Reset(){}
    void AttackStart(Unit *) {}
    void MoveInLineOfSight(Unit*) {}

    void MovementInform(uint32 uiType, uint32 uiPointId)
    {
        if (uiType != POINT_MOTION_TYPE && uiPointId == 0)
            return;

            char * text = "The Eye of Acherus is in your control";
            m_creature->MonsterTextEmote(text, m_creature->GetGUID(), true);
            m_creature->CastSpell(m_creature, 51890, true);
    }

    void UpdateAI(const uint32 uiDiff)
    {
        if(m_creature->isCharmed())
        {
            if (StartTimer < uiDiff && !Active)
            {
                m_creature->CastSpell(m_creature, 51892, true);
                char * text = "The Eye of Acherus launches towards its destination";
                m_creature->MonsterTextEmote(text, m_creature->GetGUID(), true);
                m_creature->SetSpeedRate(MOVE_FLIGHT, 6.4f,true);
                m_creature->GetMotionMaster()->MovePoint(0, 1711.0f, -5820.0f, 147.0f);
                Active = true;
            }
            else StartTimer -= uiDiff;
        }
        else
        {
            m_creature->CleanupsBeforeDelete();
            m_creature->AddObjectToRemoveList();
        }
    }
};

CreatureAI* GetAI_npc_eye_of_acherus(Creature* pCreature)
{
    return new npc_eye_of_acherusAI(pCreature);
}

/*######
## go_eye_of_acherus
######*/

bool GOHello_go_eye_of_acherus(Player *player, GameObject* _GO)
{
    if (player->GetQuestStatus(12641) == QUEST_STATUS_INCOMPLETE)
     player->CastSpell(player, 51852, false);

    return true;
}

void AddSC_quest_12641()
{
	Script *newscript;

	newscript = new Script;
    newscript->Name = "npc_eye_of_acherus";
    newscript->GetAI = &GetAI_npc_eye_of_acherus;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_eye_of_acherus";
    newscript->pGOHello = &GOHello_go_eye_of_acherus;
    newscript->RegisterSelf();
}