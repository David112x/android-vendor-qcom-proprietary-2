LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_PACKAGE_NAME := com.quicinc.wipoweragent
LOCAL_SRC_FILES := $(call all-java-files-under,src)
LOCAL_JAVA_LIBRARIES := com.quicinc.wbc
LOCAL_SDK_VERSION := current
LOCAL_CERTIFICATE := platform
include $(BUILD_PACKAGE)



