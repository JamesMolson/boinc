include_directories(${CMAKE_BINARY_DIR} ${CMAKE_SOURCE_DIR}/client ${CMAKE_SOURCE_DIR}/lib ${OPENSSL_INCLUDE_DIR})

if(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
	include_directories(${CMAKE_SOURCE_DIR}/lib/mac)
#"-framework IOKit -framework Foundation -framework ScreenSaver -framework Cocoa -framework CoreServices"
endif(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")

SET(BOINC_CLIENT_SOURCES acct_mgr.cpp acct_setup.cpp app.cpp app_config.cpp app_control.cpp app_start.cpp async_file.cpp check_state.cpp client_msgs.cpp client_state.cpp client_types.cpp coproc_sched.cpp cpu_sched.cpp cs_account.cpp cs_apps.cpp cs_benchmark.cpp cs_cmdline.cpp cs_files.cpp cs_notice.cpp cs_platforms.cpp cs_prefs.cpp cs_proxy.cpp cs_scheduler.cpp cs_statefile.cpp cs_trickle.cpp current_version.cpp dhrystone.cpp dhrystone2.cpp file_names.cpp file_xfer.cpp gpu_amd.cpp gpu_detect.cpp gpu_intel.cpp gpu_nvidia.cpp gpu_opencl.cpp gui_http.cpp gui_rpc_server.cpp gui_rpc_server_ops.cpp hostinfo_network.cpp http_curl.cpp log_flags.cpp mac_address.cpp main.cpp net_stats.cpp pers_file_xfer.cpp project.cpp result.cpp rr_sim.cpp sandbox.cpp scheduler_op.cpp thread.cpp time_stats.cpp whetstone.cpp work_fetch.cpp)

if(WIN32)
	SET(BOINC_CLIENT_SOURCES ${BOINC_CLIENT_SOURCES} hostinfo_win.cpp sysmon_win.cpp win/boinc_cli.rc win/res/boinc.ico)
	include_directories(${CMAKE_SOURCE_DIR}/client/win)
else()
	if(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
		#boinc_client_LDFLAGS += -Wl,-flat_namespace,-undefined,dynamic_lookup
	else()
		SET(BOINC_CLIENT_SOURCES ${BOINC_CLIENT_SOURCES} hostinfo_unix.cpp)
	endif(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
endif(WIN32)

add_executable(boinc_client ${BOINC_CLIENT_SOURCES})
target_link_libraries(boinc_client sched boinc_crypt boinc_api boinc_opencl boinc ${CURL_LIBRARIES} ${OPENSSL_LIBRARIES} ${CMAKE_THREAD_LIBS_INIT} ${FREETYPE_LIBRARIES} ${ZLIB_LIBRARIES} ${MYSQL_LIBRARIES} ${CMAKE_DL_LIBS} ${Backtrace_LIBRARIES})

add_executable(boinccmd boinc_cmd.cpp)
target_link_libraries(boinccmd boinc)

add_executable(switcher switcher.cpp)
target_link_libraries(switcher boinc)
