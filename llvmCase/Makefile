#!/usr/bin/make
export LD_LIBRARY_PATH :=../PhysXSDK/Lib/cygwin32_llvm: $(LD_LIBRARY_PATH)

LPATH_TEST :=
LPATH_TEST += ../PhysXSDK/Lib/cygwin32_llvm

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
LIBRARIES_TEST += PhysX3Common_x86
LIBRARIES_TEST += PhysXProfileSDK
LIBRARIES_TEST += LowLevel
LIBRARIES_TEST += LowLevelCloth
LIBRARIES_TEST += PxTask
LIBRARIES_TEST += PhysX3Extensions
LIBRARIES_TEST += SceneQuery
LIBRARIES_TEST += SimulationController
LIBRARIES_TEST += PhysX3Cooking_x86
LIBRARIES_TEST += PhysX3_x86
LIBRARIES_TEST += PhysX3CharacterKinematic_x86

DEFINES_TEST += __CYGWIN__ __CROSSBRIDGE__ NDEBUG  
CFLAGS_TEST :=
CFLAGS_TEST += $(addprefix -D, $(DEFINES_TEST))
CFLAGS_TEST += -fno-rtti  -fexceptions   -emit-llvm
CFLAGS_TEST += $(addprefix -I, $(IPATH_TEST))

LFLAGS_TEST :=  $(addsuffix .a, $(addprefix $(LPATH_TEST)/lib, $(LIBRARIES_TEST))) 

BUILD_DIR=./build


LIB_OBJS := $(LIBRARIES_TEST)


clean:
	rm  -rf $(BUILD_DIR)
	rm *.bc *.exe

all: pregenerate generate_bc generate_exe

pregenerate:
	mkdir -p $(BUILD_DIR)
	
generate_bc:
	"../llvm/bin/llvm-g++"  -c $(CFLAGS_TEST) llvmcase.cpp  -o $(BUILD_DIR)/llvmcase.cpp.o
	"../llvm/bin/llvm-link" -o llvmcase.bc $(BUILD_DIR)/llvmcase.cpp.o $(LFLAGS_TEST)
	
generate_exe:$(LIB_OBJS)
	"../llvm/bin/llc" -filetype=obj $(BUILD_DIR)/llvmcase.cpp.o -o $(BUILD_DIR)/llvmcase.o
	"../llvm/bin/llvm-g++"  $(addsuffix .o, $(addprefix $(BUILD_DIR)/lib, $(LIB_OBJS))) $(BUILD_DIR)/llvmcase.o -o llvm.exe
	

$(LIB_OBJS):
	"../llvm/bin/llc"  $(addsuffix .a, $(addprefix $(LPATH_TEST)/lib, $@)) -o $(addsuffix .s, $(addprefix $(BUILD_DIR)/lib, $@))
	"../llvm/bin/llvm-g++" -c $(addsuffix .s, $(addprefix $(BUILD_DIR)/lib, $@)) -o $(addsuffix .o, $(addprefix $(BUILD_DIR)/lib, $@))
