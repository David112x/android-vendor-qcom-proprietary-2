
ACLOCAL_AMFLAGS = -I m4

brary_includedir = $(pkgincludedir)
lib_LTLIBRARIES = libmmi_cpu.la
libmmi_cpu_la_CC = @CC@
libmmi_cpu_la_CPPFLAGS = -O2 -g -Wno-all -Wno-error -Wno-unused-parameter -I. -I$(WORKSPACE)/system/core/include $(XML2_CFLAGS) -std=c++11 -DLINUX_ENABLED $(DIAG_CFLAGS) -I../../libmmi
libmmi_cpu_la_LDFLAGS = libcutils libutils libc libc++ ../../libmmi/libmmi.la -avoid-version
# source to compile
libmmi_cpu_la_SOURCES = cpu.cpp

if USE_GLIB
libmmi_cpu_la_CPPFLAGS += -DUSE_GLIB $(GLIB_CFLAGS)
libmmi_cpu_la_LDFLAGS += $(GLIB_LIBS)
endif

if NO_UI
libmmi_cpu_la_CPPFLAGS +=  -DNO_UI
endif

if ANDROID
libmmi_cpu_la_CPPFLAGS +=  -DANDROID
endif

if USE_LIBMINIUI
libmmi_cpu_la_CPPFLAGS +=  -DUSE_LIBMINIUI
endif
