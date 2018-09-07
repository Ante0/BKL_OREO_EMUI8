#!/bin/bash
cp out/arch/arm64/boot/Image.gz tools/kernel
cd tools/
./pack_kernerimage_cmd.sh
mv kernel.img ../kernel.img
rm kernel
cd ../
echo "kernel.img created in:"
realpath kernel.img
