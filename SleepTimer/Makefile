target = appletv

export CODESIGN_ENTITLEMENT = ../SleepTimer.entitlements

include $(THEOS)/makefiles/common.mk

INSTALL_TARGET_PROCESSES = TVSystemMenuService

BUNDLE_NAME = SleepTimer

SleepTimer_FILES = AlarmModalViewController.m SLPSleepTimerModule.m
SleepTimer_INSTALL_PATH = /Library/TVSystemMenuModules
SleepTimer_FRAMEWORKS = UIKit
SleepTimer_PRIVATE_FRAMEWORKS = TVSystemMenuUI PineBoardServices
SleepTimer_CODESIGN_FLAGS = -S$(CODESIGN_ENTITLEMENT)
SleepTimer_CFLAGS = -Wno-deprecated -Wno-deprecated-declarations -fobjc-arc -ObjC -D THEOSBUILD=1 -D HBLogError=NSLog -w -F../Frameworks # -I.
SleepTimer_LDFLAGS += -F../Frameworks -I.

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)rm -r ./Resources/*.storyboardc || true$(ECHO_END)
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/TVSystemMenuModules$(ECHO_END)
	$(ECHO_NOTHING)ibtool --compile ./Resources/Main.storyboardc ./Main.storyboard$(ECHO_END)
	$(ECHO_NOTHING)ldid -S../SleepTimer.entitlements .theos/obj/appletv/debug/SleepTimer.bundle/SleepTimer$(ECHO_END)
