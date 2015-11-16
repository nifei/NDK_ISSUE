APP_MODULES := libstatic_a
APP_PLATFORM := android-9
APP_ABI := armeabi
APP_STL := gnustl_static
APP_CPPFLAGS += -lstdc++
APP_CPPFLAGS += -std=c++11
APP_CPPFLAGS += -fexceptions
APP_CPPFLAGS += -frtti

APP_LDFLAGS  += -L$(NDK_ROOT)/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi -lgnustl_static 

NDK_TOOLCHAIN_VERSION := 4.8
