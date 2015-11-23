import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    id: rootWindow
    visible: true
    width: Screen.width
    height: Screen.height
    color: "black"

    /*
    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }

    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }*/
    Rectangle {
        id: rect1
        x: 388
        y: 291
        width: 310
        height: 44
        color: "white"
    }

    TextInput {
        id: txtInput
        anchors.fill: rect1
        text: "Default Text"
        color: "black" // text color

        // When enter is pressed
        onAccepted: textAfter.text = "Your name is: " + text
    }

    Text {
        id: textAfter
        font.pixelSize: 48
        text: ""
        color: "white"
        anchors.top: txtInput.bottom
        anchors.topMargin: 20
    }

    Text {
        id: textPrompt
        x: 388
        y: 213
        width: 310
        height: 72
        color: "#ffffff"
        text: qsTr("Please enter a name:")
        styleColor: "#ffffff"
        font.pixelSize: 33
    }
}

