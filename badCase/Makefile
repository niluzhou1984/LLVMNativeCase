#!/usr/bin/make
include ../MakefileCfg.mk


LPATH_TEST :=
LPATH_TEST += ./../PhysXSDK/Lib/crossbridge

IPATH_TEST :=
IPATH_TEST += ../PhysXSDK/Include
IPATH_TEST += ../PhysXSDK/Include/foundation
IPATH_TEST += ../PhysXSDK/Include/geometry
IPATH_TEST += ../PhysXSDK/Source/foundation/include
IPATH_TEST += ../PhysXSDK/Source/Common/src
IPATH_TEST += ../PhysXSDK/Source/GeomUtils/src
IPATH_TEST += ../PhysXSDK/Source/GeomUtils/headers
IPATH_TEST += ../PhysXSDK/Source/GeomUtils/include
IPATH_TEST += ../PhysXSDK/Source/GeomUtils/src/contact
IPATH_TEST += ../PhysXSDK/Source/GeomUtils/src/common
IPATH_TEST += ../PhysXSDK/Source/GeomUtils/src/convex
IPATH_TEST += ../PhysXSDK/Source/GeomUtils/src/distance
IPATH_TEST += ../PhysXSDK/Source/GeomUtils/src/gjk
IPATH_TEST += ../PhysXSDK/Source/GeomUtils/src/intersection
IPATH_TEST += ../PhysXSDK/Source/GeomUtils/src/mesh
IPATH_TEST += ../PhysXSDK/Source/GeomUtils/src/Ice
IPATH_TEST += ../PhysXSDK/Source/GeomUtils/src/hf
IPATH_TEST += ../PhysXSDK/Source/GeomUtils/src/pcm
IPATH_TEST += ../PhysXSDK/Include/foundation
IPATH_TEST += ../PhysXSDK/Include/common
IPATH_TEST += ../PhysXSDK/Source/PhysXVehicle/src

LIBRARIES_TEST :=
#LIBRARIES_TEST += LowLevel
#LIBRARIES_TEST += LowLevelCloth
LIBRARIES_TEST += PhysX3_x86
#LIBRARIES_TEST += PhysX3CharacterKinematic_x86
LIBRARIES_TEST += PhysX3Common_x86
LIBRARIES_TEST += PhysX3Cooking_x86
#LIBRARIES_TEST += PhysX3Extensions
LIBRARIES_TEST += PhysXProfileSDK
#LIBRARIES_TEST += PxTask
#LIBRARIES_TEST += SceneQuery
#LIBRARIES_TEST += SimulationController

DEFINES_TEST += __CYGWIN__ __CROSSBRIDGE__ NDEBUG  
CFLAGS_TEST :=
CFLAGS_TEST += $(addprefix -D, $(DEFINES_TEST))
CFLAGS_TEST += -pthread -Wno-write-strings -Wno-trigraphs -fexceptions
CFLAGS_TEST += $(addprefix -I, $(IPATH_TEST))
LFLAGS_TEST :=
LFLAGS_TEST += $(addprefix -L, $(LPATH_TEST))
LFLAGS_TEST += -Wl,--start-group $(addprefix -l, $(LIBRARIES_TEST)) -Wl,--end-group


FIXED_LIBRARIES_TEST :=
#FIXED_LIBRARIES_TEST += LowLevel
#FIXED_LIBRARIES_TEST += LowLevelCloth
FIXED_LIBRARIES_TEST += PhysX3_x86
#FIXED_LIBRARIES_TEST += PhysX3CharacterKinematic_x86
FIXED_LIBRARIES_TEST += PhysX3CommonFixed_x86
FIXED_LIBRARIES_TEST += PhysX3Cooking_x86
#FIXED_LIBRARIES_TEST += PhysX3Extensions
#FIXED_LIBRARIES_TEST += PhysXProfileSDK
#FIXED_LIBRARIES_TEST += PxTask
#FIXED_LIBRARIES_TEST += SceneQuery
#FIXED_LIBRARIES_TEST += SimulationController
FIXED_LFLAGS_TEST :=
FIXED_LFLAGS_TEST += $(addprefix -L, $(LPATH_TEST))
FIXED_LFLAGS_TEST += -Wl,--start-group $(addprefix -l, $(FIXED_LIBRARIES_TEST)) -Wl,--end-group




all:bad fixed
bad:
	"$(FLASCC)/usr/bin/g++" $(CFLAGS_TEST)  badcase.cpp  $(LFLAGS_TEST)  -o badCase.exe
fixed:
	"$(FLASCC)/usr/bin/g++" $(CFLAGS_TEST)  badcase.cpp  $(FIXED_LFLAGS_TEST)  -o fixedCase.exe
