cmake_minimum_required(VERSION 2.6)
project(webspider)

find_package(Boost 1.37 REQUIRED filesystem system thread program_options)
include_directories(${Boost_INCLUDE_DIRS})

#htmlcxx
find_library ( Htmlcxx  "htmlcxx" )

include_directories("./include")
include_directories("../statsem_string/include")
link_directories ( ${Boost_LIBRARY_DIRS}  "../statsem_string/bin")

aux_source_directory("./src/" SOURCES)

add_executable( whalebot ${SOURCES} )
target_link_libraries ( whalebot ${Boost_LIBRARIES} ${Htmlcxx} string_parse )

install ( TARGETS whalebot RUNTIME DESTINATION bin CONFIGURATIONS RELEASE)