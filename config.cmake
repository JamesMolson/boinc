#See https://cmake.org/Wiki/CMake:How_To_Write_Platform_Checks

INCLUDE(CheckIncludeFiles)
INCLUDE(CheckFunctionExists)
#https://cmake.org/cmake/help/latest/module/CheckPrototypeDefinition.html
INCLUDE(CheckPrototypeDefinition)
INCLUDE(CheckSymbolExists)
INCLUDE(CheckLibraryExists)
INCLUDE(CheckTypeSize)
INCLUDE(CheckCXXSourceCompiles)
#INCLUDE(CheckCXXSymbolExists)
#INCLUDE(CheckCSourceCompiles)
INCLUDE(CheckStructHasMember)

#include(TestForANSIStreamHeaders)
#include(CheckIncludeFileCXX)
#include(TestForANSIForScope)
SET(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_SOURCE_DIR}/cmake)
FIND_PACKAGE(MySQL)

FIND_PACKAGE(GLUT)
IF(GLUT_FOUND)
        include_directories(${GLUT_INCLUDE_DIR})
        SET(CMAKE_REQUIRED_INCLUDES ${CMAKE_REQUIRED_INCLUDES} ${GLUT_INCLUDE_DIR})
ENDIF(GLUT_FOUND)


FIND_PACKAGE(OpenSSL REQUIRED STATIC)
FIND_PACKAGE(Threads REQUIRED STATIC)
FIND_PACKAGE(ZLIB REQUIRED STATIC)
FIND_PACKAGE(Freetype REQUIRED STATIC)
FIND_PACKAGE(Backtrace)

FIND_PACKAGE(wxWidgets REQUIRED)
#FIND_PACKAGE(GTK 2.6 REQUIRED gtk)
FIND_PACKAGE(PkgConfig REQUIRED)
pkg_check_modules(GTK3 REQUIRED gtk+-3.0)
FIND_PACKAGE(X11)
FIND_PACKAGE(CURL REQUIRED STATIC)

#/* Define to 1 if the xgetbv instruction can be used in inline assember */
#cmakedefine ASM_SUPPORTS_XGETBV

#/* Directory where BOINC executables will be installed */
SET(BOINC_EXECPREFIX ${CMAKE_INSTALL_PREFIX}/bin)

#/* Directory where BOINC libraries will be installed */
SET(BOINC_LIBDIR ${CMAKE_INSTALL_PREFIX}/lib)

#/* Directory tree where BOINC will be installed */
SET(BOINC_PREFIX ${CMAKE_INSTALL_PREFIX})

#/* Define to 1 if CYGWIN should use the WIN32 GUI */
#cmakedefine CYGWIN_USE_WIN32

#/* Define to 1 if compiling under OS X 10.3 or earlier */
if(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
	STRING(REGEX MATCH "^([0-9]*)" OSX_REL ${CMAKE_SYSTEM_VERSION})
	STRING(COMPARE LESS_EQUAL "7" ${OSX_REL} DARWIN_10_3)
	MESSAGE(STATUS "Compiling under OS X 10.3 or earlier: ${DARWIN_10_3}")
endif(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")

#/* Define to the platform's shared library extension */
SET(DLLEXT ${CMAKE_SHARED_LIBRARY_SUFFIX})

#/* Use the Apple OpenGL framework. */
#cmakedefine HAVE_APPLE_OPENGL_FRAMEWORK

#/* Define to 1 if you have the <arpa/inet.h> header file. */
CHECK_INCLUDE_FILES(arpa/inet.h HAVE_ARPA_INET_H)

#/* Define to 1 if you have the <avxintrin.h> header file. */
CHECK_INCLUDE_FILES(avxintrin.h HAVE_AVXINTRIN_H)

#/* Define to 1 if the system has the type `CLIENT_ID'. */
#cmakedefine HAVE_CLIENT_ID

#/* Define to 1 if you have the <crtdbg.h> header file. */
CHECK_INCLUDE_FILES(crtdbg.h HAVE_CRTDBG_H)

#/* Define to 1 if you have the `daemon' function. */
CHECK_FUNCTION_EXISTS(daemon HAVE_DAEMON)

#/* Define to 1 if you have the <dbghelp.h> header file. */
CHECK_INCLUDE_FILES(dbghelp.h HAVE_DBGHELP_H)

#/* Define to 1 if you have the <ddk/ntapi.h> header file. */
CHECK_INCLUDE_FILES(ddk/ntapi.h HAVE_DDK_NTAPI_H)

#/* Define to 1 if you have the declaration of `cpuid', and to 0 if you don't.*/
#cmakedefine HAVE_DECL_CPUID

#/* Define to 1 if you have the declaration of `fpreset', and to 0 if you don't. */
#cmakedefine HAVE_DECL_FPRESET

#/* Define to 1 if you have the declaration of `tzname', and to 0 if you don't. */
#cmakedefine HAVE_DECL_TZNAME

#/* Define to 1 if you have the declaration of `xgetbv', and to 0 if you don't. */
#cmakedefine HAVE_DECL_XGETBV

#/* Define to 1 if you have the declaration of `_configthreadlocale', and to 0 if you don't. */
#cmakedefine HAVE_DECL__CONFIGTHREADLOCALE

#/* Define to 1 if you have the declaration of `_cpuid', and to 0 if you don't. */
#cmakedefine HAVE_DECL__CPUID

#/* Define to 1 if you have the declaration of `_fpreset', and to 0 if you don't. */
#cmakedefine HAVE_DECL__FPRESET

#/* Define to 1 if you have the declaration of `_xgetbv', and to 0 if you don't. */
#cmakedefine HAVE_DECL__XGETBV

#/* Define to 1 if you have the declaration of `__cpuid', and to 0 if you don't. */
#cmakedefine HAVE_DECL___CPUID

#/* Define to 1 if you have the declaration of `__xgetbv', and to 0 if you don't. */
#cmakedefine HAVE_DECL___XGETBV

#/* Define to 1 if you have the <delayimp.h> header file. */
CHECK_INCLUDE_FILES(delayimp.h HAVE_DELAYIMP_H)

#/* Define to 1 if you have the <dirent.h> header file. */
CHECK_INCLUDE_FILES(dirent.h HAVE_DIRENT_H)

#/* Define to 1 if you have the <dlfcn.h> header file. */
CHECK_INCLUDE_FILES(dlfcn.h HAVE_DLFCN_H)

#/* Define to 1 if you don't have `vprintf' but do have `_doprnt.' */
#cmakedefine HAVE_DOPRNT

#/* Define to 1 if you have the <emmintrin.h> header file. */
CHECK_INCLUDE_FILES(emmintrin.h HAVE_EMMINTRIN_H)

#/* Define to 1 if you have the <errno.h> header file. */
CHECK_INCLUDE_FILES(errno.h HAVE_ERRNO_H)

#/* Define to 1 if you have the `ether_ntoa' function. */
CHECK_FUNCTION_EXISTS(ether_ntoa HAVE_ETHER_NTOA)

#/* Define to 1 if you have the <execinfo.h> header file. */
CHECK_INCLUDE_FILES(execinfo.h HAVE_EXECINFO_H)

#/* Define to 1 if you have the <fcntl.h> header file. */
CHECK_INCLUDE_FILES(fcntl.h HAVE_FCNTL_H)

#/* Define to 1 if you have the <float.h> header file. */
CHECK_INCLUDE_FILES(float.h HAVE_FLOAT_H)

#/* Define to 1 if you have the `getisax' function. */
CHECK_FUNCTION_EXISTS(getisax HAVE_GETISAX)

#/* Define to 1 if you have the `getutent' function. */
CHECK_FUNCTION_EXISTS(getutent HAVE_GETUTENT)

#/* Define to 1 if you have the <glaux.h> header file. */
CHECK_INCLUDE_FILES(glaux.h HAVE_GLAUX_H)

#/* Define to 1 if you have the <GLUT/glut.h> header file. */
CHECK_INCLUDE_FILES(GLUT/glut.h HAVE_GLUT_GLUT_H)

#/* Define to 1 if you have the <glut.h> header file. */
CHECK_INCLUDE_FILES(glut.h HAVE_GLUT_H)

#/* Define to 1 if you have the <glu.h> header file. */
CHECK_INCLUDE_FILES(glu.h HAVE_GLU_H)

#/* Define to 1 if you have the <GL/glaux.h> header file. */
CHECK_INCLUDE_FILES(GL/glaux.h HAVE_GL_GLAUX_H)

#/* Define to 1 if you have the <GL/glut.h> header file. */
CHECK_INCLUDE_FILES(GL/glut.h HAVE_GL_GLUT_H)

#/* Define to 1 if you have the <c> header file. */
CHECK_INCLUDE_FILES(GL/gl.h HAVE_GL_GLU_H)

#/* Define to 1 if you have the <GL/gl.h> header file. */
CHECK_INCLUDE_FILES(GL/gl.h HAVE_GL_GL_H)

#/* Define to 1 if you have the <gl.h> header file. */
CHECK_INCLUDE_FILES(gl.h HAVE_GL_H)

#/* Define to 1 if you have the `gmtime' function. */
CHECK_FUNCTION_EXISTS(gmtime HAVE_GMTIME)

#/* Define to 1 if you have the `gmtime_r' function. */
CHECK_FUNCTION_EXISTS(gmtime_r HAVE_GMTIME_R)

#/* Define to 1 if you have the <grp.h> header file. */
CHECK_INCLUDE_FILES(grp.h HAVE_GRP_H)

#/* Define to 1 if you have the <gtk/gtk.h> header file. */
CHECK_INCLUDE_FILES(gtk/gtk.h HAVE_GTK_GTK_H)

#/* Define to 1 if you have the <ieeefp.h> header file. */
CHECK_INCLUDE_FILES(ieeefp.h HAVE_IEEEFP_H)

#/* Define to 1 if you have the <immintrin.h> header file. */
CHECK_INCLUDE_FILES(immintrin.h HAVE_IMMINTRIN_H)

#/* Define to 1 if you have the <intrin.h> header file. */
CHECK_INCLUDE_FILES(intrin.h HAVE_INTRIN_H)

#/* Define to 1 if you have the <inttypes.h> header file. */
CHECK_INCLUDE_FILES(inttypes.h HAVE_INTTYPES_H)

#/* Define to 1 if you have the c library */
#cmakedefine HAVE_LIBC
CHECK_LIBRARY_EXISTS(c "abort" "/lib/" HAVE_LIBC) 

#/* Define to 1 if you have a functional curl library. */
SET(HAVE_LIBCURL ${CURL_FOUND})

#/* Define to 1 if you have the c_nonshared library */
#cmakedefine HAVE_LIBC_NONSHARED

#/* Define to 1 if you have the gcc library */
#cmakedefine HAVE_LIBGCC

#/* Define to 1 if you have the gcc_eh library */
#cmakedefine HAVE_LIBGCC_EH

#/* Define to 1 if you have the `gdi32' library (-lgdi32). */
#cmakedefine HAVE_LIBGDI32

#/* Define to 1 if you have the iphlpapi library */
#cmakedefine HAVE_LIBIPHLPAPI

#/* Define to 1 if you have the math library */
#cmakedefine HAVE_LIBM

#/* Define to 1 if you have the msvcr100 library */
#cmakedefine HAVE_LIBMSVCR100

#/* Define to 1 if you have the msvcr110 library */
#cmakedefine HAVE_LIBMSVCR110

#/* Define to 1 if you have the msvcr90 library */
#cmakedefine HAVE_LIBMSVCR90

#/* Define to 1 if you have the msvcr90d library */
#cmakedefine HAVE_LIBMSVCR90D

#/* Define to 1 if you have the <libnotify/notify.h> header file. */
CHECK_INCLUDE_FILES(libnotify/notify.h HAVE_LIBNOTIFY_NOTIFY_H)

#/* Define to 1 if you have the NVIDIA API library */
#cmakedefine HAVE_LIBNVAPI

#/* Define to 1 if you have the pthread library */
SET(HAVE_LIBPTHREAD ${CMAKE_USE_PTHREADS_INIT})

#/* Define to 1 if you have the secur32 library */
#cmakedefine HAVE_LIBSECUR32

#/* Define to 1 if you have the sensapi library */
#cmakedefine HAVE_LIBSENSAPI

#/* Define to 1 if you have the stdc++ library */
#cmakedefine HAVE_LIBSTDC__

#/* Define to 1 if you have the userenv library */
#cmakedefine HAVE_LIBUSERENV

#/* Define to 1 if you have the gdi32 library */
#cmakedefine HAVE_LIBWGDI32

#/* Define to 1 if you have the WinHttp library */
#cmakedefine HAVE_LIBWINHTTP

#/* Define to 1 if you have the wininet library */
#cmakedefine HAVE_LIBWININET

#/* Define to 1 if you have the `winmm' library (-lwinmm). */
#cmakedefine HAVE_LIBWINMM

#/* Define to 1 if you have the wsock32 library */
#cmakedefine HAVE_LIBWSOCK32

#/* Define to 1 if you have the wtsapi32 library */
#cmakedefine HAVE_LIBWTSAPI32

#/* Define to 1 if you have the <locale.h> header file. */
CHECK_INCLUDE_FILES(locale.h HAVE_LOCALE_H)

#/* Define to 1 if you have the `localtime' function. */
CHECK_FUNCTION_EXISTS(localtime HAVE_LOCALTIME)

#/* Define to 1 if you have the `localtime_r' function. */
CHECK_FUNCTION_EXISTS(localtime_r HAVE_LOCALTIME_R)

#/* Define to 1 if you have the <memory.h> header file. */
CHECK_INCLUDE_FILES(memory.h HAVE_MEMORY_H)

#/* Define to 1 if you have the <MesaGL/glaux.h> header file. */
CHECK_INCLUDE_FILES(MesaGL/glaux.h HAVE_MESAGL_GLAUX_H)

#/* Define to 1 if you have the <MesaGL/glut.h> header file. */
CHECK_INCLUDE_FILES(MesaGL/glut.h HAVE_MESAGL_GLUT_H)

#/* Define to 1 if you have the <MesaGL/glu.h> header file. */
CHECK_INCLUDE_FILES(MesaGL/glu.h HAVE_MESAGL_GLU_H)

#/* Define to 1 if you have the <MesaGL/gl.h> header file. */
CHECK_INCLUDE_FILES(MesaGL/gl.h HAVE_MESAGL_GL_H)

#/* Define to 1 if you have a visual c runtime library */
#cmakedefine HAVE_MSVCRT

#/* Define if your C++ compiler supports namespaces */
include(TestForSTDNamespace)
SET(HAVE_NAMESPACES NOT ${CMAKE_NO_STD_NAMESPACE})

#/* Define to 1 if you have the <ndir.h> header file, and it defines `DIR'. */
#CHECK_INCLUDE_FILES(ndir.h HAVE_NDIR_H)

#/* Define to 1 if you have the <netdb.h> header file. */
CHECK_INCLUDE_FILES(netdb.h HAVE_NETDB_H)

#/* Define to 1 if you have the <netinet/ether.h> header file. */
CHECK_INCLUDE_FILES(netinet/ether.h HAVE_NETINET_ETHER_H)

#/* Define to 1 if you have the <netinet/if_ether.h> header file. */
CHECK_INCLUDE_FILES(netinet/if_ether.h HAVE_NETINET_IF_ETHER_H)

#/* Define to 1 if you have the <netinet/in.h> header file. */
CHECK_INCLUDE_FILES(netinet/in.h HAVE_NETINET_IN_H)

#/* Define to 1 if you have the <netinet/tcp.h> header file. */
CHECK_INCLUDE_FILES(netinet/tcp.h HAVE_NETINET_TCP_H)

#/* Define to 1 if you have the <net/if_arp.h> header file. */
CHECK_INCLUDE_FILES(net/if_arp.h HAVE_NET_IF_ARP_H)

#/* Define to 1 if you have the <net/if.h> header file. */
CHECK_INCLUDE_FILES(net/if.h HAVE_NET_IF_H)

#/* Define to 1 if you have the <ntapi.h> header file. */
CHECK_INCLUDE_FILES(ntapi.h HAVE_NTAPI_H)

#/* Define to 1 if your compiler has the nvapi.h header file */
CHECK_INCLUDE_FILES(nvapi.h HAVE_NVAPI_H)

#/* Define to 1 if you have the <OpenGL/glaux.h> header file. */
CHECK_INCLUDE_FILES(OpenGL/glaux.h HAVE_OPENGL_GLAUX_H)

#/* Define to 1 if you have the <OpenGL/glut.h> header file. */
CHECK_INCLUDE_FILES(OpenGL/glut.h HAVE_OPENGL_GLUT_H)

#/* Define to 1 if you have the <OpenGL/glu.h> header file. */
CHECK_INCLUDE_FILES(OpenGL/glu.h HAVE_OPENGL_GLU_H)

#/* Define to 1 if you have the <OpenGL/gl.h> header file. */
CHECK_INCLUDE_FILES(OpenGL/gl.h HAVE_OPENGL_GL_H)

#/* Define to 1 if you have the <pmmintrin.h> header file. */
CHECK_INCLUDE_FILES(pmmintrin.h HAVE_PMMINTRIN_H)

#/* Define to 1 if you have the <procfs.h> header file. */
CHECK_INCLUDE_FILES(procfs.h HAVE_PROCFS_H)

#/* Define if you have POSIX threads libraries and header files. */
#cmakedefine HAVE_PTHREAD

#/* Have PTHREAD_PRIO_INHERIT. */
#cmakedefine HAVE_PTHREAD_PRIO_INHERIT

#/* Define to 1 if you have the `putenv' function. */
CHECK_FUNCTION_EXISTS(putenv HAVE_PUTENV)

#/* Define to 1 if you have the resolv library */
find_library(HAVE_RESOLV resolv)
#MESSAGE(STATUS "resolv library: ${HAVE_RESOLV}")

#/* Define to 1 if you have the `res_init' function. */
CHECK_FUNCTION_EXISTS(res_init HAVE_RES_INIT)

#/* Define to 1 if you have the <sal.h> header file. */
CHECK_INCLUDE_FILES(sal.h HAVE_SAL_H)

#/* Define to 1 if you have the `sched_setscheduler' function. */
CHECK_FUNCTION_EXISTS(sched_setscheduler HAVE_SCHED_SETSCHEDULER)

#/* Define to 1 if your compiler has the security.h header file */
CHECK_INCLUDE_FILES(security.h HAVE_SECURITY_H)

#/* Define to 1 if you have the `setenv' function. */
CHECK_FUNCTION_EXISTS(setenv HAVE_SETENV)

#/* Define to 1 if you have the <setjmp.h> header file. */
CHECK_INCLUDE_FILES(setjmp.h HAVE_SETJMP_H)

#/* Define to 1 if you have the `setpriority' function. */
CHECK_FUNCTION_EXISTS(setpriority HAVE_SETPRIORITY)

#/* Define to 1 if you have the `setutent' function. */
CHECK_FUNCTION_EXISTS(setutent HAVE_SETUTENT)

#/* Define to 1 if you have the `sigaction' function. */
CHECK_FUNCTION_EXISTS(sigaction HAVE_SIGACTION)

#/* Define to 1 if you have the <signal.h> header file. */
CHECK_INCLUDE_FILES(signal.h HAVE_SIGNAL_H)

#/* Define to 1 if the system has the type `socklen_t'. */
#cmakedefine HAVE_SOCKLEN_T

#/* Define to 1 if you have sqlite3. */
#cmakedefine HAVE_SQLITE3

#/* Define to 1 if you have the `sqlite3_open' function. */
CHECK_FUNCTION_EXISTS(sqlite3_open HAVE_SQLITE3_OPEN)

#/* Define to 1 if you have the `stat64' function. */
CHECK_FUNCTION_EXISTS(stat64 HAVE_STAT64)

#/* Define to 1 if you have the <stdint.h> header file. */
CHECK_INCLUDE_FILES(stdint.h HAVE_STDINT_H)

#/* Define to 1 if you have the <stdlib.h> header file. */
CHECK_INCLUDE_FILES(stdlib.h HAVE_STDLIB_H)

#/* Define to 1 if locale is in namespace std:: */
CHECK_CXX_SOURCE_COMPILES("#include <locale>\nint main(){std::locale(\"\").name().c_str();return 0;}" HAVE_STD_LOCALE)

#/* Define to 1 if max is in namespace std:: */
CHECK_CXX_SOURCE_COMPILES("#include <algorithm>\nint main(){std::max(0,1);return 0;}" HAVE_STD_MAX)

#/* Define to 1 if min is in namespace std:: */
CHECK_CXX_SOURCE_COMPILES("#include <algorithm>\nint main(){std::min(0,1);return 0;}" HAVE_STD_MIN)

#/* Define to 1 if transform is in namespace std:: */
#cmakedefine HAVE_STD_TRANSFORM

#/* Define to 1 if you have the `strcasecmp' function. */
CHECK_FUNCTION_EXISTS(strcasecmp HAVE_STRCASECMP)

#/* Define to 1 if you have the `strcasestr' function. */
CHECK_FUNCTION_EXISTS(strcasestr HAVE_STRCASESTR)

#/* Define to 1 if you have the `strdup' function. */
CHECK_FUNCTION_EXISTS(strdup HAVE_STRDUP)

#/* Define to 1 if you have the `strdupa' function. */
CHECK_FUNCTION_EXISTS(strdupa HAVE_STRDUPA)

#/* Define to 1 if you have the <strings.h> header file. */
CHECK_INCLUDE_FILES(strings.h HAVE_STRINGS_H)

#/* Define to 1 if you have the <string.h> header file. */
CHECK_INCLUDE_FILES(string.h HAVE_STRING_H)

#/* Define to 1 if you have the `strlcat' function. */
CHECK_FUNCTION_EXISTS(strlcat HAVE_STRLCAT)

#/* Define to 1 if you have the `strlcpy' function. */
CHECK_FUNCTION_EXISTS(strlcpy HAVE_STRLCPY)

#/* Define to 1 if you have the `strtoull' function. */
CHECK_FUNCTION_EXISTS(strtoull HAVE_STRTOULL)

#/* Define to 1 if the system has the type `struct ether_addr'. */
#cmakedefine HAVE_STRUCT_ETHER_ADDR

#/* Define to 1 if the system has the type `struct ifconf'. */
#cmakedefine HAVE_STRUCT_IFCONF

#/* Define to 1 if the system has the type `struct ifreq'. */
#cmakedefine HAVE_STRUCT_IFREQ

#/* Define to 1 if the system has the type `struct lifconf'. */
#cmakedefine HAVE_STRUCT_LIFCONF

#/* Define to 1 if the system has the type `struct lifreq'. */
#cmakedefine HAVE_STRUCT_LIFREQ

#/* Define to 1 if `tm_zone' is a member of `struct tm'. */
CHECK_STRUCT_HAS_MEMBER(tm tm_zone time.h HAVE_STRUCT_TM_TM_ZONE LANGUAGE CXX)

#/* Define to 1 if the system has the type `SYSTEM_PROCESSES'. */
#cmakedefine HAVE_SYSTEM_PROCESSES

#/* Define to 1 if the system has the type `SYSTEM_THREADS'. */
#cmakedefine HAVE_SYSTEM_THREADS

#/* Define to 1 if you have the <sys/auxv.h> header file. */
CHECK_INCLUDE_FILES(sys/auxv.h HAVE_SYS_AUXV_H)

#/* Define to 1 if you have the <sys/dir.h> header file, and it defines `DIR'.*/
#CHECK_PROTOTYPE_EXISTS(DIR sys/dir.h HAVE_SYS_DIR_H)

#/* Define to 1 if you have the <sys/fcntl.h> header file. */
CHECK_INCLUDE_FILES(sys/fcntl.h HAVE_SYS_FCNTL_H)

#/* Define to 1 if you have the <sys/file.h> header file. */
CHECK_INCLUDE_FILES(sys/file.h HAVE_SYS_FILE_H)

#/* Define to 1 if you have the <sys/ioctl.h> header file. */
CHECK_INCLUDE_FILES(sys/ioctl.h HAVE_SYS_IOCTL_H)

#/* Define to 1 if you have the <sys/ipc.h> header file. */
CHECK_INCLUDE_FILES(sys/ipc.h HAVE_SYS_IPC_H)

#/* Define to 1 if you have the <sys/mount.h> header file. */
CHECK_INCLUDE_FILES(sys/mount.h HAVE_SYS_MOUNT_H)

#/* Define to 1 if you have the <sys/msg.h> header file. */
CHECK_INCLUDE_FILES(sys/msg.h HAVE_SYS_MSG_H)

#/* Define to 1 if you have the <sys/ndir.h> header file, and it defines `DIR'.*/
#CHECK_INCLUDE_FILES(sys/ndir.h HAVE_SYS_NDIR_H)

#/* Define to 1 if you have the <sys/param.h> header file. */
CHECK_INCLUDE_FILES(sys/param.h HAVE_SYS_PARAM_H)

#/* Define to 1 if you have the <sys/resource.h> header file. */
CHECK_INCLUDE_FILES(sys/resource.h HAVE_SYS_RESOURCE_H)

#/* Define to 1 if you have the <sys/select.h> header file. */
CHECK_INCLUDE_FILES(sys/select.h HAVE_SYS_SELECT_H)

#/* Define to 1 if you have the <sys/sem.h> header file. */
CHECK_INCLUDE_FILES(sys/sem.h HAVE_SYS_SEM_H)

#/* Define to 1 if you have the <sys/sensors.h> header file. */
CHECK_INCLUDE_FILES(sys/sensors.h HAVE_SYS_SENSORS_H)

#/* Define to 1 if you have the <sys/shm.h> header file. */
CHECK_INCLUDE_FILES(sys/shm.h HAVE_SYS_SHM_H)

#/* Define to 1 if you have the <sys/socket.h> header file. */
CHECK_INCLUDE_FILES(sys/socket.h HAVE_SYS_SOCKET_H)

#/* Define to 1 if you have the <sys/sockio.h> header file. */
CHECK_INCLUDE_FILES(sys/sockio.h HAVE_SYS_SOCKIO_H)

#/* Define to 1 if you have the <sys/statfs.h> header file. */
CHECK_INCLUDE_FILES(sys/statfs.h HAVE_SYS_STATFS_H)

#/* Define to 1 if you have the <sys/statvfs.h> header file. */
CHECK_INCLUDE_FILES(sys/statvfs.h HAVE_SYS_STATVFS_H)

#/* Define to 1 if you have the <sys/stat.h> header file. */
CHECK_INCLUDE_FILES(sys/stat.h HAVE_SYS_STAT_H)

#/* Define to 1 if you have the <sys/swap.h> header file. */
CHECK_INCLUDE_FILES(sys/swap.h HAVE_SYS_SWAP_H)

#/* Define to 1 if you have the <sys/sysctl.h> header file. */
if(${CMAKE_SYSTEM_NAME} MATCHES "BSD")
	CHECK_INCLUDE_FILES("sys/types.h;sys/sysctl.h" HAVE_SYS_SYSCTL_H)
else()
	CHECK_INCLUDE_FILES(sys/sysctl.h HAVE_SYS_SYSCTL_H)
endif(${CMAKE_SYSTEM_NAME} MATCHES "BSD")

#/* Define to 1 if you have the <sys/systeminfo.h> header file. */
CHECK_INCLUDE_FILES(sys/systeminfo.h HAVE_SYS_SYSTEMINFO_H)

#/* Define to 1 if you have the <sys/time.h> header file. */
CHECK_INCLUDE_FILES(sys/time.h HAVE_SYS_TIME_H)

#/* Define to 1 if you have the <sys/types.h> header file. */
CHECK_INCLUDE_FILES(sys/types.h HAVE_SYS_TYPES_H)

#/* Define to 1 if you have the <sys/un.h> header file. */
CHECK_INCLUDE_FILES(sys/un.h HAVE_SYS_UN_H)

#/* Define to 1 if you have the <sys/utsname.h> header file. */
CHECK_INCLUDE_FILES(sys/utsname.h HAVE_SYS_UTSNAME_H)

#/* Define to 1 if you have the <sys/vmmeter.h> header file. */
CHECK_INCLUDE_FILES(sys/vmmeter.h HAVE_SYS_VMMETER_H)

#/* Define to 1 if you have the <sys/wait.h> header file. */
CHECK_INCLUDE_FILES(sys/wait.h HAVE_SYS_WAIT_H)

#/* Define to 1 if the system has the type `THREAD_STATE'. */
#cmakedefine HAVE_THREAD_STATE

#/* Define to 1 if the system has the type `THREAD_WAIT_REASON'. */
#cmakedefine HAVE_THREAD_WAIT_REASON

#/* Define to 1 if your `struct tm' has `tm_zone'. Deprecated, use `HAVE_STRUCT_TM_TM_ZONE' instead. */
SET(HAVE_TM_ZONE ${HAVE_STRUCT_TM_TM_ZONE})

#/* Define to 1 if you don't have `tm_zone' but do have the external array `tzname'. */
#cmakedefine HAVE_TZNAME

#/* Define to 1 if you have the <unistd.h> header file. */
CHECK_INCLUDE_FILES(unistd.h HAVE_UNISTD_H)

#/* Define to 1 if you have the `unsetenv' function. */
CHECK_FUNCTION_EXISTS(unsetenv HAVE_UNSETENV)

#/* Define to 1 if you have the <utmp.h> header file. */
CHECK_INCLUDE_FILES(utmp.h HAVE_UTMP_H)

#/* Define to 1 if the system has the type `VM_COUNTERS'. */
#cmakedefine HAVE_VM_COUNTERS

#/* Define to 1 if you have the `vprintf' function. */
CHECK_FUNCTION_EXISTS(vprintf HAVE_VPRINTF)

#/* Define to 1 if you have the <windows.h> header file. */
CHECK_INCLUDE_FILES(windows.h HAVE_WINDOWS_H)

#/* Define to 1 if you have the <winhttp.h> header file. */
CHECK_INCLUDE_FILES(winhttp.h HAVE_WINHTTP_H)

#/* Define to 1 if you have the <winsock2.h> header file. */
CHECK_INCLUDE_FILES(winsock2.h HAVE_WINSOCK2_H)

#/* Define to 1 if you have the <winsock.h> header file. */
CHECK_INCLUDE_FILES(winsock.h HAVE_WINSOCK_H)

#/* Define to 1 if you have the <winternl.h> header file. */
CHECK_INCLUDE_FILES(winternl.h HAVE_WINTERNL_H)

#/* Define to 1 if you have the <ws2tcpip.h> header file. */
CHECK_INCLUDE_FILES(ws2tcpip.h HAVE_WS2TCPIP_H)

#/* Define to 1 if you have X11 library */
SET(HAVE_X11 ${X11_FOUND})

#/* Define to 1 if you have the <x86intrin.h> header file. */
CHECK_INCLUDE_FILES(x86intrin.h HAVE_X86INTRIN_H)

#/* Define to 1 if you have the <xlocale.h> header file. */
CHECK_INCLUDE_FILES(xlocale.h HAVE_XLOCALE_H)

#/* Define to 1 if you have the <xmmintrin.h> header file. */
CHECK_INCLUDE_FILES(xmmintrin.h HAVE_XMMINTRIN_H)

#/* Define to 1 if you have xss library */
#cmakedefine HAVE_XSS

#/* Define to 1 if /proc/meminfo exists */
#cmakedefine HAVE__PROC_MEMINFO
FIND_FILE(HAVE__PROC_MEMINFO "proc/meminfo" PATH "/" NO_DEFAULT_PATH  NO_CMAKE_ENVIRONMENT_PATH)
MESSAGE(STATUS "/proc/meminfo exists: ${HAVE__PROC_MEMINFO}")

#/* Define to 1 if /proc/self/exe exists */
FIND_FILE(HAVE__PROC_SELF_EXE "proc/self/exe" PATH "/" NO_DEFAULT_PATH  NO_CMAKE_ENVIRONMENT_PATH)
MESSAGE(STATUS "/proc/self/exe exists: ${HAVE__PROC_SELF_EXE}")

#/* Define to 1 if /proc/self/psinfo exists */
FIND_FILE(HAVE__PROC_SELF_PSINFO "proc/self/psinfo" PATH "/" NO_DEFAULT_PATH  NO_CMAKE_ENVIRONMENT_PATH)
MESSAGE(STATUS "/proc/self/psinfo exists: ${HAVE__PROC_SELF_PSINFO}")

#/* Define to 1 if /proc/self/stat exists */
FIND_FILE(HAVE__PROC_SELF_STAT "proc/self/stat" PATH "/" NO_DEFAULT_PATH  NO_CMAKE_ENVIRONMENT_PATH)
MESSAGE(STATUS "/proc/self/stat exists: ${HAVE__PROC_SELF_STAT}")

#/* Define to 1 if you have the `_strdup' function. */
CHECK_FUNCTION_EXISTS(_strdup HAVE__STRDUP)

#/* Define to 1 if you have the `_strdupa' function. */
CHECK_FUNCTION_EXISTS(_strdupa HAVE__STRDUPA)

#/* Platform identification used to identify applications for this BOINC core client */
EXECUTE_PROCESS(COMMAND ${CMAKE_SOURCE_DIR}/config.guess WORKING_DIRECTORY ${CMAKE_SOURCE_DIR} OUTPUT_VARIABLE GUESS)
STRING(STRIP ${GUESS} GUESS)
SET(HOSTTYPE ${GUESS})

#/* Alternate identification used to identify applications for this BOINC core client */
SET(HOSTTYPEALT ${GUESS})

#/* "Define to 1 if largefile support causes missing symbols in C++" */
#cmakedefine LARGEFILE_BREAKS_CXX

#/* Define to the name of libcurl's certification file */
#cmakedefine LIBCURL_CABUNDLE

#/* Defined if libcurl supports AsynchDNS */
#cmakedefine LIBCURL_FEATURE_ASYNCHDNS

#/* Defined if libcurl supports IPv6 */
#cmakedefine LIBCURL_FEATURE_IPV6

#/* Defined if libcurl supports KRB4 */
#cmakedefine LIBCURL_FEATURE_KRB4

#/* Defined if libcurl supports libz */
#cmakedefine LIBCURL_FEATURE_LIBZ

#/* Defined if libcurl supports SSL */
#cmakedefine LIBCURL_FEATURE_SSL

#/* Defined if libcurl supports DICT */
#cmakedefine LIBCURL_PROTOCOL_DICT

#/* Defined if libcurl supports FILE */
#cmakedefine LIBCURL_PROTOCOL_FILE

#/* Defined if libcurl supports FTP */
#cmakedefine LIBCURL_PROTOCOL_FTP

#/* Defined if libcurl supports FTPS */
#cmakedefine LIBCURL_PROTOCOL_FTPS

#/* Defined if libcurl supports GOPHER */
#cmakedefine LIBCURL_PROTOCOL_GOPHER

#/* Defined if libcurl supports HTTP */
#cmakedefine LIBCURL_PROTOCOL_HTTP

#/* Defined if libcurl supports HTTPS */
#cmakedefine LIBCURL_PROTOCOL_HTTPS

#/* Defined if libcurl supports LDAP */
#cmakedefine LIBCURL_PROTOCOL_LDAP

#/* Defined if libcurl supports TELNET */
#cmakedefine LIBCURL_PROTOCOL_TELNET

#/* Define to the sub-directory where libtool stores uninstalled libraries. */
#cmakedefine LT_OBJDIR

#/* Name of package */
#cmakedefine PACKAGE

#/* Define to the address where bug reports for this package should be sent. */
#cmakedefine PACKAGE_BUGREPORT

#/* Define to the full name of this package. */
#cmakedefine PACKAGE_NAME

#/* Define to the full name and version of this package. */
#cmakedefine PACKAGE_STRING

#/* Define to the one symbol short name of this package. */
#cmakedefine PACKAGE_TARNAME

#/* Define to the home page for this package. */
#cmakedefine PACKAGE_URL

#/* Define to the version of this package. */
#cmakedefine PACKAGE_VERSION

#/* Define to necessary symbol if this constant uses a non-standard name on your system. */
#cmakedefine PTHREAD_CREATE_JOINABLE

#/* Define as the return type of signal handlers (`int' or `void'). */
#cmakedefine RETSIGTYPE

#/* Define to 1 if your compiler has the security.h header file */
#cmakedefine SECURITY_WIN32

#/* Define to 1 if you have the ANSI C header files. */
#cmakedefine STDC_HEADERS

#/* Define to 1 if you can safely include both <sys/time.h> and <time.h>. */
#cmakedefine TIME_WITH_SYS_TIME

#/* Define to 1 if your <sys/time.h> declares `struct tm'. */
#cmakedefine TM_IN_SYS_TIME

#/* "Define to 1 if you want to use the openssl crypto library" */
SET(USE_OPENSSL ${OPENSSL_FOUND})

#/* Define to 1 to use windows sockets */
#cmakedefine USE_WINSOCK

#/* utmp file location */
#cmakedefine UTMP_LOCATION

#/* Version number of package */
#cmakedefine VERSION

#/* Define to prevent redefinition of INT32 in jconfig.h */
#cmakedefine XMD_H

#/* Define to 1 if the X Window System is missing or not being used. */
#cmakedefine X_DISPLAY_MISSING

#/* Enable large inode numbers on Mac OS X 10.5.  */
#ifndef _DARWIN_USE_64_BIT_INODE
# define _DARWIN_USE_64_BIT_INODE 1
#endif

#/* Number of bits in a file offset, on hosts where this is settable. */
#cmakedefine _FILE_OFFSET_BITS

#/* Define for large files, on AIX-style hosts. */
#cmakedefine _LARGE_FILES

#/* Define to empty if `const' does not conform to ANSI C. */
#cmakedefine const

#/* Define curl_free() as free() if our version of curl lacks curl_free. */
#cmakedefine curl_free

#/* Define to `unsigned int' if <sys/types.h> does not define. */
##CHECK_TYPE_SIZE(size_t SIZET)
#cmakedefine size_t

configure_file(${CMAKE_SOURCE_DIR}/config.h.in.cmake ${CMAKE_BINARY_DIR}/config.h)

add_definitions(-DHAVE_CONFIG_H)
