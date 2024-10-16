cmake_minimum_required(VERSION 3.16)

project(music_test VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

# Find the package using pkg-config
find_package(PkgConfig REQUIRED)
pkg_check_modules(LIBPIPEWIRE REQUIRED libpipewire-0.3)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appmusic_test
    main.cpp
)

qt_add_qml_module(appmusic_test
    URI music_test
    VERSION 1.0
    QML_FILES
        Main.qml
        SOURCES ButtonAction.h ButtonAction.cpp
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appmusic_test PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appmusic_test
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

# Include the directories
target_include_directories(appmusic_test PRIVATE ${LIBPIPEWIRE_INCLUDE_DIRS})

target_link_libraries(appmusic_test
    PRIVATE Qt6::Quick
    ${LIBPIPEWIRE_LIBRARIES}
)

# Add compile options
target_compile_options(appmusic_test PRIVATE ${LIBPIPEWIRE_CFLAGS_OTHER} -Wall)

qt_add_resources(appmusic_test "qml"
    PREFIX
        "/"
    FILES
        ${qml_resource_files}
)

include(GNUInstallDirs)
install(TARGETS appmusic_test
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
