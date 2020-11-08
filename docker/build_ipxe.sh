cd /share/ipxe/src
sed -i "s/^\/\/\(#define\tVMWARE\)/\1/" config/settings.h
make bin/8086100f.mrom
cp bin/8086100f.mrom /share/build
git checkout .
