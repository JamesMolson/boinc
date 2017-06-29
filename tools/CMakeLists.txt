include_directories(${CMAKE_BINARY_DIR} ${CMAKE_SOURCE_DIR}/tools ${CMAKE_SOURCE_DIR}/db ${CMAKE_SOURCE_DIR}/lib ${CMAKE_SOURCE_DIR}/sched ${MYSQL_INCLUDE_DIR} )

add_executable(cancel_jobs cancel_jobs.cpp)
target_link_libraries(cancel_jobs sched boinc_crypt boinc ${OPENSSL_LIBRARIES} ${MYSQL_LIBRARIES})

add_executable(create_work create_work.cpp)
target_link_libraries(create_work sched boinc_crypt boinc ${OPENSSL_LIBRARIES} ${MYSQL_LIBRARIES})

add_executable(dir_hier_move dir_hier_move.cpp)
target_link_libraries(dir_hier_move sched boinc)

add_executable(dir_hier_path dir_hier_path.cpp)
target_link_libraries(dir_hier_path sched boinc)

add_executable(remote_submit_test remote_submit_test.cpp ../lib/remote_submit.cpp)
target_link_libraries(remote_submit_test boinc ${CURL_LIBRARIES} )

add_executable(sign_executable sign_executable.cpp)
target_link_libraries(sign_executable boinc_crypt boinc ${OPENSSL_LIBRARIES} )

