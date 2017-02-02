# project name
project(ValgTest CXX)

# minimum version
cmake_minimum_required(VERSION 2.8.8)


# find mpi
find_package(MPI REQUIRED)
get_filename_component(MPI_DIR ${MPI_CXX_COMPILER} DIRECTORY)

message(STATUS "MPI_DIR = ${MPI_DIR}")
message(STATUS "MPI_CXX_COMPILER = ${MPI_CXX_COMPILER}")
message(STATUS "MPI_INCLUDE_PATH = ${MPI_INCLUDE_PATH}")

include_directories(${MPI_INCLUDE_PATH})

add_executable(main main.cc)
target_link_libraries(main ${MPI_LIBRARIES})

if(MPI_COMPILE_FLAGS)
  set_target_properties(main PROPERTIES
    COMPILE_FLAGS "${MPI_COMPILE_FLAGS}")
endif()

if(MPI_LINK_FLAGS)
  set_target_properties(main PROPERTIES
    LINK_FLAGS "${MPI_LINK_FLAGS}")
endif()
