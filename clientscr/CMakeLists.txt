include_directories(${CMAKE_BINARY_DIR} ${CMAKE_SOURCE_DIR}/api ${CMAKE_SOURCE_DIR}/lib ${CMAKE_SOURCE_DIR}/clientscr )

add_executable(boincscr screensaver_x11.cpp)
target_link_libraries(boincscr boinc ${CMAKE_THREAD_LIBS_INIT} xcb)
