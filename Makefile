target = appletv

include /opt/theos/makefiles/common.mk

TWEAK_NAME = SleepTimerTweak
SleepTimerTweak_FILES = Tweak.xm
SleepTimerTweak_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += SleepTimer

include $(THEOS_MAKE_PATH)/aggregate.mk
