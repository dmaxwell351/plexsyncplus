SDKVERSION = 3

include theos/makefiles/common.mk

TWEAK_NAME = PlexSyncDisableSpaceCalc
PlexSyncDisableSpaceCalc_FILES = Tweak.xm
PlexSyncDisableSpaceCalc_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
