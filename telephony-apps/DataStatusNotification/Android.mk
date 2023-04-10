ifneq ($(TARGET_NO_TELEPHONY), true)
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_PROGUARD_ENABLED := disabled

LOCAL_SRC_FILES := $(call all-subdir-java-files)
LOCAL_SDK_VERSION := current
LOCAL_PACKAGE_NAME := datastatusnotification
LOCAL_CERTIFICATE := platform
LOCAL_JAVA_LIBRARIES := qcrilhook telephony-common

include $(BUILD_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))
endif # TARGET_NO_TELEPHONY
