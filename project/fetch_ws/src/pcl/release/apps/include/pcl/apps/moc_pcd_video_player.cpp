/****************************************************************************
** Meta object code from reading C++ file 'pcd_video_player.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../apps/include/pcl/apps/pcd_video_player.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'pcd_video_player.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_PCDVideoPlayer_t {
    QByteArrayData data[11];
    char stringdata0[181];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_PCDVideoPlayer_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_PCDVideoPlayer_t qt_meta_stringdata_PCDVideoPlayer = {
    {
QT_MOC_LITERAL(0, 0, 14), // "PCDVideoPlayer"
QT_MOC_LITERAL(1, 15, 17), // "playButtonPressed"
QT_MOC_LITERAL(2, 33, 0), // ""
QT_MOC_LITERAL(3, 34, 17), // "stopButtonPressed"
QT_MOC_LITERAL(4, 52, 17), // "backButtonPressed"
QT_MOC_LITERAL(5, 70, 17), // "nextButtonPressed"
QT_MOC_LITERAL(6, 88, 25), // "selectFolderButtonPressed"
QT_MOC_LITERAL(7, 114, 24), // "selectFilesButtonPressed"
QT_MOC_LITERAL(8, 139, 23), // "indexSliderValueChanged"
QT_MOC_LITERAL(9, 163, 5), // "value"
QT_MOC_LITERAL(10, 169, 11) // "timeoutSlot"

    },
    "PCDVideoPlayer\0playButtonPressed\0\0"
    "stopButtonPressed\0backButtonPressed\0"
    "nextButtonPressed\0selectFolderButtonPressed\0"
    "selectFilesButtonPressed\0"
    "indexSliderValueChanged\0value\0timeoutSlot"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_PCDVideoPlayer[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   54,    2, 0x0a /* Public */,
       3,    0,   55,    2, 0x0a /* Public */,
       4,    0,   56,    2, 0x0a /* Public */,
       5,    0,   57,    2, 0x0a /* Public */,
       6,    0,   58,    2, 0x0a /* Public */,
       7,    0,   59,    2, 0x0a /* Public */,
       8,    1,   60,    2, 0x0a /* Public */,
      10,    0,   63,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,    9,
    QMetaType::Void,

       0        // eod
};

void PCDVideoPlayer::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        PCDVideoPlayer *_t = static_cast<PCDVideoPlayer *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->playButtonPressed(); break;
        case 1: _t->stopButtonPressed(); break;
        case 2: _t->backButtonPressed(); break;
        case 3: _t->nextButtonPressed(); break;
        case 4: _t->selectFolderButtonPressed(); break;
        case 5: _t->selectFilesButtonPressed(); break;
        case 6: _t->indexSliderValueChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 7: _t->timeoutSlot(); break;
        default: ;
        }
    }
}

const QMetaObject PCDVideoPlayer::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_PCDVideoPlayer.data,
      qt_meta_data_PCDVideoPlayer,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *PCDVideoPlayer::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *PCDVideoPlayer::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_PCDVideoPlayer.stringdata0))
        return static_cast<void*>(const_cast< PCDVideoPlayer*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int PCDVideoPlayer::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 8)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 8;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
