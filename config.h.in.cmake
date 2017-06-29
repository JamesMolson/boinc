/* config.h.in.  Generated from configure.ac by autoheader.  */


/* double-inclusion protection for config.h */
#ifndef BOINC_CONFIG_H
#define BOINC_CONFIG_H

/* Version defines are now in version.h */
#include "version.h"



/* Define to 1 if the xgetbv instruction can be used in inline assember */
#cmakedefine ASM_SUPPORTS_XGETBV 1

/* Directory where BOINC executables will be installed */
#cmakedefine BOINC_EXECPREFIX "@BOINC_EXECPREFIX@"

/* Directory where BOINC libraries will be installed */
#cmakedefine BOINC_LIBDIR "@BOINC_LIBDIR@"

/* Directory tree where BOINC will be installed */
#cmakedefine BOINC_PREFIX "@BOINC_PREFIX@"

/* Define to 1 if CYGWIN should use the WIN32 GUI */
#cmakedefine CYGWIN_USE_WIN32 1

/* Define to 1 if compiling under OS X 10.3 or earlier */
#cmakedefine DARWIN_10_3 1

/* Define to the platform's shared library extension */
#cmakedefine DLLEXT "@DLLEXT@"

/* Use the Apple OpenGL framework. */
#cmakedefine HAVE_APPLE_OPENGL_FRAMEWORK

/* Define to 1 if you have the <arpa/inet.h> header file. */
#cmakedefine HAVE_ARPA_INET_H 1

/* Define to 1 if you have the <avxintrin.h> header file. */
#cmakedefine HAVE_AVXINTRIN_H 1

/* Define to 1 if the system has the type `CLIENT_ID'. */
#cmakedefine HAVE_CLIENT_ID 1

/* Define to 1 if you have the <crtdbg.h> header file. */
#cmakedefine HAVE_CRTDBG_H 1

/* Define to 1 if you have the `daemon' function. */
#cmakedefine HAVE_DAEMON 1

/* Define to 1 if you have the <dbghelp.h> header file. */
#cmakedefine HAVE_DBGHELP_H 1

/* Define to 1 if you have the <ddk/ntapi.h> header file. */
#cmakedefine HAVE_DDK_NTAPI_H 1

/* Define to 1 if you have the declaration of `cpuid', and to 0 if you don't.
   */
#cmakedefine HAVE_DECL_CPUID 1

/* Define to 1 if you have the declaration of `fpreset', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_FPRESET 1

/* Define to 1 if you have the declaration of `tzname', and to 0 if you don't.
   */
#cmakedefine HAVE_DECL_TZNAME

/* Define to 1 if you have the declaration of `xgetbv', and to 0 if you don't.
   */
#cmakedefine HAVE_DECL_XGETBV

/* Define to 1 if you have the declaration of `_configthreadlocale', and to 0
   if you don't. */
#cmakedefine HAVE_DECL__CONFIGTHREADLOCALE

/* Define to 1 if you have the declaration of `_cpuid', and to 0 if you don't.
   */
#cmakedefine HAVE_DECL__CPUID

/* Define to 1 if you have the declaration of `_fpreset', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL__FPRESET

/* Define to 1 if you have the declaration of `_xgetbv', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL__XGETBV

/* Define to 1 if you have the declaration of `__cpuid', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL___CPUID

/* Define to 1 if you have the declaration of `__xgetbv', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL___XGETBV

/* Define to 1 if you have the <delayimp.h> header file. */
#cmakedefine HAVE_DELAYIMP_H 1

/* Define to 1 if you have the <dirent.h> header file. */
#cmakedefine HAVE_DIRENT_H 1

/* Define to 1 if you have the <dlfcn.h> header file. */
#cmakedefine HAVE_DLFCN_H 1

/* Define to 1 if you don't have `vprintf' but do have `_doprnt.' */
#cmakedefine HAVE_DOPRNT 1

/* Define to 1 if you have the <emmintrin.h> header file. */
#cmakedefine HAVE_EMMINTRIN_H 1

/* Define to 1 if you have the <errno.h> header file. */
#cmakedefine HAVE_ERRNO_H 1

/* Define to 1 if you have the `ether_ntoa' function. */
#cmakedefine HAVE_ETHER_NTOA 1

/* Define to 1 if you have the <execinfo.h> header file. */
#cmakedefine HAVE_EXECINFO_H 1

/* Define to 1 if you have the <fcntl.h> header file. */
#cmakedefine HAVE_FCNTL_H 1

/* Define to 1 if you have the <float.h> header file. */
#cmakedefine HAVE_FLOAT_H 1

/* Define to 1 if you have the `getisax' function. */
#cmakedefine HAVE_GETISAX 1

/* Define to 1 if you have the `getutent' function. */
#cmakedefine HAVE_GETUTENT 1

/* Define to 1 if you have the <glaux.h> header file. */
#cmakedefine HAVE_GLAUX_H 1

/* Define to 1 if you have the <GLUT/glut.h> header file. */
#cmakedefine HAVE_GLUT_GLUT_H 1

/* Define to 1 if you have the <glut.h> header file. */
#cmakedefine HAVE_GLUT_H 1

/* Define to 1 if you have the <glu.h> header file. */
#cmakedefine HAVE_GLU_H 1

/* Define to 1 if you have the <GL/glaux.h> header file. */
#cmakedefine HAVE_GL_GLAUX_H 1

/* Define to 1 if you have the <GL/glut.h> header file. */
#cmakedefine HAVE_GL_GLUT_H 1

/* Define to 1 if you have the <GL/glu.h> header file. */
#cmakedefine HAVE_GL_GLU_H 1

/* Define to 1 if you have the <GL/gl.h> header file. */
#cmakedefine HAVE_GL_GL_H 1

/* Define to 1 if you have the <gl.h> header file. */
#cmakedefine HAVE_GL_H 1

/* Define to 1 if you have the `gmtime' function. */
#cmakedefine HAVE_GMTIME 1

/* Define to 1 if you have the `gmtime_r' function. */
#cmakedefine HAVE_GMTIME_R 1

/* Define to 1 if you have the <grp.h> header file. */
#cmakedefine HAVE_GRP_H 1

/* Define to 1 if you have the <gtk/gtk.h> header file. */
#cmakedefine HAVE_GTK_GTK_H 1

/* Define to 1 if you have the <ieeefp.h> header file. */
#cmakedefine HAVE_IEEEFP_H 1

/* Define to 1 if you have the <immintrin.h> header file. */
#cmakedefine HAVE_IMMINTRIN_H 1

/* Define to 1 if you have the <intrin.h> header file. */
#cmakedefine HAVE_INTRIN_H 1

/* Define to 1 if you have the <inttypes.h> header file. */
#cmakedefine HAVE_INTTYPES_H 1

/* Define to 1 if you have the c library */
#cmakedefine HAVE_LIBC 1

/* Define to 1 if you have a functional curl library. */
#cmakedefine HAVE_LIBCURL 1

/* Define to 1 if you have the c_nonshared library */
#cmakedefine HAVE_LIBC_NONSHARED 1

/* Define to 1 if you have the gcc library */
#cmakedefine HAVE_LIBGCC 1

/* Define to 1 if you have the gcc_eh library */
#cmakedefine HAVE_LIBGCC_EH 1

/* Define to 1 if you have the `gdi32' library (-lgdi32). */
#cmakedefine HAVE_LIBGDI32 1

/* Define to 1 if you have the iphlpapi library */
#cmakedefine HAVE_LIBIPHLPAPI 1

/* Define to 1 if you have the math library */
#cmakedefine HAVE_LIBM 1

/* Define to 1 if you have the msvcr100 library */
#cmakedefine HAVE_LIBMSVCR100 1

/* Define to 1 if you have the msvcr110 library */
#cmakedefine HAVE_LIBMSVCR110 1

/* Define to 1 if you have the msvcr90 library */
#cmakedefine HAVE_LIBMSVCR90 1

/* Define to 1 if you have the msvcr90d library */
#cmakedefine HAVE_LIBMSVCR90D 1

/* Define to 1 if you have the <libnotify/notify.h> header file. */
#cmakedefine HAVE_LIBNOTIFY_NOTIFY_H 1

/* Define to 1 if you have the NVIDIA API library */
#cmakedefine HAVE_LIBNVAPI 1

/* Define to 1 if you have the pthread library */
#cmakedefine HAVE_LIBPTHREAD 1

/* Define to 1 if you have the secur32 library */
#cmakedefine HAVE_LIBSECUR32 1

/* Define to 1 if you have the sensapi library */
#cmakedefine HAVE_LIBSENSAPI 1

/* Define to 1 if you have the stdc++ library */
#cmakedefine HAVE_LIBSTDC__ 1

/* Define to 1 if you have the userenv library */
#cmakedefine HAVE_LIBUSERENV 1

/* Define to 1 if you have the gdi32 library */
#cmakedefine HAVE_LIBWGDI32 1

/* Define to 1 if you have the WinHttp library */
#cmakedefine HAVE_LIBWINHTTP 1

/* Define to 1 if you have the wininet library */
#cmakedefine HAVE_LIBWININET 1

/* Define to 1 if you have the `winmm' library (-lwinmm). */
#cmakedefine HAVE_LIBWINMM 1

/* Define to 1 if you have the wsock32 library */
#cmakedefine HAVE_LIBWSOCK32 1

/* Define to 1 if you have the wtsapi32 library */
#cmakedefine HAVE_LIBWTSAPI32 1

/* Define to 1 if you have the <locale.h> header file. */
#cmakedefine HAVE_LOCALE_H 1

/* Define to 1 if you have the `localtime' function. */
#cmakedefine HAVE_LOCALTIME 1

/* Define to 1 if you have the `localtime_r' function. */
#cmakedefine HAVE_LOCALTIME_R 1

/* Define to 1 if you have the <memory.h> header file. */
#cmakedefine HAVE_MEMORY_H 1

/* Define to 1 if you have the <MesaGL/glaux.h> header file. */
#cmakedefine HAVE_MESAGL_GLAUX_H 1

/* Define to 1 if you have the <MesaGL/glut.h> header file. */
#cmakedefine HAVE_MESAGL_GLUT_H 1

/* Define to 1 if you have the <MesaGL/glu.h> header file. */
#cmakedefine HAVE_MESAGL_GLU_H 1

/* Define to 1 if you have the <MesaGL/gl.h> header file. */
#cmakedefine HAVE_MESAGL_GL_H 1

/* Define to 1 if you have a visual c runtime library */
#cmakedefine HAVE_MSVCRT 1

/* Define if your C++ compiler supports namespaces */
#cmakedefine HAVE_NAMESPACES

/* Define to 1 if you have the <ndir.h> header file, and it defines `DIR'. */
#cmakedefine HAVE_NDIR_H 1

/* Define to 1 if you have the <netdb.h> header file. */
#cmakedefine HAVE_NETDB_H 1

/* Define to 1 if you have the <netinet/ether.h> header file. */
#cmakedefine HAVE_NETINET_ETHER_H 1

/* Define to 1 if you have the <netinet/if_ether.h> header file. */
#cmakedefine HAVE_NETINET_IF_ETHER_H 1

/* Define to 1 if you have the <netinet/in.h> header file. */
#cmakedefine HAVE_NETINET_IN_H 1

/* Define to 1 if you have the <netinet/tcp.h> header file. */
#cmakedefine HAVE_NETINET_TCP_H 1

/* Define to 1 if you have the <net/if_arp.h> header file. */
#cmakedefine HAVE_NET_IF_ARP_H 1

/* Define to 1 if you have the <net/if.h> header file. */
#cmakedefine HAVE_NET_IF_H 1

/* Define to 1 if you have the <ntapi.h> header file. */
#cmakedefine HAVE_NTAPI_H 1

/* Define to 1 if your compiler has the nvapi.h header file */
#cmakedefine HAVE_NVAPI_H 1

/* Define to 1 if you have the <OpenGL/glaux.h> header file. */
#cmakedefine HAVE_OPENGL_GLAUX_H 1

/* Define to 1 if you have the <OpenGL/glut.h> header file. */
#cmakedefine HAVE_OPENGL_GLUT_H 1

/* Define to 1 if you have the <OpenGL/glu.h> header file. */
#cmakedefine HAVE_OPENGL_GLU_H 1

/* Define to 1 if you have the <OpenGL/gl.h> header file. */
#cmakedefine HAVE_OPENGL_GL_H 1

/* Define to 1 if you have the <pmmintrin.h> header file. */
#cmakedefine HAVE_PMMINTRIN_H 1

/* Define to 1 if you have the <procfs.h> header file. */
#cmakedefine HAVE_PROCFS_H 1

/* Define if you have POSIX threads libraries and header files. */
#cmakedefine HAVE_PTHREAD

/* Have PTHREAD_PRIO_INHERIT. */
#cmakedefine HAVE_PTHREAD_PRIO_INHERIT

/* Define to 1 if you have the `putenv' function. */
#cmakedefine HAVE_PUTENV 1

/* Define to 1 if you have the resolv library */
#cmakedefine HAVE_RESOLV 1

/* Define to 1 if you have the `res_init' function. */
#cmakedefine HAVE_RES_INIT 1

/* Define to 1 if you have the <sal.h> header file. */
#cmakedefine HAVE_SAL_H 1

/* Define to 1 if you have the `sched_setscheduler' function. */
#cmakedefine HAVE_SCHED_SETSCHEDULER 1

/* Define to 1 if your compiler has the security.h header file */
#cmakedefine HAVE_SECURITY_H 1

/* Define to 1 if you have the `setenv' function. */
#cmakedefine HAVE_SETENV 1

/* Define to 1 if you have the <setjmp.h> header file. */
#cmakedefine HAVE_SETJMP_H 1

/* Define to 1 if you have the `setpriority' function. */
#cmakedefine HAVE_SETPRIORITY 1

/* Define to 1 if you have the `setutent' function. */
#cmakedefine HAVE_SETUTENT 1

/* Define to 1 if you have the `sigaction' function. */
#cmakedefine HAVE_SIGACTION 1

/* Define to 1 if you have the <signal.h> header file. */
#cmakedefine HAVE_SIGNAL_H 1

/* Define to 1 if the system has the type `socklen_t'. */
#cmakedefine HAVE_SOCKLEN_T 1

/* Define to 1 if you have sqlite3. */
#cmakedefine HAVE_SQLITE3 1

/* Define to 1 if you have the `sqlite3_open' function. */
#cmakedefine HAVE_SQLITE3_OPEN 1

/* Define to 1 if you have the `stat64' function. */
#cmakedefine HAVE_STAT64 1

/* Define to 1 if you have the <stdint.h> header file. */
#cmakedefine HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#cmakedefine HAVE_STDLIB_H 1

/* Define to 1 if locale is in namespace std:: */
#cmakedefine HAVE_STD_LOCALE 1

/* Define to 1 if max is in namespace std:: */
#cmakedefine HAVE_STD_MAX 1

/* Define to 1 if min is in namespace std:: */
#cmakedefine HAVE_STD_MIN 1

/* Define to 1 if transform is in namespace std:: */
#cmakedefine HAVE_STD_TRANSFORM 1

/* Define to 1 if you have the `strcasecmp' function. */
#cmakedefine HAVE_STRCASECMP 1

/* Define to 1 if you have the `strcasestr' function. */
#cmakedefine HAVE_STRCASESTR 1

/* Define to 1 if you have the `strdup' function. */
#cmakedefine HAVE_STRDUP 1

/* Define to 1 if you have the `strdupa' function. */
#cmakedefine HAVE_STRDUPA 1

/* Define to 1 if you have the <strings.h> header file. */
#cmakedefine HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#cmakedefine HAVE_STRING_H 1

/* Define to 1 if you have the `strlcat' function. */
#cmakedefine HAVE_STRLCAT 1

/* Define to 1 if you have the `strlcpy' function. */
#cmakedefine HAVE_STRLCPY 1

/* Define to 1 if you have the `strtoull' function. */
#cmakedefine HAVE_STRTOULL 1

/* Define to 1 if the system has the type `struct ether_addr'. */
#cmakedefine HAVE_STRUCT_ETHER_ADDR 1

/* Define to 1 if the system has the type `struct ifconf'. */
#cmakedefine HAVE_STRUCT_IFCONF 1

/* Define to 1 if the system has the type `struct ifreq'. */
#cmakedefine HAVE_STRUCT_IFREQ 1

/* Define to 1 if the system has the type `struct lifconf'. */
#cmakedefine HAVE_STRUCT_LIFCONF 1

/* Define to 1 if the system has the type `struct lifreq'. */
#cmakedefine HAVE_STRUCT_LIFREQ 1

/* Define to 1 if `tm_zone' is a member of `struct tm'. */
#cmakedefine HAVE_STRUCT_TM_TM_ZONE 1

/* Define to 1 if the system has the type `SYSTEM_PROCESSES'. */
#cmakedefine HAVE_SYSTEM_PROCESSES 1

/* Define to 1 if the system has the type `SYSTEM_THREADS'. */
#cmakedefine HAVE_SYSTEM_THREADS 1

/* Define to 1 if you have the <sys/auxv.h> header file. */
#cmakedefine HAVE_SYS_AUXV_H 1

/* Define to 1 if you have the <sys/dir.h> header file, and it defines `DIR'.
   */
#cmakedefine HAVE_SYS_DIR_H 1

/* Define to 1 if you have the <sys/fcntl.h> header file. */
#cmakedefine HAVE_SYS_FCNTL_H 1

/* Define to 1 if you have the <sys/file.h> header file. */
#cmakedefine HAVE_SYS_FILE_H 1

/* Define to 1 if you have the <sys/ioctl.h> header file. */
#cmakedefine HAVE_SYS_IOCTL_H 1

/* Define to 1 if you have the <sys/ipc.h> header file. */
#cmakedefine HAVE_SYS_IPC_H 1

/* Define to 1 if you have the <sys/mount.h> header file. */
#cmakedefine HAVE_SYS_MOUNT_H 1

/* Define to 1 if you have the <sys/msg.h> header file. */
#cmakedefine HAVE_SYS_MSG_H 1

/* Define to 1 if you have the <sys/ndir.h> header file, and it defines `DIR'.
   */
#cmakedefine HAVE_SYS_NDIR_H 1

/* Define to 1 if you have the <sys/param.h> header file. */
#cmakedefine HAVE_SYS_PARAM_H 1

/* Define to 1 if you have the <sys/resource.h> header file. */
#cmakedefine HAVE_SYS_RESOURCE_H 1

/* Define to 1 if you have the <sys/select.h> header file. */
#cmakedefine HAVE_SYS_SELECT_H 1

/* Define to 1 if you have the <sys/sem.h> header file. */
#cmakedefine HAVE_SYS_SEM_H 1

/* Define to 1 if you have the <sys/sensors.h> header file. */
#cmakedefine HAVE_SYS_SENSORS_H 1

/* Define to 1 if you have the <sys/shm.h> header file. */
#cmakedefine HAVE_SYS_SHM_H 1

/* Define to 1 if you have the <sys/socket.h> header file. */
#cmakedefine HAVE_SYS_SOCKET_H 1

/* Define to 1 if you have the <sys/sockio.h> header file. */
#cmakedefine HAVE_SYS_SOCKIO_H 1

/* Define to 1 if you have the <sys/statfs.h> header file. */
#cmakedefine HAVE_SYS_STATFS_H 1

/* Define to 1 if you have the <sys/statvfs.h> header file. */
#cmakedefine HAVE_SYS_STATVFS_H 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#cmakedefine HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/swap.h> header file. */
#cmakedefine HAVE_SYS_SWAP_H 1

/* Define to 1 if you have the <sys/sysctl.h> header file. */
#cmakedefine HAVE_SYS_SYSCTL_H 1

/* Define to 1 if you have the <sys/systeminfo.h> header file. */
#cmakedefine HAVE_SYS_SYSTEMINFO_H 1

/* Define to 1 if you have the <sys/time.h> header file. */
#cmakedefine HAVE_SYS_TIME_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#cmakedefine HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <sys/un.h> header file. */
#cmakedefine HAVE_SYS_UN_H 1

/* Define to 1 if you have the <sys/utsname.h> header file. */
#cmakedefine HAVE_SYS_UTSNAME_H 1

/* Define to 1 if you have the <sys/vmmeter.h> header file. */
#cmakedefine HAVE_SYS_VMMETER_H 1

/* Define to 1 if you have the <sys/wait.h> header file. */
#cmakedefine HAVE_SYS_WAIT_H 1

/* Define to 1 if the system has the type `THREAD_STATE'. */
#cmakedefine HAVE_THREAD_STATE 1

/* Define to 1 if the system has the type `THREAD_WAIT_REASON'. */
#cmakedefine HAVE_THREAD_WAIT_REASON 1

/* Define to 1 if your `struct tm' has `tm_zone'. Deprecated, use
   `HAVE_STRUCT_TM_TM_ZONE' instead. */
#cmakedefine HAVE_TM_ZONE 1

/* Define to 1 if you don't have `tm_zone' but do have the external array
   `tzname'. */
#cmakedefine HAVE_TZNAME 1

/* Define to 1 if you have the <unistd.h> header file. */
#cmakedefine HAVE_UNISTD_H 1

/* Define to 1 if you have the `unsetenv' function. */
#cmakedefine HAVE_UNSETENV 1

/* Define to 1 if you have the <utmp.h> header file. */
#cmakedefine HAVE_UTMP_H 1

/* Define to 1 if the system has the type `VM_COUNTERS'. */
#cmakedefine HAVE_VM_COUNTERS 1

/* Define to 1 if you have the `vprintf' function. */
#cmakedefine HAVE_VPRINTF 1

/* Define to 1 if you have the <windows.h> header file. */
#cmakedefine HAVE_WINDOWS_H 1

/* Define to 1 if you have the <winhttp.h> header file. */
#cmakedefine HAVE_WINHTTP_H 1

/* Define to 1 if you have the <winsock2.h> header file. */
#cmakedefine HAVE_WINSOCK2_H 1

/* Define to 1 if you have the <winsock.h> header file. */
#cmakedefine HAVE_WINSOCK_H 1

/* Define to 1 if you have the <winternl.h> header file. */
#cmakedefine HAVE_WINTERNL_H 1

/* Define to 1 if you have the <ws2tcpip.h> header file. */
#cmakedefine HAVE_WS2TCPIP_H 1

/* Define to 1 if you have X11 library */
#cmakedefine HAVE_X11 1

/* Define to 1 if you have the <x86intrin.h> header file. */
#cmakedefine HAVE_X86INTRIN_H 1

/* Define to 1 if you have the <xlocale.h> header file. */
#cmakedefine HAVE_XLOCALE_H 1

/* Define to 1 if you have the <xmmintrin.h> header file. */
#cmakedefine HAVE_XMMINTRIN_H 1

/* Define to 1 if you have xss library */
#cmakedefine HAVE_XSS 1

/* Define to 1 if /proc/meminfo exists */
#cmakedefine HAVE__PROC_MEMINFO 1

/* Define to 1 if /proc/self/exe exists */
#cmakedefine HAVE__PROC_SELF_EXE 1

/* Define to 1 if /proc/self/psinfo exists */
#cmakedefine HAVE__PROC_SELF_PSINFO 1

/* Define to 1 if /proc/self/stat exists */
#cmakedefine HAVE__PROC_SELF_STAT 1

/* Define to 1 if you have the `_strdup' function. */
#cmakedefine HAVE__STRDUP 1

/* Define to 1 if you have the `_strdupa' function. */
#cmakedefine HAVE__STRDUPA 1

/* Platform identification used to identify applications for this BOINC core
   client */
#cmakedefine HOSTTYPE "@HOSTTYPE@"

/* Alternate identification used to identify applications for this BOINC core
   client */
#cmakedefine HOSTTYPEALT "@HOSTTYPEALT@"

/* "Define to 1 if largefile support causes missing symbols in C++" */
#cmakedefine LARGEFILE_BREAKS_CXX 1

/* Define to the name of libcurl's certification file */
#cmakedefine LIBCURL_CABUNDLE

/* Defined if libcurl supports AsynchDNS */
#cmakedefine LIBCURL_FEATURE_ASYNCHDNS

/* Defined if libcurl supports IPv6 */
#cmakedefine LIBCURL_FEATURE_IPV6

/* Defined if libcurl supports KRB4 */
#cmakedefine LIBCURL_FEATURE_KRB4

/* Defined if libcurl supports libz */
#cmakedefine LIBCURL_FEATURE_LIBZ

/* Defined if libcurl supports SSL */
#cmakedefine LIBCURL_FEATURE_SSL

/* Defined if libcurl supports DICT */
#cmakedefine LIBCURL_PROTOCOL_DICT

/* Defined if libcurl supports FILE */
#cmakedefine LIBCURL_PROTOCOL_FILE

/* Defined if libcurl supports FTP */
#cmakedefine LIBCURL_PROTOCOL_FTP

/* Defined if libcurl supports FTPS */
#cmakedefine LIBCURL_PROTOCOL_FTPS

/* Defined if libcurl supports GOPHER */
#cmakedefine LIBCURL_PROTOCOL_GOPHER

/* Defined if libcurl supports HTTP */
#cmakedefine LIBCURL_PROTOCOL_HTTP

/* Defined if libcurl supports HTTPS */
#cmakedefine LIBCURL_PROTOCOL_HTTPS

/* Defined if libcurl supports LDAP */
#cmakedefine LIBCURL_PROTOCOL_LDAP

/* Defined if libcurl supports TELNET */
#cmakedefine LIBCURL_PROTOCOL_TELNET

/* Define to the sub-directory where libtool stores uninstalled libraries. */
#cmakedefine LT_OBJDIR "@LT_OBJDIR@"

/* Name of package */
#cmakedefine PACKAGE "@PACKAGE@"

/* Define to the address where bug reports for this package should be sent. */
#cmakedefine PACKAGE_BUGREPORT "@PACKAGE_BUGREPORT@"

/* Define to the full name of this package. */
#cmakedefine PACKAGE_NAME "@PACKAGE_NAME@"

/* Define to the full name and version of this package. */
#cmakedefine PACKAGE_STRING "@PACKAGE_STRING@"

/* Define to the one symbol short name of this package. */
#cmakedefine PACKAGE_TARNAME "@PACKAGE_TARNAME@"

/* Define to the home page for this package. */
#cmakedefine PACKAGE_URL "@PACKAGE_URL@"

/* Define to the version of this package. */
#cmakedefine PACKAGE_VERSION "@PACKAGE_VERSION@"

/* Define to necessary symbol if this constant uses a non-standard name on
   your system. */
#cmakedefine PTHREAD_CREATE_JOINABLE "@PTHREAD_CREATE_JOINABLE@"

/* Define as the return type of signal handlers (`int' or `void'). */
#cmakedefine RETSIGTYPE "@RETSIGTYPE@"

/* Define to 1 if your compiler has the security.h header file */
#cmakedefine SECURITY_WIN32 1

/* Define to 1 if you have the ANSI C header files. */
#cmakedefine STDC_HEADERS 1

/* Define to 1 if you can safely include both <sys/time.h> and <time.h>. */
#cmakedefine TIME_WITH_SYS_TIME 1

/* Define to 1 if your <sys/time.h> declares `struct tm'. */
#cmakedefine TM_IN_SYS_TIME 1

/* "Define to 1 if you want to use the openssl crypto library" */
#cmakedefine USE_OPENSSL 1

/* Define to 1 to use windows sockets */
#cmakedefine USE_WINSOCK 1

/* utmp file location */
#cmakedefine UTMP_LOCATION "@UTMP_LOCATION@"

/* Version number of package */
#cmakedefine VERSION "@VERSION@"

/* Define to prevent redefinition of INT32 in jconfig.h */
#cmakedefine XMD_H

/* Define to 1 if the X Window System is missing or not being used. */
#cmakedefine X_DISPLAY_MISSING 1

/* Enable large inode numbers on Mac OS X 10.5.  */
#ifndef _DARWIN_USE_64_BIT_INODE
# define _DARWIN_USE_64_BIT_INODE 1
#endif

/* Number of bits in a file offset, on hosts where this is settable. */
#cmakedefine _FILE_OFFSET_BITS

/* Define for large files, on AIX-style hosts. */
#cmakedefine _LARGE_FILES

/* Define to empty if `const' does not conform to ANSI C. */
#cmakedefine const "@CONST_EMPTY@

/* Define curl_free() as free() if our version of curl lacks curl_free. */
#cmakedefine curl_free

/* Define to `unsigned int' if <sys/types.h> does not define. */
#cmakedefine size_t



#if !HAVE_DECL__CONFIGTHREADLOCALE
#define NO_PER_THREAD_LOCALE 1
#cmakedefine HAVE__CONFIGTHREADLOCALE
#else
#cmakedefine NO_PER_THREAD_LOCALE
#define HAVE__CONFIGTHREADLOCALE 1
#endif

#ifndef HAVE_RES_INIT
#define res_init() (0)
#endif

#include "project_specific_defines.h"

/* end double-inclusion protection for config.h */
#endif /* #ifndef BOINC_CONFIG_H */

