LOCAL_PATH := $(call my-dir)/..  # testSo
include $(CLEAR_VARS)

LOCAL_MODULE := nifei
# output: libnifei.so
# provide: jni interface impl

LOCAL_SRC_FILES := $(LOCAL_PATH)/test.cpp

LOCAL_C_INCLUDES += $(LOCAL_PATH)/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../ # src

LOCAL_STATIC_LIBRARIES += libstatic_a
LOCAL_STATIC_LIBRARIES += libstatic_b
LOCAL_STATIC_LIBRARIES += libstatic_c

LOCAL_LDLIBS += -L$(LOCAL_PATH)/../testA/obj/local/armeabi/ -lstatic_a
LOCAL_LDLIBS += -L$(LOCAL_PATH)/../testB/obj/local/armeabi/ -lstatic_b
LOCAL_LDLIBS += -L$(LOCAL_PATH)/../testC/obj/local/armeabi/ -lstatic_c

LOCAL_LDLIBS += -L$(NDK_ROOT)/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi -lgnustl_static 

include $(BUILD_SHARED_LIBRARY)
