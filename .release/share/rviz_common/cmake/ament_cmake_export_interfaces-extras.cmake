# generated from ament_cmake_export_interfaces/cmake/ament_cmake_export_interfaces-extras.cmake.in

set(_exported_interfaces "rviz_common")

# include all exported interfaces
if(NOT _exported_interfaces STREQUAL "")
  foreach(_interface ${_exported_interfaces})
    include("${rviz_common_DIR}/${_interface}Export.cmake")
    list(APPEND rviz_common_INTERFACES "rviz_common::${_interface}")
  endforeach()
endif()
