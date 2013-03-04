# 编译此模块前确保已经编译过了 helloShareLib
LOCAL_PATH := $(call my-dir)


include $(CLEAR_VARS)

LOCAL_C_INCLUDES := packages/android_make_demo/helloShareLib

LOCAL_MODULE_TAGS := test

LOCAL_SRC_FILES:= main.c
LOCAL_MODULE:= say_hello_share

LOCAL_SHARED_LIBRARIES := libhello_shared
#LOCAL_SHARED_LIBRARIES :=

include $(BUILD_EXECUTABLE) 

