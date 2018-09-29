################################################################################
#
# scantailor
#
################################################################################

#SCANTAILOR_VERSION = RELEASE_0_9_11
SCANTAILOR_EXTRACT_CMDS = unzip $(SCANTAILOR_DL_DIR)/master.zip -d $(BUILD_DIR) && mv $(BUILD_DIR)/scantailor-advanced-master/* $(BUILD_DIR)/scantailor
SCANTAILOR_SOURCE = master.zip
SCANTAILOR_SITE = https://github.com/4lex4/scantailor-advanced/archive
SCANTAILOR_SITE_METHOD = wget
SCANTAILOR_INSTALL_TARGET = YES
SCANTAILOR_INSTALL_STAGING = YES

# SCANTAILOR_INSTALL_STAGING_OPTS = DESTDIR=$(STAGING_DIR)  
#SCANTAILOR_CONF_OPTS = --with-gwen-dir=$(STAGING_DIR)/usr --with-xmlmerge=/usr/bin/xmlmerge

#SCANTAILOR_DEPENDENCIES += gwenhywfar ktoblzcheck xmlsec1

$(eval $(cmake-package))
