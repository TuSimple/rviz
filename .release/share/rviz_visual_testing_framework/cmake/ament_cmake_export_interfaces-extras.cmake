# generated from ament_cmake_export_interfaces/cmake/ament_cmake_export_interfaces-extras.cmake.in

set(_exported_interfaces "rviz_visual_testing_framework")

# include all exported interfaces
if(NOT _exported_interfaces STREQUAL "")
  foreach(_interface ${_exported_interfaces})
    include("${rviz_visual_testing_framework_DIR}/${_interface}Export.cmake")
    list(APPEND rviz_visual_testing_framework_INTERFACES "rviz_visual_testing_framework::${_interface}")
  endforeach()
endif()
