################################################################################
#
# xmlsec1
#
################################################################################

XMLSEC1_VERSION = 1.2.26 
XMLSEC1_SITE = http://www.aleksey.com/xmlsec/download
XMLSEC1_SITE_METHOD = wget
XMLSEC1_INSTALL_STAGING = YES
#XMLSEC1_INSTALL_TARGET = NO

LIBFOO_AUTORECONF=YES
LIBFOO_AUTORECONF_OPTS=

XMLSEC1_INSTALL_STAGING_OPTS = DESTDIR=$(STAGING_DIR) install 
XMLSEC1_CONF_OPTS = # --disable-binreloc --with-openssl-includes=$(STAGING_DIR)/usr --with-guis=''  
XMLSEC1_DEPENDENCIES = libxml2 libtool libxslt

$(eval $(autotools-package))
