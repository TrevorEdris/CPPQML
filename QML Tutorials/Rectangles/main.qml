import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    visible: true
    width: 360
    height: 360

    Rectangle {
        id: redRect
        width: parent.width
        height: parent.height
        color: "red"
        anchors.centerIn: parent
        MyButton{
            width: redRect.width / 3
            height: redRect.height / 8
            anchors.centerIn: redRect

            backColor: "blue"
            borderColor: "green"
            borderWidth: 4
            radius: 20

            text: "My Custom Text"
            textColor: "black"
            fontSize: Math.round(redRect.height / 18)

            hoverEnabled: true

            enteredColor: "green"
            enteredBorderColor: "white"
            enteredScale: 1.5


            exitedColor: "blue"
            exitedBorderColor: "green"
            exitedScale: 1

            onButtonClicked: console.log("Signal received")
        }
    }



    /*Rectangle {
        id: blueRect
        color: "blue"
        opacity: 1 // 0 to 1 range
        width: redRect.width / 2
        height: redRect.height / 8
        anchors.centerIn: redRect
        border.color: "black"
        border.width: 4
        radius: 20

        /*gradient: Gradient{
            GradientStop{position: 0.0; color: "lightsteelblue"}
            GradientStop{position: 1.0; color: "blue"}
        }*/
/*
    }

    Text {
        id: rectText
        anchors.centerIn: blueRect
        text: "Imma <b>rectangle</b>"
        color: "white"
        font.pixelSize: Math.round(blueRect.height / 3)
        //font.bold: true
        //width: blueRect.width
        //wrapMode: Text.WordWrap
    }


    MouseArea {
        id: blueRectMouseArea
        anchors.fill: blueRect
        hoverEnabled: true
        onEntered: {
            blueRect.color = "brown"
            blueRect.rotation = 45
            rectText.rotation = 45
        }
        onExited: {
            blueRect.color = "blue"
            blueRect.rotation = 0
            rectText.rotation = 0
        }
        onClicked: {
            //Qt.quit();
            console.log("Hello from QML");
        }
    }*/

}

