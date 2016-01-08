# ----------------------------------------------------
# This file is generated by the Qt Visual Studio Add-in.
# ------------------------------------------------------

TEMPLATE = app
TARGET = CamView
DESTDIR = ../x64/Debug
QT += core widgets gui
CONFIG += debug
DEFINES += WIN64 QT_DLL QT_WIDGETS_LIB _USRDLL
INCLUDEPATH += ./GeneratedFiles \
    . \
    ./GeneratedFiles/Debug
DEPENDPATH += .
MOC_DIR += ./GeneratedFiles/debug
OBJECTS_DIR += debug
UI_DIR += ./GeneratedFiles
RCC_DIR += ./GeneratedFiles

INCLUDEPATH += ../../../Common/Include
include(CamView.pri)

QMAKE_CXXFLAGS += /openmp

CONFIG(debug, debug|release) {
    win32: LIBS += -L../x64/Debug/ -lCamaroAPI.x64.dynamic
    win32: PRE_TARGETDEPS += ../x64/Debug/CamaroAPI.x64.dynamic.lib
    unix:!macx: LIBS += -L$$PWD/../camaroapi/build/debug/ -lcamaroapi
    unix:!macx: PRE_TARGETDEPS += $$PWD/../camaroapi/build/debug/libcamaroapi.a
} else {
    win32: PRE_TARGETDEPS += ../x64/Release/CamaroAPI.x64.dynamic.lib
    unix:!macx: LIBS += -L$$PWD/../camaroapi/build/release/ -lcamaroapi
    unix:!macx: PRE_TARGETDEPS += $$PWD/../camaroapi/build/release/libcamaroapi.a
}