ifeq ($(BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET),)
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

COMMON_INCLUDES :=
COMMON_INCLUDES += $(TARGET_OUT_HEADERS)/qmi-framework/inc
COMMON_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/../gen/SHARED_LIBRARIES/libssc_intermediates/proto
COMMON_INCLUDES += $(LOCAL_PATH)/../../ssc
COMMON_INCLUDES += $(LOCAL_PATH)/../../sensors-log

LOCAL_HEADER_LIBRARIES += \
    libloc_api_v02_headers

LOCAL_C_INCLUDES := $(COMMON_INCLUDES)
LOCAL_C_INCLUDES += $(shell find $(LOCAL_PATH) -type d -name 'inc' -print )

LOCAL_MODULE := sns_ext_svc_test
LOCAL_CLANG := true
LOCAL_MODULE_OWNER := qti
LOCAL_PROPRIETARY_MODULE := true

LOCAL_SHARED_LIBRARIES += libutils
LOCAL_SHARED_LIBRARIES += libprotobuf-cpp-full
LOCAL_SHARED_LIBRARIES += libsensorslog
LOCAL_SHARED_LIBRARIES += libcutils
LOCAL_SHARED_LIBRARIES += liblog
LOCAL_SHARED_LIBRARIES += libssc
LOCAL_SHARED_LIBRARIES += libloc_api_v02

LOCAL_SRC_FILES += \
  $(shell find $(LOCAL_PATH)/* -name '*.cpp' | grep  'src/.*\.cpp' | sed s:^$(LOCAL_PATH)/::g )

LOCAL_CFLAGS += -Wall -Wextra -Werror -Wno-missing-field-initializers -Wno-maybe-uninitialized

LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
endif
