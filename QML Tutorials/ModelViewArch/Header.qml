import QtQuick 2.0
import QtQuick.Window 2.2

Component{
    Rectangle {
        id: headRect
        width: Screen.width / 2
        height: Screen.height / 8
        color: "grey"

        Text{
            text: "Fruits"
            color: "black"
            font.pixelSize: 48
            font.bold: true
            anchors.centerIn: headRect
        }

    }
}
