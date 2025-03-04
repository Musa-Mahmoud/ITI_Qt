cmake_minimum_required(VERSION 3.16)

project(CapsLock VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 REQUIRED COMPONENTS Quick QuickControls2)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appCapsLock
    main.cpp
)

qt_add_qml_module(appCapsLock
    URI CapsLock
    VERSION 1.0
    QML_FILES
        Main.qml
        RESOURCES resources.qrc
        QML_FILES HomePage.qml
        QML_FILES CapsLockPage.qml
        SOURCES capslock.h capslock.cpp
        SOURCES capslock.h capslock.cpp
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appCapsLock PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appCapsLock
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appCapsLock
    PRIVATE Qt6::Quick Qt6::QuickControls2
)

include(GNUInstallDirs)
install(TARGETS appCapsLock
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
