load(qt_build_config)

TARGET = gstmediacapture
PLUGIN_TYPE = mediaservice

load(qt_plugin)
DESTDIR = $$QT.multimedia.plugins/$${PLUGIN_TYPE}

include(../common.pri)

INCLUDEPATH += $$PWD

HEADERS += $$PWD/qgstreamercaptureservice.h \
    $$PWD/qgstreamercapturesession.h \
    $$PWD/qgstreameraudioencode.h \
    $$PWD/qgstreamervideoencode.h \
    $$PWD/qgstreamerrecordercontrol.h \
    $$PWD/qgstreamermediacontainercontrol.h \
    $$PWD/qgstreamercameracontrol.h \
    $$PWD/qgstreamerv4l2input.h \
    $$PWD/qgstreamercapturemetadatacontrol.h \
    $$PWD/qgstreamerimagecapturecontrol.h \
    $$PWD/qgstreamerimageencode.h \
    $$PWD/qgstreamercaptureserviceplugin.h

SOURCES += $$PWD/qgstreamercaptureservice.cpp \
    $$PWD/qgstreamercapturesession.cpp \
    $$PWD/qgstreameraudioencode.cpp \
    $$PWD/qgstreamervideoencode.cpp \
    $$PWD/qgstreamerrecordercontrol.cpp \
    $$PWD/qgstreamermediacontainercontrol.cpp \
    $$PWD/qgstreamercameracontrol.cpp \
    $$PWD/qgstreamerv4l2input.cpp \
    $$PWD/qgstreamercapturemetadatacontrol.cpp \
    $$PWD/qgstreamerimagecapturecontrol.cpp \
    $$PWD/qgstreamerimageencode.cpp \
    $$PWD/qgstreamercaptureserviceplugin.cpp

target.path += $$[QT_INSTALL_PLUGINS]/$${PLUGIN_TYPE}
INSTALLS += target

# Camera usage with gstreamer needs to have
#CONFIG += use_gstreamer_camera

use_gstreamer_camera {
DEFINES += USE_GSTREAMER_CAMERA

OTHER_FILES += \
    mediacapturecamera.json
} else {
OTHER_FILES += \
    mediacapture.json
}

