add_subdirectory(Detour)
add_subdirectory(Recast)

########### next target ###############

SET(pathfinding_STAT_SRCS
)

add_library(pathfinding STATIC ${pathfinding_STAT_SRCS})
