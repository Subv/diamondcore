#ifndef _MMAP_TILE_BUILDER_H
#define _MMAP_TILE_BUILDER_H

#include "MMapCommon.h"
#include "MangosMap.h"
#include "IVMapManager.h"
#include "WorldModel.h"

#include "G3D/Array.h"
#include "G3D/Vector3.h"
#include "G3D/Matrix3.h"

using namespace VMAP;
using namespace MaNGOS;

namespace MMAP
{
    enum Spot
    {
        TOP     = 1,
        LEFT    = 2,
        RIGHT   = 3,
        BOTTOM  = 4,
        ENTIRE  = 5
    };

    enum Grid
    {
        GRID_V8,
        GRID_V9
    };

    static const int V9_SIZE = 129;
    static const int V9_SIZE_SQ = V9_SIZE*V9_SIZE;
    static const int V8_SIZE = 128;
    static const int V8_SIZE_SQ = V8_SIZE*V8_SIZE;
    static const float GRID_SIZE = 533.33333f;
    static const float GRID_PART_SIZE = (float)1/V8_SIZE*GRID_SIZE;

    class TileBuilder
    {
        public:
            TileBuilder(float maxWalkableAngle, bool hiRes, IVMapManager* vmapManager);
            ~TileBuilder();

            void build(uint32               mapID,
                       uint32               tileX,
                       uint32               tileY,
                       G3D::Array<float>    &verts,
                       G3D::Array<int>      &tris);

            int getMaxVertCount();
            int getMaxTriCount();

        private:

            // heightmap
            bool m_hiResHeightMaps;
            bool m_shredHeightmaps;
            float m_heightOffset;
            float* V9;
            float* V8;
            G3D::Vector3 m_groundNormal;
            float m_maxRadians;

            void loadHeightMap(uint32 mapID, uint32 tileX, uint32 tileY, G3D::Array<float> &vertices, G3D::Array<int> &triangles, Spot portion);
            void getHeightCoord(int square, Grid grid, float xOffset, float yOffset, float* coord, float* v);
            bool getHeightTriangle(int square, Spot triangle, int* indices, int offset);
            bool isHole(int square, const uint16 holes[16][16]);
            float getAngle(Vector3 normal);

            // vmap models
            IVMapManager* m_vmapManager;
            vector<vector<float>*> m_modelsVertices;
            vector<vector<int>*> m_modelsTriangles;

            void loadModels();
            void transform(vector<Vector3> original, vector<Vector3> &transformed, float scale, G3D::Matrix3 rotation, Vector3 position);
            void copyVertices(vector<Vector3> source, vector<float> dest);                              // copies vertices into m_vertices
            void copyIndices(vector<MeshTriangle> source, vector<int> dest, int offest, bool flip);   // copies vertex index data into m_triangleIndices

            // intersection of heightmap and models
            void intersect();
            void aggregate();

            // debug
            void generateObjFile(const char* objFileName);

            // common
            uint32 m_mapID;
            uint32 m_tileX;
            uint32 m_tileY;
            G3D::Array<float> *m_vertices;
            G3D::Array<int> *m_triangles;

            TileBuilder();
            void cleanup();
    };
}

#endif