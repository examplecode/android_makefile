# 编译此模块前确保已经编译过了 helloStaticLib
LOCAL_PATH := $(call my-dir)


include $(CLEAR_VARS)

LOCAL_C_INCLUDES := packages/android_make_demo/helloStaicLib

LOCAL_MODULE_TAGS := test

LOCAL_SRC_FILES:= main.c
LOCAL_MODULE:= say_hello_static

LOCAL_STATIC_LIBRARIES := libhello_static
#LOCAL_SHARED_LIBRARIES :=

include $(BUILD_EXECUTABLE) 

