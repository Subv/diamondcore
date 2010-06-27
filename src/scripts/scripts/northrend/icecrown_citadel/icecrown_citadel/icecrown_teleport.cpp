/*
 * Copyright (C) 2010 DiamondCore <http://www.easy-emu.de/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

#include "precompiled.h"
#include "icecrown_citadel.h"

#define LIGHTS_HAMMER 70781
#define ORATORY       70856
#define RAMPART       70857
#define DEATHBRINGER  70858
#define PLAGUEWORKS   9995
#define CRIMSONHALL   9996
#define FWHALLS     9997
#define QUEEN       70861
#define LICHKING    70860

bool GoHello_icecrown_teleporter( Player *pPlayer, GameObject *pGO )
{
    ScriptedInstance *pInstance = (ScriptedInstance *) pGO->GetInstanceData();
    if(!pInstance) return true;


    pPlayer->ADD_GOSSIP_ITEM(0, "Teleport to Light's Hammer", GOSSIP_SENDER_MAIN, LIGHTS_HAMMER);
    if(pInstance->GetData(DATA_MARROWGAR_EVENT) == DONE || pPlayer->isGameMaster())
	{
        pPlayer->ADD_GOSSIP_ITEM(0, "Teleport to the Oratory of the Damned", GOSSIP_SENDER_MAIN, ORATORY);
        if(pInstance->GetData(DATA_DEATHWHISPER_EVENT) == DONE || pPlayer->isGameMaster())
		{
            //pPlayer->ADD_GOSSIP_ITEM(0, "Teleport to the Rampart of Skulls", GOSSIP_SENDER_MAIN, RAMPART);
            pPlayer->ADD_GOSSIP_ITEM(0, "Teleport to Deathbringer's Rise", GOSSIP_SENDER_MAIN, DEATHBRINGER);
            if(pInstance->GetData(DATA_SAURFANG_EVENT) == DONE || pPlayer->isGameMaster())
			{
                  pPlayer->ADD_GOSSIP_ITEM(0, "Teleport to the Plagueworks", GOSSIP_SENDER_MAIN, PLAGUEWORKS);
                  pPlayer->ADD_GOSSIP_ITEM(0, "Teleport to the Crimson Halls", GOSSIP_SENDER_MAIN, CRIMSONHALL);
                  pPlayer->ADD_GOSSIP_ITEM(0, "Teleport to the Frostwing Halls", GOSSIP_SENDER_MAIN, FWHALLS);
                  if(pInstance->GetData(DATA_VALITHRIA_DREAMWALKER_EVENT) == DONE || pPlayer->isGameMaster())
				  {
                         pPlayer->ADD_GOSSIP_ITEM(0, "Teleport to The Frost Queens's Lair", GOSSIP_SENDER_MAIN, QUEEN);
                         if(pInstance->GetData(DATA_SINDRAGOSA_EVENT) == DONE || pPlayer->isGameMaster())
						 { 
                            pPlayer->ADD_GOSSIP_ITEM(0, "Teleport to the Frozen Throne", GOSSIP_SENDER_MAIN, LICHKING);
						    
						 }
				  }
			}
		}
	}
	
    pPlayer->SEND_GOSSIP_MENU(40006, pGO->GetGUID());

    return true;
};
						 

bool GOSelect_icecrown_teleporter( Player *pPlayer, GameObject *pGO, uint32 sender, uint32 action )
{
    if(sender != GOSSIP_SENDER_MAIN) return true;
    if(!pPlayer->getAttackers().empty()) return true;


    switch(action)
    {
    case LIGHTS_HAMMER:
        pPlayer->TeleportTo(631, -17.856115f, 2211.640137f, 30.115812f, 3.12149f);
        pPlayer->CLOSE_GOSSIP_MENU();
		break;

    case ORATORY:
        pPlayer->TeleportTo(631, -503.632599f, 2211.219971f, 62.823246f, 3.139313f);
        pPlayer->CLOSE_GOSSIP_MENU();
		break;

   /* case RAMPART:
        pPlayer->TeleportTo(631, -615.098267, 2211.509766, 199.973083, 6.26832);
        pPlayer->CLOSE_GOSSIP_MENU();
		break; */

    case DEATHBRINGER:
        pPlayer->TeleportTo(631, -549.151001f, 2211.463967f, 539.290222f, 6.275452f);
        pPlayer->CLOSE_GOSSIP_MENU();
		break;

    case PLAGUEWORKS:
        pPlayer->TeleportTo(631, 4356.780273f, 2863.636230f, 349.337982f, 1.559445f);
        pPlayer->CLOSE_GOSSIP_MENU();
		break;

    case CRIMSONHALL:
        pPlayer->TeleportTo(631, 4453.248535f, 2769.325684f, 349.347473f, 0.023817f);
        pPlayer->CLOSE_GOSSIP_MENU();
		break;

    case FWHALLS:
        pPlayer->TeleportTo(631, 4356.853516f, 2674.143311f, 349.340118f, 4.736377f);
        pPlayer->CLOSE_GOSSIP_MENU();
		break;

    case QUEEN:
        pPlayer->TeleportTo(631, 4356.527344f, 2402.710205f, 220.462723f, 4.886216f);
        pPlayer->CLOSE_GOSSIP_MENU(); 
		break;

    case LICHKING:
        pPlayer->TeleportTo(631, 529.3969f, -2124.879883f, 1060.959961f, 0.120937f);
        pPlayer->CLOSE_GOSSIP_MENU(); 
		break;
    }

    return true;
}


void AddSC_icecrown_teleporter()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "icecrown_teleporter";
    newscript->pGOHello = &GoHello_icecrown_teleporter;
    newscript->pGOSelect = &GOSelect_icecrown_teleporter;
    newscript->RegisterSelf();
}