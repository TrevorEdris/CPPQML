/****************************************************************************
** Resource object code
**
** Created by: The Resource Compiler for Qt version 5.5.0
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

static const unsigned char qt_resource_data[] = {
  // D:/CyberMetrix/QML Tutorials/Signals/main.qml
  0x0,0x0,0x0,0xe6,
  0x0,
  0x0,0x3,0x15,0x78,0x9c,0xad,0xce,0xdb,0x6e,0x82,0x40,0x10,0x6,0xe0,0x7b,0x12,
  0xde,0x61,0x82,0xf7,0x66,0xd9,0x93,0xed,0xbe,0x5,0xbd,0xe9,0xb5,0x2c,0x8b,0x4c,
  0xa4,0xd2,0x2c,0x4b,0xd5,0x18,0xdf,0x5d,0xe,0x22,0x10,0x8d,0x87,0xb6,0x73,0xb1,
  0xc9,0xff,0xcf,0x66,0xf2,0xe1,0xd7,0x77,0x61,0x1d,0x44,0x2e,0xaa,0x50,0xaf,0x81,
  0xce,0x99,0xef,0xe1,0xa4,0x9b,0x7f,0xe2,0x26,0x29,0xb6,0xf5,0x8a,0xfa,0x9e,0xef,
  0x9d,0xd3,0xc1,0xf7,0xa0,0x9e,0x1f,0x2c,0x31,0xce,0x8d,0x2,0x67,0x2b,0xd3,0x55,
  0x5b,0x4c,0x5c,0xa6,0x80,0x49,0xd2,0xe5,0xcc,0xe0,0x2a,0x73,0xa3,0x42,0x17,0x79,
  0x61,0x15,0x4,0x33,0xa9,0x89,0x20,0x22,0x68,0xae,0x36,0xfd,0x87,0xd1,0x6e,0xb9,
  0x59,0xe5,0xa6,0x3f,0xde,0xc,0x26,0xa,0x6c,0xbf,0x8,0x87,0x7e,0xa7,0x20,0x14,
  0x64,0xc8,0xfb,0x3a,0x53,0x3a,0xe4,0xb3,0x42,0x8e,0xbe,0xf4,0x90,0x90,0xbd,0xd,
  0xe5,0x5,0x43,0xda,0x9,0xba,0xcd,0xf1,0x79,0x13,0x9d,0x9a,0x24,0x9d,0x9a,0xd8,
  0xb5,0x89,0xc9,0x6b,0x13,0x13,0x37,0x48,0x69,0x3a,0x22,0x35,0x63,0x97,0x9,0x56,
  0xa5,0x2,0x4a,0x5e,0x66,0xb2,0xfb,0xcc,0x5,0xfb,0x3,0x93,0xa7,0xf1,0x42,0xfe,
  0xf,0x93,0xdf,0x65,0xd2,0x90,0xff,0x9e,0x49,0xb8,0xe6,0xe2,0xfd,0x11,0xb3,0x7d,
  0x4e,0x4c,0x9b,0xad,0xf7,
  
};

static const unsigned char qt_resource_name[] = {
  // main.qml
  0x0,0x8,
  0x8,0x1,0x5a,0x5c,
  0x0,0x6d,
  0x0,0x61,0x0,0x69,0x0,0x6e,0x0,0x2e,0x0,0x71,0x0,0x6d,0x0,0x6c,
  
};

static const unsigned char qt_resource_struct[] = {
  // :
  0x0,0x0,0x0,0x0,0x0,0x2,0x0,0x0,0x0,0x1,0x0,0x0,0x0,0x1,
  // :/main.qml
  0x0,0x0,0x0,0x0,0x0,0x1,0x0,0x0,0x0,0x1,0x0,0x0,0x0,0x0,

};

#ifdef QT_NAMESPACE
#  define QT_RCC_PREPEND_NAMESPACE(name) ::QT_NAMESPACE::name
#  define QT_RCC_MANGLE_NAMESPACE0(x) x
#  define QT_RCC_MANGLE_NAMESPACE1(a, b) a##_##b
#  define QT_RCC_MANGLE_NAMESPACE2(a, b) QT_RCC_MANGLE_NAMESPACE1(a,b)
#  define QT_RCC_MANGLE_NAMESPACE(name) QT_RCC_MANGLE_NAMESPACE2( \
        QT_RCC_MANGLE_NAMESPACE0(name), QT_RCC_MANGLE_NAMESPACE0(QT_NAMESPACE))
#else
#   define QT_RCC_PREPEND_NAMESPACE(name) name
#   define QT_RCC_MANGLE_NAMESPACE(name) name
#endif

#ifdef QT_NAMESPACE
namespace QT_NAMESPACE {
#endif

bool qRegisterResourceData(int, const unsigned char *, const unsigned char *, const unsigned char *);

bool qUnregisterResourceData(int, const unsigned char *, const unsigned char *, const unsigned char *);

#ifdef QT_NAMESPACE
}
#endif

int QT_RCC_MANGLE_NAMESPACE(qInitResources_qml)();
int QT_RCC_MANGLE_NAMESPACE(qInitResources_qml)()
{
    QT_RCC_PREPEND_NAMESPACE(qRegisterResourceData)
        (0x01, qt_resource_struct, qt_resource_name, qt_resource_data);
    return 1;
}

int QT_RCC_MANGLE_NAMESPACE(qCleanupResources_qml)();
int QT_RCC_MANGLE_NAMESPACE(qCleanupResources_qml)()
{
    QT_RCC_PREPEND_NAMESPACE(qUnregisterResourceData)
       (0x01, qt_resource_struct, qt_resource_name, qt_resource_data);
    return 1;
}

namespace {
   struct initializer {
       initializer() { QT_RCC_MANGLE_NAMESPACE(qInitResources_qml)(); }
       ~initializer() { QT_RCC_MANGLE_NAMESPACE(qCleanupResources_qml)(); }
   } dummy;
}
