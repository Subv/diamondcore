/*
 * Copyright (C) 2010 DiamondCore <http://easy-emu.de/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#ifndef DIAMOND_NULLCREATUREAI_H
#define DIAMOND_NULLCREATUREAI_H

#include "CreatureAI.h"

class NullCreatureAI : public CreatureAI
{
    public:

        explicit NullCreatureAI(Creature* c) : CreatureAI(c) {}
        ~NullCreatureAI();

        void MoveInLineOfSight(Unit *) {}
        void AttackStart(Unit *) {}
        void AttackedBy( Unit *) {}
        void EnterEvadeMode() {}

        bool IsVisible(Unit *) const { return false;  }

        void UpdateAI(const uint32) {}
        static int Permissible(const Creature *) { return PERMIT_BASE_IDLE;  }
};
#endif
