#!/bin/bash -eu

cd /share/bitvisor
bear make -j$(nproc)
make -C boot/uefi-loader -j$(nproc)
cp /share/bitvisor/bitvisor.elf /share/build
cp /share/bitvisor/boot/uefi-loader/loadvmm.efi /share/build

