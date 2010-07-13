#ifndef _LFG_H
#define _LFG_H

#include "Platform/Define.h"
#include "Object.h"

enum LfgRoles
{
    ROLE_NONE   = 0x00,
    ROLE_LEADER = 0x01,
    ROLE_TANK   = 0x02,
    ROLE_HEALER = 0x04,
    ROLE_DAMAGE = 0x08,
};

enum LfgUpdateType
{
    LFG_UPDATETYPE_LEADER               = 1,
    LFG_UPDATETYPE_ROLECHECK_ABORTED    = 4,
    LFG_UPDATETYPE_JOIN_PROPOSAL        = 5,
    LFG_UPDATETYPE_ROLECHECK_FAILED     = 6,
    LFG_UPDATETYPE_REMOVED_FROM_QUEUE   = 7,
    LFG_UPDATETYPE_PROPOSAL_FAILED      = 8,
    LFG_UPDATETYPE_PROPOSAL_DECLINED    = 9,
    LFG_UPDATETYPE_GROUP_FOUND          = 10,
    LFG_UPDATETYPE_ADDED_TO_QUEUE       = 12,
    LFG_UPDATETYPE_PROPOSAL_FOUND       = 13,
    LFG_UPDATETYPE_CLEAR_LOCK_LIST      = 14,
    LFG_UPDATETYPE_GROUP_MEMBER_OFFLINE = 15,
    LFG_UPDATETYPE_GROUP_DISBAND        = 16,
};

typedef std::set<uint32> LfgDungeonSet;

struct LookingForGroup
{
    LookingForGroup(): roles(0)
    {
        donerandomDungeons.clear();
        applyDungeons.clear();
    }
    std::string comment;
    int8 roles;

    bool isDungeonDone(const uint32 entry)
    {
        return donerandomDungeons.find(entry) != donerandomDungeons.end();
    }

    LfgDungeonSet applyDungeons;                            // Dungeons the player have applied for
    LfgDungeonSet donerandomDungeons;                       // Finished random Dungeons (to calculate the bonus);
};

#endif
