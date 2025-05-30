KERNEL_NAME := mrkernel_exynos2200
BRAND := mrkernel

## Size optimizations
# Use LTO, optimize for size, disable debug
KBUILD_CFLAGS += -Os -flto -fdata-sections -ffunction-sections
KBUILD_AFLAGS += -Os -flto
KBUILD_LDFLAGS += -Wl,--gc-sections -Wl,--strip-debug -flto

TARGET_ARCH := arm64
CROSS_COMPILE := aarch64-linux-gnu-

## Post-build stripping and compression
post-build:
	arm64-linux-gnu-strip --strip-unneeded $(O)/vmlinux
	mkimage -A arm64 -O linux -T kernel -C lzma \
	  -a 0x40000000 -e 0x40000000 -n "mrkernel" \
	  -d $(O)/vmlinux $(O)/Image.lzma
	@echo "Ready kernel size: $(shell ls -lh $(O)/Image.lzma | awk '{print $$5}')"

all:
	$(MAKE) $(KBUILD_OPTIONS)
