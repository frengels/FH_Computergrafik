#-------------------------------------------------
#
# Project created by QtCreator 2018-04-12T19:51:37
#
#-------------------------------------------------

QT       += core gui opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = praktikum_1
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp \
    myglwidget.cpp \
    model.cpp

HEADERS += \
        mainwindow.hpp \
    myglwidget.hpp \
    vertex.hpp \
    modelloader.h \
    model.hpp

FORMS += \
        mainwindow.ui

RESOURCES += \
    shaders.qrc

win32 {
    message(Target: win32)
    LIBS += -L../assimp-mingw32-4.1.0/bin -lassimp
    INCLUDEPATH += ../assimp-mingw32-4.1.0/include
} unix {
    message(Target: unix)
    CONFIG += link_pkgconfig
    PKGCONFIG += assimp
}
