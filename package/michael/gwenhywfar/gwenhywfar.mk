################################################################################
#
# gwenhywfar
#
################################################################################

GWENHYWFAR_VERSION = 4.20.0 
#GWENHYWFAR_SOURCE = 
GWENHYWFAR_SITE = https://www.aquamaniac.de/sites/download/download.php?package=01\&release=208\&file=02\&dummy=gwenhywfar-4.20.0.tar.gz
GWENHYWFAR_SITE_METHOD = wget
GWENHYWFAR_INSTALL_STAGING = YES
GWENHYWFAR_INSTALL_TARGET = NO
GWENHYWFAR_CONV_ENV = "$(DESTDIR) = /tmp"
GWENHYWFAR_CONF_OPTS = --disable-binreloc --with-openssl-includes=$(STAGING_DIR)/usr --with-guis='' --disable-static --prefix=/usr #--with-libiconv-prefix=$(STAGING_DIR)/usr
GWENHYWFAR_DEPENDENCIES = #libglib2 host-pkgconf

$(eval $(autotools-package))
