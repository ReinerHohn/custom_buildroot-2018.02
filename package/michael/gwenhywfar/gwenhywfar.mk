################################################################################
#
# gwenhywfar
#
################################################################################

GWENHYWFAR_VERSION = 4.20.0 
GWENHYWFAR_SITE = https://www.aquamaniac.de/sites/download/download.php?package=01\&release=208\&file=02\&dummy=gwenhywfar-4.20.0.tar.gz
GWENHYWFAR_SITE_METHOD = wget
GWENHYWFAR_INSTALL_STAGING = YES
# GWENHYWFAR_INSTALL_TARGET = NO

GWENHYWFAR_MAKE_OPTS= prefix=$(STAGING_DIR) exec_prefix=$(STAGING_DIR) bindir=$(STAGING_DIR)/usr/bin libdir=$(STAGING_DIR)/usr/lib
GWENHYWFAR_CONF_OPTS = --with-plugin-searchdir=/usr/lib/gwenhywfar/plugins --disable-binreloc --with-openssl-includes=$(STAGING_DIR)/usr --with-guis='' #--prefix=$(STAGING_DIR)/usr
GWENHYWFAR_DEPENDENCIES = gnutls libgcrypt

$(eval $(autotools-package))
