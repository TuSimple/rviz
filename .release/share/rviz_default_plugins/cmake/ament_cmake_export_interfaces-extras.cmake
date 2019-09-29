# generated from ament_cmake_export_interfaces/cmake/ament_cmake_export_interfaces-extras.cmake.in

set(_exported_interfaces "rviz_default_plugins")

# include all exported interfaces
if(NOT _exported_interfaces STREQUAL "")
  foreach(_interface ${_exported_interfaces})
    include("${rviz_default_plugins_DIR}/${_interface}Export.cmake")
    list(APPEND rviz_default_plugins_INTERFACES "rviz_default_plugins::${_interface}")
  endforeach()
endif()
