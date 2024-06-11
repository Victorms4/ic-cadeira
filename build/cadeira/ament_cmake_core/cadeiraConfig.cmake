# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_cadeira_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED cadeira_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(cadeira_FOUND FALSE)
  elseif(NOT cadeira_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(cadeira_FOUND FALSE)
  endif()
  return()
endif()
set(_cadeira_CONFIG_INCLUDED TRUE)

# output package information
if(NOT cadeira_FIND_QUIETLY)
  message(STATUS "Found cadeira: 0.0.0 (${cadeira_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'cadeira' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT cadeira_DEPRECATED_QUIET)
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(cadeira_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${cadeira_DIR}/${_extra}")
endforeach()
