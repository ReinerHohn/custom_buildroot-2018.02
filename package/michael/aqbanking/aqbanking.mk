################################################################################
#
# aqbanking
#
################################################################################

AQBANKING_VERSION = 4.20.0 
AQBANKING_SITE = https://www.aquamaniac.de/sites/download/download.php?package=03\&release=217\&file=02\&dummy=aqbanking-5.7.8.tar.gz
AQBANKING_SITE_METHOD = wget
AQBANKING_INSTALL_TARGET = YES
AQBANKING_INSTALL_STAGING = YES

# AQBANKING_INSTALL_STAGING_OPTS = DESTDIR=$(STAGING_DIR)  
AQBANKING_CONF_OPTS = --with-gwen-dir=$(STAGING_DIR)/usr --with-xmlmerge=/usr/bin/xmlmerge

AQBANKING_DEPENDENCIES += gwenhywfar ktoblzcheck xmlsec1

$(eval $(autotools-package))
