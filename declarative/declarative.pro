TEMPLATE = lib
QT += declarative dbus

CONFIG += qt \
    plugin \
    link_pkgconfig 

INCLUDEPATH += ../bluetooth-qt
LIBS += -L../bluetooth-qt -lbluetooth-qt

TARGET = Bluetooth-qt
OBJECTS_DIR = .obj
MOC_DIR = .moc

# Input
SOURCES += components.cpp 

OTHER_FILES += qmldir

HEADERS += components.h 

qmldir.files += qmldir
qmldir.path = $$[QT_INSTALL_IMPORTS]/MeeGo/Bluetooth

target.path = $$[QT_INSTALL_IMPORTS]/MeeGo/Bluetooth

INSTALLS += qmldir target
