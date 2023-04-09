# Copyright (c) 2017 Qualcomm Technologies, Inc.
# All Rights Reserved.
# Confidential and Proprietary - Qualcomm Technologies, Inc.
#

# This file is used to generate the autogenerated code and blueprint/makefiles for the
# hals in vendor.qti.hardware.wigig.supptunnel@1.0 service

hidl-gen -Landroidbp -r vendor.qti.hardware.wigig:vendor/qcom/proprietary/interfaces/wigig -randroid.hidl:system/libhidl/transport vendor.qti.hardware.wigig.supptunnel@1.0
hidl-gen -Lmakefile -r vendor.qti.hardware.wigig:vendor/qcom/proprietary//interfaces/wigig/ -randroid.hidl:system/libhidl/transport vendor.qti.hardware.wigig.supptunnel@1.0
# generates c++ implementation stubs - run this only once
#hidl-gen -o vendor/qcom/proprietary/wigig/hal/supptunnel -Lc++-impl -r vendor.qti.hardware.wigig:vendor/qcom/proprietary/interfaces/wigig -randroid.hidl:system/libhidl/transport vendor.qti.hardware.wigig.supptunnel@1.0