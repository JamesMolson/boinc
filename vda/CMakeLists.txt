include_directories(${CMAKE_BINARY_DIR} ${CMAKE_SOURCE_DIR}/tools ${CMAKE_SOURCE_DIR}/db ${CMAKE_SOURCE_DIR}/lib ${CMAKE_SOURCE_DIR}/sched ${MYSQL_INCLUDE_DIR} )

add_executable(vda vda.cpp vda_lib.cpp vda_lib2.cpp vda_policy.cpp stats.cpp)
target_link_libraries(vda sched boinc ${MYSQL_LIBRARIES} )

add_executable(vdad vdad.cpp vda_lib.cpp vda_lib2.cpp vda_policy.cpp stats.cpp)
target_link_libraries(vdad sched boinc ${MYSQL_LIBRARIES} )

add_executable(ssim ssim.cpp vda_lib.cpp vda_policy.cpp stats.cpp)
target_link_libraries(ssim sched boinc ${MYSQL_LIBRARIES} )
