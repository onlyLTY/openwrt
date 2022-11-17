# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2006-2011 OpenWrt.org

include $(TOPDIR)/rules.mk

ARCH:=i386
BOARD:=x86
BOARDNAME:=x86
FEATURES:=squashfs ext4 vdi vmdk vhdx pcmcia targz fpu boot-part rootfs-part
SUBTARGETS:=generic legacy geode 64

KERNEL_PATCHVER:=5.15

KERNELNAME:=bzImage

include $(INCLUDE_DIR)/target.mk

DEFAULT_PACKAGES += \
	partx-utils mkf2fs \
	e2fsprogs kmod-button-hotplug \
	grub2-bios-setup kmod-usb-hid kmod-mmc kmod-sdhci usbutils pciutils \
	iperf3 automount autosamba cfdisk \
	luci-app-ipsec-vpnd luci-proto-bonding luci-app-diskman block-mount dockerd

$(eval $(call BuildTarget))

$(eval $(call $(if $(CONFIG_ISO_IMAGES),SetupHostCommand,Ignore),mkisofs, \
	Please install mkisofs. , \
	mkisofs -v 2>&1 , \
	genisoimage -v 2>&1 | grep genisoimage, \
	xorrisofs -v 2>&1 | grep xorriso \
))
