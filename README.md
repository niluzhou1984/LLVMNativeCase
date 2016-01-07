#基于原生llvm-2.9的Physx测试例

##编译

##Cygwin环境依赖
	cygwin需要安装gcc-g++ compiler

###一键编译
	sh localDirName/rebuildAll.sh

###分开编译

	step1 sh localDirName/PhysXSDK/build.sh
	step2 sh localDirName/llvmCase/build.sh

##运行

在localDirName/llvmCase, 有两种方式运行 执行

	sh runcase.sh  //执行llvm bc文件
	./llvm.exe     //执行二进制文件 


#Test Case For Physx Under llvm-2.9

##Compile

##Package Dependencies For Cygwin

*gcc-g++ compiler

###On-key Compilation of All

	sh localDirName/rebuildAll.sh

###Compilation of Physx And Test Case

	step1 sh localDirName/PhysXSDK/build.sh
	step2 sh localDirName/llvmCase/build.sh

##Run

There are two different ways to run test case  under directory localDirName/llvmCase：

	sh runcase.sh  //run llvm bytecode 
	./llvm.exe     //run binary executable file

 

