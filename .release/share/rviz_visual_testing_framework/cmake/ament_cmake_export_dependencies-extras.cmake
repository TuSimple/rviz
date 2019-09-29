# generated from ament_cmake_export_dependencies/cmake/ament_cmake_export_dependencies-extras.cmake.in

set(_exported_dependencies "Qt5;rviz_common")

find_package(ament_cmake_libraries QUIET REQUIRED)

# find_package() all dependencies
# and append their DEFINITIONS INCLUDE_DIRS, LIBRARIES, and LINK_FLAGS
# variables to rviz_visual_testing_framework_DEFINITIONS, rviz_visual_testing_framework_INCLUDE_DIRS,
# rviz_visual_testing_framework_LIBRARIES, and rviz_visual_testing_framework_LINK_FLAGS.
# Additionally collect the direct dependency names in
# rviz_visual_testing_framework_DEPENDENCIES as well as the recursive dependency names
# in rviz_visual_testing_framework_RECURSIVE_DEPENDENCIES.
if(NOT _exported_dependencies STREQUAL "")
  find_package(ament_cmake_core QUIET REQUIRED)
  set(rviz_visual_testing_framework_DEPENDENCIES ${_exported_dependencies})
  set(rviz_visual_testing_framework_RECURSIVE_DEPENDENCIES ${_exported_dependencies})
  set(_libraries)
  foreach(_dep ${_exported_dependencies})
    if(NOT ${_dep}_FOUND)
      find_package("${_dep}" QUIET REQUIRED)
    endif()
    if(${_dep}_DEFINITIONS)
      list_append_unique(rviz_visual_testing_framework_DEFINITIONS "${${_dep}_DEFINITIONS}")
    endif()
    if(${_dep}_INCLUDE_DIRS)
      list_append_unique(rviz_visual_testing_framework_INCLUDE_DIRS "${${_dep}_INCLUDE_DIRS}")
    endif()
    if(${_dep}_LIBRARIES)
      list(APPEND _libraries "${${_dep}_LIBRARIES}")
    endif()
    if(${_dep}_LINK_FLAGS)
      list_append_unique(rviz_visual_testing_framework_LINK_FLAGS "${${_dep}_LINK_FLAGS}")
    endif()
    if(${_dep}_RECURSIVE_DEPENDENCIES)
      list_append_unique(rviz_visual_testing_framework_RECURSIVE_DEPENDENCIES "${${_dep}_RECURSIVE_DEPENDENCIES}")
    endif()
    if(_libraries)
      ament_libraries_deduplicate(_libraries "${_libraries}")
      list(APPEND rviz_visual_testing_framework_LIBRARIES "${_libraries}")
    endif()
  endforeach()
endif()
