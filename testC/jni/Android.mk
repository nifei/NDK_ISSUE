LOCAL_PATH := $(call my-dir)/..  # testB
include $(CLEAR_VARS)

LOCAL_MODULE := static_c
# output: libstatic_c.a
# provide: android side socket

LOCAL_SRC_FILES += $(LOCAL_PATH)/testc.cpp
LOCAL_SRC_FILES += $(LOCAL_PATH)/../testA/obj/local/armeabi/libstatic_a.a
LOCAL_SRC_FILES += $(LOCAL_PATH)/../testB/obj/local/armeabi/libstatic_b.a

LOCAL_STATIC_MODULES += libstatic_a
LOCAL_STATIC_MODULES += libstatic_b

LOCAL_C_INCLUDES += $(LOCAL_PATH)/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../ # src

LOCAL_LDLIBS += -L$(LOCAL_PATH)/testA/obj/local/armeabi/ -lstatic_a
LOCAL_LDLIBS += -L$(LOCAL_PATH)/testB/obj/local/armeabi/ -lstatic_b
LOCAL_LDLIBS += -L$(NDK_ROOT)/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi/ -lgnustl_static 

include $(BUILD_STATIC_LIBRARY)
