# TODO: remove this and all checks once we suport java6 only.
java_version := $(shell java -version 2>&1 | head -n 1 | sed -e 's/[^0-9\._]//g')

include $(call all-subdir-makefiles)
