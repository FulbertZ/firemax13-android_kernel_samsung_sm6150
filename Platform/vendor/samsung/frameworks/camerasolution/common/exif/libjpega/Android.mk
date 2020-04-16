LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE:= libjpega
LOCAL_MODULE_TAGS := optional
LOCAL_REQUIRED_MODULES := libjpega.camera.samsung

LOCAL_POST_INSTALL_CMD := $(LOCAL_POST_INSTALL_CMD) \
	$(ADD_PUBLIC_SCRIPT) "libjpega.camera.samsung.so" "$(SYS_PUBLIC_LIB_CAMERA_TXT)";

include $(BUILD_PHONY_PACKAGE)