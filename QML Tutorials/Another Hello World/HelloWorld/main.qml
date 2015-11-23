import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    visible: true

    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }

    Text {
        id: helloWorldTxt
        text: qsTr("Hello World")
        anchors.verticalCenterOffset: 7
        anchors.horizontalCenterOffset: 0
        anchors.centerIn: parent
    }
}

