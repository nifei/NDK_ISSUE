LOCAL_PATH := $(call my-dir)/..  # testB
include $(CLEAR_VARS)

LOCAL_MODULE := static_b
# output: libstatic_b.a
# provide: android side socket

LOCAL_SRC_FILES := $(LOCAL_PATH)/testb.cpp

LOCAL_C_INCLUDES += $(LOCAL_PATH)/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../ # src

LOCAL_LDLIBS += -L$(NDK_ROOT)/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi/ -lgnustl_static 

include $(BUILD_STATIC_LIBRARY)
