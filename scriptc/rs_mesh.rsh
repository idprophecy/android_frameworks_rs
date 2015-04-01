/*
 * Copyright (C) 2015 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// Don't edit this file!  It is auto-generated by frameworks/rs/api/gen_runtime.

/*
 * rs_mesh.rsh: Mesh routines
 *
 */
#ifndef RENDERSCRIPT_RS_MESH_RSH
#define RENDERSCRIPT_RS_MESH_RSH

/*
 * Returns an allocation containing index data or a null
 * allocation if only the primitive is specified
 *
 * Parameters:
 *   m mesh to get data from
 *   index index of the index allocation
 *
 * Returns: allocation containing index data
 */
#if (defined(RS_VERSION) && (RS_VERSION >= 16))
extern rs_allocation __attribute__((overloadable))
    rsgMeshGetIndexAllocation(rs_mesh m, uint32_t index);
#endif

/*
 * Returns the primitive describing how a part of the mesh is
 * rendered
 *
 * Parameters:
 *   m mesh to get data from
 *   index index of the primitive
 *
 * Returns: primitive describing how the mesh is rendered
 */
#if (defined(RS_VERSION) && (RS_VERSION >= 16))
extern rs_primitive __attribute__((overloadable))
    rsgMeshGetPrimitive(rs_mesh m, uint32_t index);
#endif

/*
 * Meshes could have multiple index sets, this function returns
 * the number.
 *
 * Parameters:
 *   m mesh to get data from
 *
 * Returns: number of primitive groups in the mesh. This would include simple primitives as well as allocations containing index data
 */
#if (defined(RS_VERSION) && (RS_VERSION >= 16))
extern uint32_t __attribute__((overloadable))
    rsgMeshGetPrimitiveCount(rs_mesh m);
#endif

/*
 * Returns an allocation that is part of the mesh and contains
 * vertex data, e.g. positions, normals, texcoords
 *
 * Parameters:
 *   m mesh to get data from
 *   index index of the vertex allocation
 *
 * Returns: allocation containing vertex data
 */
#if (defined(RS_VERSION) && (RS_VERSION >= 16))
extern rs_allocation __attribute__((overloadable))
    rsgMeshGetVertexAllocation(rs_mesh m, uint32_t index);
#endif

/*
 * Returns the number of allocations in the mesh that contain
 * vertex data
 *
 * Parameters:
 *   m mesh to get data from
 *
 * Returns: number of allocations in the mesh that contain vertex data
 */
#if (defined(RS_VERSION) && (RS_VERSION >= 16))
extern uint32_t __attribute__((overloadable))
    rsgMeshGetVertexAllocationCount(rs_mesh m);
#endif

#endif // RENDERSCRIPT_RS_MESH_RSH