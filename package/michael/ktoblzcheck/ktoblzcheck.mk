################################################################################
#
# ktoblzcheck
#
################################################################################

KTOBLZCHECK_VERSION = 1.49
#KTOBLZCHECK_SOURCE = 
KTOBLZCHECK_SITE = https://sourceforge.net/projects/ktoblzcheck/files 
KTOBLZCHECK_SITE_METHOD = wget
# KTOBLZCHECK_INSTALL_TARGET = YES
KTOBLZCHECK_INSTALL_STAGING = YES

KTOBLZCHECK_INSTALL_STAGING_OPTS = DESTDIR=$(STAGING_DIR) install 
KTOBLZCHECK_CONF_OPTS = --disable-binreloc   
KTOBLZCHECK_DEPENDENCIES = gwenhywfar

$(eval $(autotools-package))
