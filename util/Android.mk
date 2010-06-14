LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	neo_err.c \
	neo_files.c \
	neo_misc.c \
	neo_rand.c \
	ulist.c \
	neo_hdf.c \
	neo_str.c \
	neo_date.c \
	wildmat.c \
	ulocks.c \
	neo_hash.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/..
LOCAL_CFLAGS := -fPIC

# This forces a 64-bit build for Java6
ifneq ($(filter 1.6%,$(java_version)),)
    LOCAL_CFLAGS += -m64
    LOCAL_LDFLAGS += -m64
endif

LOCAL_NO_DEFAULT_COMPILER_FLAGS := true

LOCAL_MODULE:= libneo_util

include $(BUILD_HOST_SHARED_LIBRARY)
