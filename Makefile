target = appletv
include $(THEOS)/makefiles/common.mk

INSTALL_TARGET_PROCESSES = TVSystemMenuService

TWEAK_NAME = SleepTimerTweak
BUNDLE_NAME = SleepTimer

SleepTimer_FILES = src/SLPSleepTimerModule.m
SleepTimer_INSTALL_PATH = /Library/TVSystemMenuModules
SleepTimer_FRAMEWORKS = UIKit
SleepTimer_PRIVATE_FRAMEWORKS = TVSystemMenuUI
SleepTimer_CFLAGS = -fobjc-arc -F. -I.
SleepTimer_LDFLAGS += -F. -I.

SleepTimerTweak_FILES = src/Tweak.xm
SleepTimerTweak_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/bundle.mk
include $(THEOS_MAKE_PATH)/tweak.mk

internal-stage::
	$(ECHO_NOTHING)rm -r ./src/Resources/*.storyboardc$(ECHO_END)
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/TVSystemMenuModules$(ECHO_END)
	$(ECHO_NOTHING)xcrun ibtool --errors --warnings --output-format human-readable-text --module SleepTimer --compile ./src/Resources/Main.storyboardc ./src/Main.storyboard$(ECHO_END)
