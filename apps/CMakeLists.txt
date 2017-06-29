include_directories(${CMAKE_BINARY_DIR} ${CMAKE_SOURCE_DIR}/db ${CMAKE_SOURCE_DIR}/lib ${CMAKE_SOURCE_DIR}/apps ${CMAKE_SOURCE_DIR}/api )

add_executable(upper_case upper_case.cpp)
target_link_libraries(upper_case boinc_api boinc ${CMAKE_THREAD_LIBS_INIT} ${Backtrace_LIBRARIES})

add_executable(concat concat.cpp)
target_link_libraries(concat boinc_api boinc ${CMAKE_THREAD_LIBS_INIT} ${Backtrace_LIBRARIES})

add_executable(1sec 1sec.cpp)
target_link_libraries(1sec boinc_api boinc ${CMAKE_THREAD_LIBS_INIT} )
