#
# Copyright (C) 2015 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libfingerprintd_binder
LOCAL_PROPRIETARY_MODULE := true

LOCAL_SRC_FILES := \
        FingerprintDaemonCallbackProxy.cpp \
        FingerprintDaemonProxy.cpp \
        IFingerprintDaemon.cpp \
        IFingerprintDaemonCallback.cpp

LOCAL_SHARED_LIBRARIES := \
    libbinder \
    liblog \
    libhardware \
    libutils \
    libcutils \
    libkeystore_binder

LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
