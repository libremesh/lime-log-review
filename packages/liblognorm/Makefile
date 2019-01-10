#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=liblognorm
PKG_VERSION:=2.0.4
PKG_RELEASE:=2

PKG_SOURCE_URL:=http://www.liblognorm.com/files/download/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SHA256SUM:=730175b6e4e8818c31a60f614f8ba38aae4f8edbeb50d0e34236749e5d20b3a3

PKG_MAINTAINER:=Nicolas Pace <nico@libre.ws>
PKG_LICENSE:=LGPL-2.1+
PKG_LICENSE_FILES:=COPYING

PKG_FIXUP:=autoreconf
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=$(PKG_NAME)
  URL:=http://www.liblognorm.com/
  DEPENDS:=+libestr +libfastjson
endef

define Package/$(PKG_NAME)/description
  Liblognorm is a fast-samples based normalization library.
endef

TARGET_CFLAGS += $(FPIC)	

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/

	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/liblognorm.so* $(1)/usr/lib/

	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/lognormalizer $(1)/usr/bin/
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/liblognorm.so* $(1)/usr/lib/

	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/lognormalizer $(1)/usr/bin/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
