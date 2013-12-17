make -j4 TARGET_PRODUCT=aa66
mkdir -p out/system/lib/modules
for line in $(find . -name *.ko | grep -v system/lib); do 
     echo "$line"
     cp "$line" out/system/lib/modules/
done
../mediatek/build/tools/mkimage arch/arm/boot/zImage KERNEL > out/zImage
repack-MT65xx.pl -boot out/zImage ../ramdisk out/boot.img
