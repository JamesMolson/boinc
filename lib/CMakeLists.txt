include_directories(${CMAKE_BINARY_DIR} ${CMAKE_SOURCE_DIR}/lib ${OPENSSL_INCLUDE_DIR})

IF(FCGI)
	add_library(boinc_fcgi STATIC boinc_fcgi.cpp coproc.cpp filesys.cpp hostinfo.cpp md5.cpp md5_file.cpp mfile.cpp miofile.cpp msg_log.cpp opencl_boinc.cpp parse.cpp sched_msgs.cpp shmem.cpp str_util.cpp synch.cpp url.cpp util.cpp)
	SET_TARGET_PROPERTIES(boinc_fcgi PROPERTIES COMPILE_FLAGS "-D_USING_FCGI_")
ENDIF(FCGI)

SET(LIBBOINC_SOURCES app_ipc.cpp base64.cpp cc_config.cpp cert_sig.cpp coproc.cpp diagnostics.cpp filesys.cpp gui_rpc_client.cpp gui_rpc_client_ops.cpp gui_rpc_client_print.cpp hostinfo.cpp
 md5.cpp md5_file.cpp mem_usage.cpp mfile.cpp miofile.cpp msg_log.cpp network.cpp notice.cpp opencl_boinc.cpp parse.cpp prefs.cpp procinfo.cpp proc_control.cpp project_init.cpp
 proxy_info.cpp sched_msgs.cpp shmem.cpp str_util.cpp url.cpp util.cpp)

IF(WIN32)
	SET(LIBBOINC_SOURCES boinc_win.cpp daemonmgt_win.cpp diagnostics_win.cpp idlemon_win.cpp procinfo_win.cpp run_app_windows.cpp stackwalker_win.cpp win_util.cpp ${LIBBOINC_SOURCES})
ELSE()
	if(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
		include_directories(${CMAKE_SOURCE_DIR}/lib/mac)
		SET(LIBBOINC_SOURCES procinfo_mac.cpp mac/mac_backtrace.cpp mac/QBacktrace.c mac/QCrashReport.c mac/QMachOImage.c mac/QMachOImageList.c mac/QSymbols.c mac/QTaskMemory.c mac/mac_spawn.cpp ${LIBBOINC_SOURCES})
	else()
		SET(LIBBOINC_SOURCES procinfo_unix.cpp synch.cpp unix_util.cpp ${LIBBOINC_SOURCES})
	endif(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
ENDIF(WIN32)

add_executable(crypt_prog crypt_prog.cpp)
target_link_libraries(crypt_prog ${OPENSSL_LIBRARIES} boinc_crypt boinc)

add_executable(parse_test parse_test.cpp)
target_link_libraries(parse_test boinc)

add_executable(md5_test md5_test.cpp)
target_link_libraries(md5_test boinc)

#add_executable(shmem_test shmem_test.cpp)

#add_executable(msg_test msg_test.cpp)
#target_link_libraries(msg_test libboinc)

#add_executable(synch_test synch_test.cpp)
#target_link_libraries(synch_test libboinc)




add_library(boinc STATIC ${LIBBOINC_SOURCES})

add_library(boinc_crypt STATIC crypt.cpp)

