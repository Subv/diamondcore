

########### next target ###############

SET(pathfinding_STAT_SRCS
    Detour/DetourCommon.cpp
    Detour/DetourCommon.h
    Detour/DetourNavMeshBuilder.cpp
    Detour/DetourNavMeshBuilder.h 
    Detour/DetourNavMesh.cpp
    Detour/DetourNavMesh.h
    Detour/DetourNode.cpp
    Detour/DetourNode.h
    Recast/RecastArea.cpp
    Recast/RecastContour.cpp
    Recast/Recast.cpp
    Recast/RecastFilter.cpp
    Recast/Recast.h
    Recast/RecastLog.cpp
    Recast/RecastLog.h
    Recast/RecastMesh.cpp
    Recast/RecastMeshDetail.cpp
    Recast/RecastRasterization.cpp
    Recast/RecastRegion.cpp
    Recast/RecastTimer.cpp
    Recast/RecastTimer.h
)

add_library(pathfinding STATIC ${pathfinding_STAT_SRCS})
target_link_libraries(
pathfinding
)

