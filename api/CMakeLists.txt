include_directories(${CMAKE_BINARY_DIR} ${CMAKE_SOURCE_DIR}/api ${CMAKE_SOURCE_DIR}/lib)

SET(BOINC_GRAPHICS2_SOURCES graphics2.cpp reduce_lib.cpp gutil.cpp gutil_text.cpp)

if(WIN32)
	SET(BOINC_GRAPHICS2_SOURCES ${BOINC_GRAPHICS2_SOURCES} graphics2_win.cpp ${CMAKE_SOURCE_DIR}/samples/image_libs/bmplib.cpp ${CMAKE_SOURCE_DIR}/samples/image_libs/tgalib.cpp)
	include_directories(${CMAKE_SOURCE_DIR}/samples/image_libs)
else()
	SET(BOINC_GRAPHICS2_SOURCES ${BOINC_GRAPHICS2_SOURCES} graphics2_unix.cpp )
endif(WIN32)

if(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
	include_directories(${CMAKE_SOURCE_DIR}/lib/mac)
	SET(BOINC_GRAPHICS2_SOURCES ${BOINC_GRAPHICS2_SOURCES} mac_icon.cpp macglutfix.m )
endif(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")

IF(FORTRAN)
	add_library(boinc_api_fortran.o OBJECT boinc_api_fortran.cpp )
ENDIF(FORTRAN)

add_library(boinc_api STATIC boinc_api.cpp reduce_main.cpp graphics2_util.cpp)

add_library(boinc_graphics2 STATIC ${BOINC_GRAPHICS2_SOURCES})

add_library(boinc_opencl STATIC boinc_opencl.cpp)
