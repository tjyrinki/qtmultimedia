TEMPLATE = subdirs

SUBDIRS += multimedia.pro
qtHaveModule(widgets): SUBDIRS += multimediawidgets.pro
# Does not find the multimedia module despite paths being set
#qtHaveModule(qml): SUBDIRS += multimediaqml.pro
