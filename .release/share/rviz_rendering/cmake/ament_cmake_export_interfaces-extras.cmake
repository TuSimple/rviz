# generated from ament_cmake_export_interfaces/cmake/ament_cmake_export_interfaces-extras.cmake.in

set(_exported_interfaces "rviz_rendering")

# include all exported interfaces
if(NOT _exported_interfaces STREQUAL "")
  foreach(_interface ${_exported_interfaces})
    include("${rviz_rendering_DIR}/${_interface}Export.cmake")
    list(APPEND rviz_rendering_INTERFACES "rviz_rendering::${_interface}")
  endforeach()
endif()
