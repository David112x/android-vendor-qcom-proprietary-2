##################################################################
# THIS FILE IS AUTOGENERATED BY MAKEMEISTER. DO NOT EDIT!
##################################################################

# User Variables
set (SUPPORT_FUNCTION_CALL_TRACE 1)

# Custom additions (begin)

add_custom_command (
        OUTPUT
		${CAMX_VENDOR_PATH}/chioverride/default/g_pipelines.h
        DEPENDS
		${CAMX_VENDOR_PATH}/topology/default/titan17x_usecases.xml
        COMMAND pwd
        COMMAND perl
		${CAMX_CDK_PATH}/topology/usecaseconverter.pl
		${CAMX_VENDOR_PATH}/topology/default/titan17x_usecases.xml
		${CAMX_VENDOR_PATH}/chioverride/default/g_pipelines.h
        COMMENT "Generate Usecases"
        )

add_custom_target (autogenUsecases
        DEPENDS
		${CAMX_VENDOR_PATH}/chioverride/default/g_pipelines.h
        )

# Common Include
include (${CAMX_CDK_PATH}/../common.cmake)

# Files and Build Type
add_library( com.qti.chi.override SHARED
    ../../chxadvancedcamerausecase.cpp
    ../../chxextensioninterface.cpp
    ../../chxextensionmodule.cpp
    ../../chxfeaturehdr.cpp
    ../../chxfeatureshdr.cpp
    ../../chxfeaturemultiframe.cpp
    ../../chxfeaturemfnr.cpp
    ../../chxfeatureyuvcb.cpp
    ../../chxfeaturezsl.cpp
    ../../chxfeaturerawjpeg.cpp
    ../../chxmulticamcontroller.cpp
    ../../chxpipeline.cpp
    ../../chxsensorselectmode.cpp
    ../../chxsession.cpp
    ../../chxusecase.cpp
    ../../chxusecasedefault.cpp
    ../../chxusecasemc.cpp
    ../../chxusecasevrmc.cpp
    ../../chxusecasequadcfa.cpp
    ../../chxusecasetorch.cpp
    ../../chxusecaseutils.cpp
    ../../chxutils.cpp
    ../../chxperf.cpp
    ../../chxzoomtranslator.cpp
)

# Libraries to compile
target_link_libraries (com.qti.chi.override dl)
target_link_libraries (com.qti.chi.override cutils)
target_link_libraries (com.qti.chi.override log)
target_link_libraries (com.qti.chi.override sync)
target_link_libraries (com.qti.chi.override gbm)
target_link_libraries (com.qti.chi.override camera_metadata)

# Include Paths
include_directories (${CAMX_C_INCLUDES})
include_directories (../..)
include_directories (${CAMX_CDK_PATH}/utils)
include_directories (${CAMX_CDK_PATH}/common)

# Dependencies
add_dependencies (com.qti.chi.override autogenUsecases)

# Definitions
add_definitions (${CAMX_CFLAGS})
add_definitions (${CAMX_CPPFLAGS})
# NO DATA FOR SECTION: Custom additions (end)

# Auto-Gen
#add_dependencies(com.qti.chi.override autogen)

install(TARGETS com.qti.chi.override LIBRARY DESTINATION lib/hw)

if (CONFIG STREQUAL "Debug")
    add_definitions( -g )
endif()

