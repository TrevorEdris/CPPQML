import QtQuick 2.3
import QtQuick.Window 2.0

Item {
    id: root
    width: Screen.width
    height: Screen.height

    Image {
        id: img
        source: "ImageFiles/Purdue_Lunabotics_Background.jpg"
        sourceSize.width: root.width
        sourceSize.height: root.height
        anchors {
            horizontalCenter: root.horizontalCenter
            verticalCenter: root.verticalCenter
        }

        onProgressChanged: {
            if(progress < 1)
                txt.text = "Loading"
        }

        onStatusChanged: {
            if(status === Image.Ready){
                txt.text = "Image loaded from:\n" + source
            }
        }
    }

    Text {
        id: txt
        text: "Empty"
        anchors{
            top: img.bottom
            topMargin: 10

            horizontalCenter: img.horizontalCenter
        }
    }
}

