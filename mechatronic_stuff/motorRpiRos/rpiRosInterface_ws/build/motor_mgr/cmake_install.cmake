# Install script for directory: /home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/src/motor_mgr

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/motor_mgr/srv" TYPE FILE FILES "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/src/motor_mgr/srv/command_mgr.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/motor_mgr/cmake" TYPE FILE FILES "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/build/motor_mgr/catkin_generated/installspace/motor_mgr-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/devel/include/motor_mgr")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/devel/share/roseus/ros/motor_mgr")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/devel/share/common-lisp/ros/motor_mgr")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/devel/share/gennodejs/ros/motor_mgr")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/devel/lib/python2.7/dist-packages/motor_mgr")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/devel/lib/python2.7/dist-packages/motor_mgr")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/build/motor_mgr/catkin_generated/installspace/motor_mgr.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/motor_mgr/cmake" TYPE FILE FILES "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/build/motor_mgr/catkin_generated/installspace/motor_mgr-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/motor_mgr/cmake" TYPE FILE FILES
    "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/build/motor_mgr/catkin_generated/installspace/motor_mgrConfig.cmake"
    "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/build/motor_mgr/catkin_generated/installspace/motor_mgrConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/motor_mgr" TYPE FILE FILES "/home/baaahy/portal/work/ongoingProjects/libraryBot/motorRpiRos/arle_ws/src/motor_mgr/package.xml")
endif()

