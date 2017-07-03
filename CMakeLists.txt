cmake_minimum_required(VERSION 3.8)

PROJECT(BOINC)

OPTION(API "Build the BOINC api libraries" ON)
OPTION(CLIENT "Build the BOINC client" ON)
OPTION(LIBS "Build BOINC libraries" ON)
OPTION(MANAGER "Build the BOINC manager" ON)
OPTION(SERVER "Build BOINC server" ON)
OPTION(ZIP "Build BOINC zip libraries" ON)
OPTION(APPS "Build BOINC apps" ON)
OPTION(FCGI "fcgi support" ON)
OPTION(FORTRAN "Build the fortran api layer" ON)

#any extra packages, including system install ones go in
#/usr/local
if(${CMAKE_SYSTEM_NAME} MATCHES "BSD")
	include_directories(SYSTEM "/usr/local/include")
endif(${CMAKE_SYSTEM_NAME} MATCHES "BSD")

#generate svn_version.h
include(${CMAKE_SOURCE_DIR}/cmake/svn_version.cmake)

#generate version.h
include(${CMAKE_SOURCE_DIR}/version.cmake)

#generate config.h
include(${CMAKE_SOURCE_DIR}/config.cmake)

file(COPY project_specific_defines.h DESTINATION ${CMAKE_BINARY_DIR})

if(API)
	add_subdirectory(${CMAKE_SOURCE_DIR}/api)
endif(API)

if(APPS)
	add_subdirectory(${CMAKE_SOURCE_DIR}/apps)
endif(APPS)

if(LIBS)
	add_subdirectory(${CMAKE_SOURCE_DIR}/lib)
endif(LIBS)

if(ZIP)
	add_subdirectory(${CMAKE_SOURCE_DIR}/zip)
endif(ZIP)

if(SERVER OR FCGI OR LIBS)
	add_subdirectory(${CMAKE_SOURCE_DIR}/sched)
	add_subdirectory(${CMAKE_SOURCE_DIR}/tools)
endif(SERVER OR FCGI OR LIBS)

if(CLIENT)
	add_subdirectory(${CMAKE_SOURCE_DIR}/client)

	#screensaver
	add_subdirectory(${CMAKE_SOURCE_DIR}/clientscr)
endif(CLIENT)

if(MANAGER)
	add_subdirectory(${CMAKE_SOURCE_DIR}/clientgui)
endif(MANAGER)

add_subdirectory(${CMAKE_SOURCE_DIR}/vda)
