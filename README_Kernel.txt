################################################################################
1. How to Build
        - get Toolchain
                get the proper toolchain packages from AOSP or CodeSourcery or ETC.

        - edit Makefile
                edit "CROSS_COMPILE" to right toolchain path(You downloaded).
                        EX)  CROSS_COMPILE=<android platform directory you download>/android/prebuilts/clang/host/linux-x86/clang-r416183b/bin/aarch64-linux-gnu-
                        EX)  CROSS_COMPILE=/usr/local/toolchain/clang/host/linux-x86/clang-r416183b/bin/aarch64-linux-gnu- // check the location of toolchain
                edit "CLANG" to right path(You downloaded).
                        EX)  CC=<android platform directory you download>/android/prebuilts/clang/host/linux-x86/clang-r416183b/bin/clang
                        EX)  CC=/usr/local/toolchain/clang/host/linux-x86/clang-r416183b/bin/clang // check the location of toolchain
                edit "CLANG_TRIPLE" to right path(You downloaded).
                        EX)  CLANG_TRIPLE=<android platform directory you download>/android/prebuilts/clang/host/linux-x86/clang-r416183b/bin/aarch64-linux-gnu-
                        EX)  CLANG_TRIPLE=/usr/local/toolchain/clang/host/linux-x86/clang-r416183b/bin/aarch64-linux-gnu- // check the location of toolchain     
        - to Build
                $ export PLATFORM_VERSION=12
                $ export ANDROID_MAJOR_VERSION=s
                $ export PATH=/home/jgudec/Exynos2200/toolchain/clang/host/linux-x86/clang-r416183b/bin/:$PATH
                $ export PATH=/home/jgudec/build-tools/path/linux-x86:$PATH
                $ export PATH=/home/jgudec/gas/linux-x86:$PATH
                $ export TARGET_SOC=s5e9925
                $ export LLVM=1 LLVM_IAS=1
                $ export ARCH=arm64
                $ make s5e9925-r0sxxx_defconfig
                $ make

2. Output files
        - Kernel : arch/arm64/boot/Image
        - module : drivers/*/*.ko

3. How to Clean
        $ make clean
################################################################################

export CROSS_COMPILE=/home/jgudec/Exynos2200/toolchain/clang/host/linux-x86/clang-r416183b/bin/aarch64-linux-gnu-
export CC=/home/jgudec/Exynos2200/toolchain/clang/host/linux-x86/clang-r416183b/bin/clang
export CLANG_TRIPLE=/home/jgudec/Exynos2200/toolchain/clang/host/linux-x86/clang-r416183b/bin/aarch64-linux-gnu-
export PLATFORM_VERSION=12
export ANDROID_MAJOR_VERSION=s
export PATH=/home/jgudec/Exynos2200/toolchain/clang/host/linux-x86/clang-r416183b/bin/:$PATH
export PATH=/home/jgudec/build-tools/path/linux-x86:$PATH
export PATH=/home/jgudec/gas/linux-x86:$PATH
export TARGET_SOC=s5e9925
export LLVM=1 LLVM_IAS=1
export ARCH=arm64
make s5e9925-r0sxxx_defconfig