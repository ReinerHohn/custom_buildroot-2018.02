################################################################################
#
# gwenhywfar
#
################################################################################

GWENHYWFAR_VERSION = 4.20.0 
#GWENHYWFAR_SOURCE = 
GWENHYWFAR_SITE = https://www.aquamaniac.de/sites/download/download.php?package=01\&release=208\&file=02\&dummy=gwenhywfar-4.20.0.tar.gz
GWENHYWFAR_SITE_METHOD = wget
# GWENHYWFAR_INSTALL_TARGET = YES
GWENHYWFAR_INSTALL_STAGING = YES

GWENHYWFAR_MAKE_OPTS = prefix= exec_prefix= bindir=
#GWENHYWFAR_INSTALL_STAGING_OPTS = prefix= exec_prefix= bindir=  # DESTDIR=$(STAGING_DIR) #prefix=/tmp #$(STAGING_DIR) 
GWENHYWFAR_INSTALL_STAGING_OPTS = DESTDIR=$(STAGING_DIR)  
GWENHYWFAR_CONF_OPTS = --disable-binreloc --with-openssl-includes=$(STAGING_DIR)/usr --with-guis='' --disable-shared DESTDIR= --libdir=/tmp --bindir=/tmp  --prefix=/usr --exec_prefix=  #--with-libiconv-prefix=$(STAGING_DIR)/usr
GWENHYWFAR_DEPENDENCIES = #libglib2 host-pkgconf

$(eval $(autotools-package))
