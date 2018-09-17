################################################################################
#
# gwenhywfar
#
################################################################################

GWENHYWFAR_VERSION = 4.20.0 
#GWENHYWFAR_SOURCE = 
GWENHYWFAR_SITE = https://www.aquamaniac.de/sites/download/download.php?package=01\&release=208\&file=02\&dummy=gwenhywfar-4.20.0.tar.gz
#GWENHYWFAR_SITE = https://git.aquamaniac.de/git/gwenhywfar 
GWENHYWFAR_SITE_METHOD = wget
GWENHYWFAR_INSTALL_STAGING = YES
GWENHYWFAR_INSTALL_TARGET = NO
GWENHYWFAR_CONF_OPTS = --prefix=$(STAGING_DIR)/usr --host=$(GNU_TARGET_NAME) --build=$(GNU_HOST_NAME) --disable-binreloc #--with-libiconv-prefix=$(STAGING_DIR)/usr
GWENHYWFAR_DEPENDENCIES = #libglib2 host-pkgconf

$(eval $(autotools-package))
