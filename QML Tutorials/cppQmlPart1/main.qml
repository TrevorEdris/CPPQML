import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    visible: true
    width: 720
    height: 720

    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }

    // Text element
    Text {
        // text property
        text: "This is where the app 'lives'\n" + appPath;
        anchors.centerIn: parent
    }

    Text {
        text: "Movies belong here \n" + moviesPath;
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 28
    }
/*
    FileReader{
        id: reader

        onFileNameChanged: // do something
    }

    Component.onCompleted: {
        reader.readFile("/opt/bin/newFile.txt")
    }
*/
}

