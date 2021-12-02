qt5_add_resources(test_for_iaroslav_SRCS resources.qrc)
add_executable(test_for_iaroslav main.cpp ${test_for_iaroslav_SRCS})
target_link_libraries(test_for_iaroslav Qt5::Qml Qt5::Gui)

