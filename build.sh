make -j12 TARGET_PRODUCT=aa66
mkdir -p out
../mediatek/build/tools/mkimage arch/arm/boot/zImage KERNEL > out/zImage
repack-MT65xx.pl -boot out/zImage ../ramdisk out/boot.img
