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
 * rs_object_types.rsh: Standard RenderScript types
 *
 * TODO desc.
 */
#ifndef RENDERSCRIPT_RS_OBJECT_TYPES_RSH
#define RENDERSCRIPT_RS_OBJECT_TYPES_RSH

#define NULL ((void *)0)

// Opaque handle to a RenderScript object. Do not use this directly.
#ifndef __LP64__
#define _RS_HANDLE \
struct {\
  const int* const p;\
} __attribute__((packed, aligned(4)))
#else
#define _RS_HANDLE \
struct {\
  const long* const p;\
  const long* const r;\
  const long* const v1;\
  const long* const v2;\
}
#endif

/*
 * rs_element: Handle to an element
 *
 * Opaque handle to a RenderScript element.
 * See: android.renderscript.Element
 */
typedef _RS_HANDLE rs_element;

/*
 * rs_type: Handle to a Type
 *
 * Opaque handle to a RenderScript type.
 * See: android.renderscript.Type
 */
typedef _RS_HANDLE rs_type;

/*
 * rs_allocation: Handle to an allocation
 *
 * Opaque handle to a RenderScript allocation.
 * See: android.renderscript.Allocation
 */
typedef _RS_HANDLE rs_allocation;

/*
 * rs_sampler: Handle to a Sampler
 *
 * Opaque handle to a RenderScript sampler object.
 * See: android.renderscript.Sampler
 */
typedef _RS_HANDLE rs_sampler;

/*
 * rs_script: Handle to a Script
 *
 * Opaque handle to a RenderScript script object.
 * See: android.renderscript.ScriptC
 */
typedef _RS_HANDLE rs_script;

/*
 * rs_matrix4x4: 4x4 matrix of 32 bit floats
 *
 * Native holder for RS matrix.  Elements are stored in the array at the
 * location [row*4 + col]
 */
typedef struct {
    float m[16];
} rs_matrix4x4;

/*
 * rs_matrix3x3: 3x3 matrix of 32 bit floats
 *
 * Native holder for RS matrix.  Elements are stored in the array at the
 * location [row*3 + col]
 */
typedef struct {
    float m[9];
} rs_matrix3x3;

/*
 * rs_matrix2x2: 2x2 matrix of 32 bit floats
 *
 * Native holder for RS matrix.  Elements are stored in the array at the
 * location [row*2 + col]
 */
typedef struct {
    float m[4];
} rs_matrix2x2;

/*
 * rs_quaternion: Quarternion
 *
 * Quaternion type for use with the quaternion functions
 */
typedef float4 rs_quaternion;

/*
 * rs_allocation_cubemap_face: Enum for selecting cube map faces
 *
 */
#if (defined(RS_VERSION) && (RS_VERSION >= 14))
typedef enum {
    RS_ALLOCATION_CUBEMAP_FACE_POSITIVE_X = 0,
    RS_ALLOCATION_CUBEMAP_FACE_NEGATIVE_X = 1,
    RS_ALLOCATION_CUBEMAP_FACE_POSITIVE_Y = 2,
    RS_ALLOCATION_CUBEMAP_FACE_NEGATIVE_Y = 3,
    RS_ALLOCATION_CUBEMAP_FACE_POSITIVE_Z = 4,
    RS_ALLOCATION_CUBEMAP_FACE_NEGATIVE_Z = 5
} rs_allocation_cubemap_face;
#endif

/*
 * rs_allocation_usage_type: Bitfield to specify the usage types for an allocation
 *
 * These values are ORed together to specify which usages or memory spaces are
 * relevant to an allocation or an operation on an allocation.
 */
#if (defined(RS_VERSION) && (RS_VERSION >= 14))
typedef enum {
    RS_ALLOCATION_USAGE_SCRIPT = 0x0001,
    RS_ALLOCATION_USAGE_GRAPHICS_TEXTURE = 0x0002, // Deprecated.
    RS_ALLOCATION_USAGE_GRAPHICS_VERTEX = 0x0004, // Deprecated.
    RS_ALLOCATION_USAGE_GRAPHICS_CONSTANTS = 0x0008, // Deprecated.
    RS_ALLOCATION_USAGE_GRAPHICS_RENDER_TARGET = 0x0010 // Deprecated.
} rs_allocation_usage_type;
#endif

/*
 * rs_data_type: Element data types
 *
 * DataType represents the basic type information for a basic element.  The
 * naming convention follows.  For numeric types it is FLOAT,
 * SIGNED, or UNSIGNED followed by the _BITS where BITS is the
 * size of the data.  BOOLEAN is a true / false (1,0)
 * represented in an 8 bit container.  The UNSIGNED variants
 * with multiple bit definitions are for packed graphical data
 * formats and represent vectors with per vector member sizes
 * which are treated as a single unit for packing and alignment
 * purposes.
 *
 * MATRIX the three matrix types contain FLOAT_32 elements and are treated
 * as 32 bits for alignment purposes.
 *
 * RS_* objects.  32 bit opaque handles.
 */
#if (defined(RS_VERSION) && (RS_VERSION >= 16))
typedef enum {
    RS_TYPE_NONE             = 0,
    RS_TYPE_FLOAT_32         = 2,
    RS_TYPE_FLOAT_64         = 3,
    RS_TYPE_SIGNED_8         = 4,
    RS_TYPE_SIGNED_16        = 5,
    RS_TYPE_SIGNED_32        = 6,
    RS_TYPE_SIGNED_64        = 7,
    RS_TYPE_UNSIGNED_8       = 8,
    RS_TYPE_UNSIGNED_16      = 9,
    RS_TYPE_UNSIGNED_32      = 10,
    RS_TYPE_UNSIGNED_64      = 11,
    RS_TYPE_BOOLEAN          = 12,
    RS_TYPE_UNSIGNED_5_6_5   = 13,
    RS_TYPE_UNSIGNED_5_5_5_1 = 14,
    RS_TYPE_UNSIGNED_4_4_4_4 = 15,
    RS_TYPE_MATRIX_4X4       = 16,
    RS_TYPE_MATRIX_3X3       = 17,
    RS_TYPE_MATRIX_2X2       = 18,
    RS_TYPE_ELEMENT          = 1000,
    RS_TYPE_TYPE             = 1001,
    RS_TYPE_ALLOCATION       = 1002,
    RS_TYPE_SAMPLER          = 1003,
    RS_TYPE_SCRIPT           = 1004,
    RS_TYPE_MESH             = 1005,
    RS_TYPE_PROGRAM_FRAGMENT = 1006,
    RS_TYPE_PROGRAM_VERTEX   = 1007,
    RS_TYPE_PROGRAM_RASTER   = 1008,
    RS_TYPE_PROGRAM_STORE    = 1009,
    RS_TYPE_FONT             = 1010,
    RS_TYPE_INVALID          = 10000
} rs_data_type;
#endif

/*
 * rs_data_kind: Element data kind
 *
 * The special interpretation of the data if required.  This is primarly
 * useful for graphical data.  USER indicates no special interpretation is
 * expected.  PIXEL is used in conjunction with the standard data types for
 * representing texture formats.
 */
#if (defined(RS_VERSION) && (RS_VERSION >= 16))
typedef enum {
    RS_KIND_USER         = 0,
    RS_KIND_PIXEL_L      = 7,
    RS_KIND_PIXEL_A      = 8,
    RS_KIND_PIXEL_LA     = 9,
    RS_KIND_PIXEL_RGB    = 10,
    RS_KIND_PIXEL_RGBA   = 11,
    RS_KIND_PIXEL_DEPTH  = 12,
    RS_KIND_PIXEL_YUV    = 13,
    RS_KIND_INVALID      = 100
} rs_data_kind;
#endif

/*
 * rs_sampler_value: Sampler wrap T value
 *
 */
#if (defined(RS_VERSION) && (RS_VERSION >= 16))
typedef enum {
    RS_SAMPLER_NEAREST              = 0,
    RS_SAMPLER_LINEAR               = 1,
    RS_SAMPLER_LINEAR_MIP_LINEAR    = 2,
    RS_SAMPLER_WRAP                 = 3,
    RS_SAMPLER_CLAMP                = 4,
    RS_SAMPLER_LINEAR_MIP_NEAREST   = 5,
    RS_SAMPLER_MIRRORED_REPEAT      = 6,
    RS_SAMPLER_INVALID              = 100
} rs_sampler_value;
#endif

#endif // RENDERSCRIPT_RS_OBJECT_TYPES_RSH