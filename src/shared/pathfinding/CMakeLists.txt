add_subdirectory(Detour)
add_subdirectory(Recast)

########### next target ###############

SET(pathfinding_STAT_SRCS
    ChunkyTriMesh.h
    ChunkyTriMesh.cpp
    InputGeom.h
    InputGeom.cpp
    MeshLoaderObj.h
    MeshLoaderObj.cpp
)

add_library(pathfinding STATIC ${pathfinding_STAT_SRCS})
)
