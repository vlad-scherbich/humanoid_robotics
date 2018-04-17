/****************************************************************************
** Meta object code from reading C++ file 'organized_segmentation_demo.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../apps/include/pcl/apps/organized_segmentation_demo.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'organized_segmentation_demo.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_OrganizedSegmentationDemo_t {
    QByteArrayData data[15];
    char stringdata0[349];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_OrganizedSegmentationDemo_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_OrganizedSegmentationDemo_t qt_meta_stringdata_OrganizedSegmentationDemo = {
    {
QT_MOC_LITERAL(0, 0, 25), // "OrganizedSegmentationDemo"
QT_MOC_LITERAL(1, 26, 20), // "toggleCapturePressed"
QT_MOC_LITERAL(2, 47, 0), // ""
QT_MOC_LITERAL(3, 48, 25), // "usePlaneComparatorPressed"
QT_MOC_LITERAL(4, 74, 29), // "useEuclideanComparatorPressed"
QT_MOC_LITERAL(5, 104, 23), // "useRGBComparatorPressed"
QT_MOC_LITERAL(6, 128, 29), // "useEdgeAwareComparatorPressed"
QT_MOC_LITERAL(7, 158, 23), // "displayCurvaturePressed"
QT_MOC_LITERAL(8, 182, 25), // "displayDistanceMapPressed"
QT_MOC_LITERAL(9, 208, 21), // "displayNormalsPressed"
QT_MOC_LITERAL(10, 230, 24), // "disableRefinementPressed"
QT_MOC_LITERAL(11, 255, 26), // "usePlanarRefinementPressed"
QT_MOC_LITERAL(12, 282, 24), // "disableClusteringPressed"
QT_MOC_LITERAL(13, 307, 29), // "useEuclideanClusteringPressed"
QT_MOC_LITERAL(14, 337, 11) // "timeoutSlot"

    },
    "OrganizedSegmentationDemo\0"
    "toggleCapturePressed\0\0usePlaneComparatorPressed\0"
    "useEuclideanComparatorPressed\0"
    "useRGBComparatorPressed\0"
    "useEdgeAwareComparatorPressed\0"
    "displayCurvaturePressed\0"
    "displayDistanceMapPressed\0"
    "displayNormalsPressed\0disableRefinementPressed\0"
    "usePlanarRefinementPressed\0"
    "disableClusteringPressed\0"
    "useEuclideanClusteringPressed\0timeoutSlot"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_OrganizedSegmentationDemo[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      13,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   79,    2, 0x0a /* Public */,
       3,    0,   80,    2, 0x0a /* Public */,
       4,    0,   81,    2, 0x0a /* Public */,
       5,    0,   82,    2, 0x0a /* Public */,
       6,    0,   83,    2, 0x0a /* Public */,
       7,    0,   84,    2, 0x0a /* Public */,
       8,    0,   85,    2, 0x0a /* Public */,
       9,    0,   86,    2, 0x0a /* Public */,
      10,    0,   87,    2, 0x0a /* Public */,
      11,    0,   88,    2, 0x0a /* Public */,
      12,    0,   89,    2, 0x0a /* Public */,
      13,    0,   90,    2, 0x0a /* Public */,
      14,    0,   91,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void OrganizedSegmentationDemo::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        OrganizedSegmentationDemo *_t = static_cast<OrganizedSegmentationDemo *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->toggleCapturePressed(); break;
        case 1: _t->usePlaneComparatorPressed(); break;
        case 2: _t->useEuclideanComparatorPressed(); break;
        case 3: _t->useRGBComparatorPressed(); break;
        case 4: _t->useEdgeAwareComparatorPressed(); break;
        case 5: _t->displayCurvaturePressed(); break;
        case 6: _t->displayDistanceMapPressed(); break;
        case 7: _t->displayNormalsPressed(); break;
        case 8: _t->disableRefinementPressed(); break;
        case 9: _t->usePlanarRefinementPressed(); break;
        case 10: _t->disableClusteringPressed(); break;
        case 11: _t->useEuclideanClusteringPressed(); break;
        case 12: _t->timeoutSlot(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject OrganizedSegmentationDemo::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_OrganizedSegmentationDemo.data,
      qt_meta_data_OrganizedSegmentationDemo,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *OrganizedSegmentationDemo::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *OrganizedSegmentationDemo::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_OrganizedSegmentationDemo.stringdata0))
        return static_cast<void*>(const_cast< OrganizedSegmentationDemo*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int OrganizedSegmentationDemo::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 13)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 13;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 13)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 13;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
