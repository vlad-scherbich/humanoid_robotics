/****************************************************************************
** Meta object code from reading C++ file 'manual_registration.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../apps/include/pcl/apps/manual_registration.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'manual_registration.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_ManualRegistration_t {
    QByteArrayData data[13];
    char stringdata0[187];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_ManualRegistration_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_ManualRegistration_t qt_meta_stringdata_ManualRegistration = {
    {
QT_MOC_LITERAL(0, 0, 18), // "ManualRegistration"
QT_MOC_LITERAL(1, 19, 22), // "confirmSrcPointPressed"
QT_MOC_LITERAL(2, 42, 0), // ""
QT_MOC_LITERAL(3, 43, 22), // "confirmDstPointPressed"
QT_MOC_LITERAL(4, 66, 16), // "calculatePressed"
QT_MOC_LITERAL(5, 83, 12), // "clearPressed"
QT_MOC_LITERAL(6, 96, 12), // "orthoChanged"
QT_MOC_LITERAL(7, 109, 5), // "state"
QT_MOC_LITERAL(8, 115, 21), // "applyTransformPressed"
QT_MOC_LITERAL(9, 137, 13), // "refinePressed"
QT_MOC_LITERAL(10, 151, 11), // "undoPressed"
QT_MOC_LITERAL(11, 163, 11), // "safePressed"
QT_MOC_LITERAL(12, 175, 11) // "timeoutSlot"

    },
    "ManualRegistration\0confirmSrcPointPressed\0"
    "\0confirmDstPointPressed\0calculatePressed\0"
    "clearPressed\0orthoChanged\0state\0"
    "applyTransformPressed\0refinePressed\0"
    "undoPressed\0safePressed\0timeoutSlot"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_ManualRegistration[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      10,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   64,    2, 0x0a /* Public */,
       3,    0,   65,    2, 0x0a /* Public */,
       4,    0,   66,    2, 0x0a /* Public */,
       5,    0,   67,    2, 0x0a /* Public */,
       6,    1,   68,    2, 0x0a /* Public */,
       8,    0,   71,    2, 0x0a /* Public */,
       9,    0,   72,    2, 0x0a /* Public */,
      10,    0,   73,    2, 0x0a /* Public */,
      11,    0,   74,    2, 0x0a /* Public */,
      12,    0,   75,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,    7,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void ManualRegistration::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        ManualRegistration *_t = static_cast<ManualRegistration *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->confirmSrcPointPressed(); break;
        case 1: _t->confirmDstPointPressed(); break;
        case 2: _t->calculatePressed(); break;
        case 3: _t->clearPressed(); break;
        case 4: _t->orthoChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 5: _t->applyTransformPressed(); break;
        case 6: _t->refinePressed(); break;
        case 7: _t->undoPressed(); break;
        case 8: _t->safePressed(); break;
        case 9: _t->timeoutSlot(); break;
        default: ;
        }
    }
}

const QMetaObject ManualRegistration::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_ManualRegistration.data,
      qt_meta_data_ManualRegistration,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *ManualRegistration::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *ManualRegistration::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_ManualRegistration.stringdata0))
        return static_cast<void*>(const_cast< ManualRegistration*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int ManualRegistration::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 10)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 10;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 10)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 10;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
