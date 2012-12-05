LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_STATIC_JAVA_LIBRARIES := libhello android-support-v4 

LOCAL_SRC_FILES := \
        $(call all-java-files-under, src) \

LOCAL_PACKAGE_NAME := HelloApkJar

# We need the sound recorder for the Media Capture API.

include $(BUILD_PACKAGE)
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := libhello:libs/hello.jar  

include $(BUILD_MULTI_PREBUILT)

# additionally, build tests in sub-folders in a separate .apk
include $(call all-makefiles-under,$(LOCAL_PATH))
