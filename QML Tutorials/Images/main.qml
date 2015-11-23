import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    id: window
    visible: true
    width: Screen.width
    height: Screen.height

    Rectangle{
        width: window.width
        height: window.height
        DispImage{}
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }


}

