#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:13143340:80f51999ebcfca96f94e1687f07272794d5fe7f8; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:12367144:c40c0add3d4ed298c9a54e17384dbdb5a821d95a EMMC:/dev/block/bootdevice/by-name/recovery 80f51999ebcfca96f94e1687f07272794d5fe7f8 13143340 c40c0add3d4ed298c9a54e17384dbdb5a821d95a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
