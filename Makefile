ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:15.0

DEBUG = 0
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = WeChatAutoLogin
WeChatAutoLogin_FILES = Tweak.xm
WeChatAutoLogin_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 WeChat"
