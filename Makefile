# Copyright (C) 2018-2021 Lienol <lawlienol@gmail.com>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-ipsec-server

PKG_MAINTAINER:=Lienol <lawlienol@gmail.com>

LUCI_TITLE:=LuCI support for IPSec VPN Server
LUCI_DEPENDS:=+kmod-tun +luci-lib-jsonc +strongswan +strongswan-minimal +strongswan-mod-kernel-libipsec +strongswan-mod-openssl +strongswan-mod-xauth-generic +strongswan-mod-eap-mschapv2 +strongswan-mod-dhcp +strongswan-mod-farp +xl2tpd
LUCI_PKGARCH:=all

define Package/$(PKG_NAME)/conffiles
/etc/config/luci-app-ipsec-server
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
