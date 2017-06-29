include_directories(${CMAKE_BINARY_DIR} ${CMAKE_SOURCE_DIR}/zip ${CMAKE_SOURCE_DIR}/zip/zip ${CMAKE_SOURCE_DIR}/zip/unzip ${CMAKE_SOURCE_DIR}/lib )

add_definitions(-DUNIX -DUSE_ZIPMAIN)
include_directories(${CMAKE_SOURCE_DIR}/zip/zip/unix ${CMAKE_SOURCE_DIR}/zip/unzip/unix)

SET(ZIP_SOURCES zip/zip.c zip/zipfile.c zip/zipup.c zip/z_globals.c zip/z_fileio.c zip/util.c zip/trees.c zip/deflate.c)

SET(UNZIP_SOURCES unzip/api.c unzip/apihelp.c unzip/crc32.c unzip/crypt.c unzip/explode.c unzip/extract.c unzip/fileio.c unzip/globals.c unzip/inflate.c unzip/list.c unzip/match.c unzip/process.c unzip/ttyio.c unzip/unreduce.c unzip/unshrink.c unzip/unzip.c unzip/zipinfo.c)

SET(ZIP_SOURCES ${ZIP_SOURCES} zip/unix/z_unix.c)
SET(UNZIP_SOURCES ${UNZIP_SOURCES} unzip/unix/unix.c)

add_library(boinc_zip STATIC boinc_zip.cpp ${ZIP_SOURCES} ${UNZIP_SOURCES})
