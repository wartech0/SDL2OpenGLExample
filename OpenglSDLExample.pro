TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp \
    gl_core_4_0.cpp

include(deployment.pri)
qtcAddDeployment()

LIBS += -L/usr/local/lib -lSDL2 -lGL
CONFIG += c++11

HEADERS += \
    gl_core_4_0.hpp

