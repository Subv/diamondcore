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

#ifndef DIAMOND_VEHICLE_H
#define DIAMOND_VEHICLE_H

#include "ObjectGuid.h"
#include "Creature.h"
#include "Unit.h"
#include "ObjectMgr.h"

enum PowerType
{
    POWER_PYRITE        = 41,
    POWER_STEAM         = 61,
    POWER_TYPE_HEAT     = 101, // Gunship Cannon
    POWER_TYPE_OOZE     = 121, // Mutated Abomination
    POWER_TYPE_BLOOD    = 141, // Deathbringer Saurfang
    POWER_TYPE_142      = 142, // Soo-holu
};

struct VehicleSeat
{
    VehicleSeat(VehicleSeatEntry const *pSeatInfo = NULL) : seatInfo(pSeatInfo), passenger(NULL) {}

    VehicleSeatEntry const *seatInfo;
    Unit* passenger;
};

typedef std::map<int8, VehicleSeat> SeatMap;

class VehicleKit
{
    public:
        explicit VehicleKit(Unit* base, VehicleEntry const* vehicleInfo);
        ~VehicleKit();

        void Die();
        void Install();
        void Uninstall();
        void Reset();
        void InstallAllAccessories();

        bool HasEmptySeat(int8 seatId) const;
        Unit *GetPassenger(int8 seatId) const;
        int8 GetNextEmptySeat(int8 seatId, bool next) const;
        bool AddPassenger(Unit *passenger, int8 seatId = -1);
        void RemovePassenger(Unit *passenger);
        void RelocatePassengers(float x, float y, float z, float ang);
        void RemoveAllPassengers();

        uint32 GetVehicleId() const { return m_vehicleInfo->m_ID; }
        uint32 GetVehicleFlags() { return 0; }

        VehicleEntry const* GetVehicleInfo() const { return m_vehicleInfo; }
        Unit* GetBase() { return m_pBase; }

    protected:
        SeatMap m_Seats;
        uint32 m_uiNumFreeSeats;
        VehicleEntry const *m_vehicleInfo;
        Unit* m_pBase;

        void InstallAccessory(uint32 entry, int8 seatId, bool minion = true);
};

#endif