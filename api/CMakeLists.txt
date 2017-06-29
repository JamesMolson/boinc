include_directories(${CMAKE_BINARY_DIR} ${CMAKE_SOURCE_DIR}/api ${CMAKE_SOURCE_DIR}/lib)

SET(BOINC_API_SOURCES ${BOINC_API_SOURCES})

if(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
        include_directories(${CMAKE_SOURCE_DIR}/lib/mac)
endif(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")

IF(FORTRAN)
	add_library(boinc_api_fortran.o OBJECT boinc_api_fortran.cpp )
ENDIF(FORTRAN)


add_library(boinc_api STATIC boinc_api.cpp reduce_main.cpp graphics2_util.cpp)

add_library(boinc_graphics2 STATIC graphics2.cpp graphics2_unix.cpp reduce_lib.cpp gutil.cpp gutil_text.cpp)
add_library(boinc_opencl STATIC boinc_opencl.cpp)
