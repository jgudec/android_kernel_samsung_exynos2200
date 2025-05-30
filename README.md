# mrkernel Exynos2200

Custom kernel for Samsung Galaxy S22+ (Exynos2200).

## Features
- Size-optimized build (LTO, -Os, strip & lzma)
- Custom scheduler and memory tweaks
- Security hardening
- Integrated CI/CD and code style checks

### Build
\`\`\`bash
make mrkernel_defconfig ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-
make -j\$(nproc) ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-
make post-build
\`\`\`
