################################################################################
#
# pigpio
#
################################################################################

LIBPIGPIO_VERSION = 1
LIBPIGPIO_SOURCE = pigpio.tar
LIBPIGPIO_SITE = abyz.me.uk/rpi/pigpio
LIBFOO_SITE_METHOD = wget
LIBPIGPIO_LICENSE = None
LIBPIGPIO_LICENSE_FILES = UNLICENCE

define LIBPIGPIO_EXTRACT_CMDS
	$(TAR) xf $(DL_DIR)/$(LIBPIGPIO_SOURCE) -C $(@D)
endef

define LIBPIGPIO_BUILD_CMDS
	$(MAKE1) CROSS_PREFIX="$(TARGET_CROSS)" -C $(@D)/PIGPIO
endef

define LIBPIGPIO_INSTALL_TARGET_CMDS
	$(MAKE1) -C $(@D)/PIGPIO DESTDIR=$(TARGET_DIR) install
endef

$(eval $(generic-package))
