include_directories(${CMAKE_BINARY_DIR} ${CMAKE_SOURCE_DIR}/db ${CMAKE_SOURCE_DIR}/lib ${CMAKE_SOURCE_DIR}/tools ${CMAKE_SOURCE_DIR}/sched ${CMAKE_SOURCE_DIR}/vda	${MYSQL_INCLUDE_DIR} ${OPENSSL_INCLUDE_DIR} )

add_library(sched STATIC credit.cpp sched_shmem.cpp sched_util.cpp sched_util_basic.cpp sched_config.cpp sched_limit.cpp 
${CMAKE_SOURCE_DIR}/db/boinc_db.cpp ${CMAKE_SOURCE_DIR}/db/db_base.cpp ${CMAKE_SOURCE_DIR}/tools/process_result_template.cpp ${CMAKE_SOURCE_DIR}/tools/process_input_template.cpp ${CMAKE_SOURCE_DIR}/tools/backend_lib.cpp)

add_executable(adjust_user_priority adjust_user_priority.cpp)
target_link_libraries(adjust_user_priority sched boinc_crypt boinc ${OPENSSL_LIBRARIES} ${MYSQL_LIBRARIES})

add_executable(delete_file delete_file.cpp)
target_link_libraries(delete_file sched boinc_crypt boinc ${OPENSSL_LIBRARIES} ${MYSQL_LIBRARIES})

add_executable(get_file get_file.cpp)
target_link_libraries(get_file sched boinc_crypt boinc ${OPENSSL_LIBRARIES} ${MYSQL_LIBRARIES})

add_executable(make_work make_work.cpp)
target_link_libraries(make_work sched boinc_crypt boinc ${OPENSSL_LIBRARIES} ${MYSQL_LIBRARIES})

add_executable(put_file put_file.cpp)
target_link_libraries(put_file sched boinc_crypt boinc ${OPENSSL_LIBRARIES} ${MYSQL_LIBRARIES})

add_executable(sched_driver sched_driver.cpp)
target_link_libraries(sched_driver boinc)

add_executable(show_shmem show_shmem.cpp)
target_link_libraries(show_shmem sched boinc ${MYSQL_LIBRARIES})

add_executable(wu_check wu_check.cpp)
target_link_libraries(wu_check sched boinc ${MYSQL_LIBRARIES})

add_executable(cgi credit.cpp edf_sim.cpp handle_request.cpp hr.cpp hr_info.cpp plan_class_spec.cpp sched_array.cpp sched_assign.cpp sched_check.cpp sched_customize.cpp sched_files.cpp sched_hr.cpp sched_limit.cpp sched_locality.cpp sched_main.cpp sched_nci.cpp sched_resend.cpp sched_result.cpp sched_score.cpp sched_send.cpp sched_timezone.cpp ../vda/sched_vda.cpp sched_version.cpp sched_types.cpp time_stats_log.cpp)
target_link_libraries(cgi sched boinc_crypt boinc boinc_fcgi ${MYSQL_LIBRARIES} ${OPENSSL_LIBRARIES} ${CMAKE_THREAD_LIBS_INIT}) 

add_executable(file_upload_handler file_upload_handler.cpp sched_config.cpp sched_util_basic.cpp)
target_link_libraries(file_upload_handler sched boinc_crypt boinc ${OPENSSL_LIBRARIES} )

add_executable( antique_file_deleter antique_file_deleter.cpp)
target_link_libraries(antique_file_deleter sched boinc ${MYSQL_LIBRARIES} )

add_executable(census census.cpp hr.cpp hr_info.cpp)
target_link_libraries(census sched boinc ${MYSQL_LIBRARIES} )

add_executable(credit_test credit_test.cpp)
target_link_libraries(credit_test sched boinc ${MYSQL_LIBRARIES} )

add_executable(db_dump db_dump.cpp)
target_link_libraries(db_dump sched boinc ${MYSQL_LIBRARIES} )

add_executable(db_purge db_purge.cpp)
target_link_libraries(db_purge sched boinc ${MYSQL_LIBRARIES} )

add_executable(feeder feeder.cpp ../lib/synch.cpp hr.cpp hr_info.cpp)
target_link_libraries(feeder sched boinc ${MYSQL_LIBRARIES} )

add_executable(file_deleter file_deleter.cpp)
target_link_libraries(file_deleter sched boinc ${MYSQL_LIBRARIES} )

add_executable(message_handler message_handler.cpp)
target_link_libraries(message_handler sched boinc ${MYSQL_LIBRARIES} )

add_executable(sample_assimilator assimilator.cpp validate_util.cpp sample_assimilator.cpp)
target_link_libraries(sample_assimilator sched boinc ${MYSQL_LIBRARIES} )

add_executable(sample_bitwise_validator sample_bitwise_validator.cpp validator.cpp validate_util.cpp validate_util2.cpp)
target_link_libraries(sample_bitwise_validator sched boinc ${MYSQL_LIBRARIES} )

add_executable(sample_dummy_assimilator assimilator.cpp validate_util.cpp sample_dummy_assimilator.cpp)
target_link_libraries(sample_dummy_assimilator sched boinc ${MYSQL_LIBRARIES} )

add_executable(sample_substr_validator sample_substr_validator.cpp validator.cpp validate_util.cpp validate_util2.cpp)
target_link_libraries(sample_substr_validator sched boinc ${MYSQL_LIBRARIES} )

add_executable(sample_trivial_validator sample_trivial_validator.cpp validator.cpp validate_util.cpp validate_util2.cpp)
target_link_libraries(sample_trivial_validator sched boinc ${MYSQL_LIBRARIES} )

add_executable(sample_work_generator sample_work_generator.cpp)
target_link_libraries(sample_work_generator sched boinc_crypt boinc ${OPENSSL_LIBRARIES}  ${MYSQL_LIBRARIES} )

add_executable(script_assimilator script_assimilator.cpp assimilator.cpp validate_util.cpp)
target_link_libraries(script_assimilator sched boinc ${MYSQL_LIBRARIES} )

add_executable(script_validator credit.cpp validator.cpp validate_util.cpp validate_util2.cpp script_validator.cpp)
target_link_libraries(script_validator sched boinc ${MYSQL_LIBRARIES} )

add_executable(single_job_assimilator single_job_assimilator.cpp assimilator.cpp validate_util.cpp)
target_link_libraries(single_job_assimilator sched boinc ${MYSQL_LIBRARIES} )

add_executable(size_regulator size_regulator.cpp)
target_link_libraries(size_regulator sched boinc ${MYSQL_LIBRARIES} )

add_executable(transitioner transitioner.cpp)
target_link_libraries(transitioner sched boinc_crypt boinc ${OPENSSL_LIBRARIES}  ${MYSQL_LIBRARIES} )

add_executable(trickle_credit trickle_credit.cpp trickle_handler.cpp)
target_link_libraries(trickle_credit sched boinc ${MYSQL_LIBRARIES} )

add_executable(trickle_deadline trickle_deadline.cpp trickle_handler.cpp)
target_link_libraries(trickle_deadline sched boinc ${MYSQL_LIBRARIES} )

add_executable(trickle_echo trickle_echo.cpp trickle_handler.cpp)
target_link_libraries(trickle_echo sched boinc ${MYSQL_LIBRARIES} )

add_executable(update_stats update_stats.cpp)
target_link_libraries(update_stats sched boinc ${MYSQL_LIBRARIES} )
