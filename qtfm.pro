TEMPLATE = subdirs
CONFIG -= ordered
SUBDIRS += libfm libdisks fm
fm.depends += libfm

CONFIG(basic) {
    CONFIG += no_udisks no_tray
}
!CONFIG(no_udisks) {
    fm.depends += libdisks
}
!CONFIG(no_tray) {
    SUBDIRS += tray
    tray.depends += libdisks libfm
}
