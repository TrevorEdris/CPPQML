import QtQuick 2.0

Item {

    id: button

    // properties needed to make rectangle
    property string backColor
    property string borderColor
    property int borderWidth
    property int radius

    // properties needed to make the text
    property string text
    property string textColor
    property int fontSize

    // properties to be changed onEnter
    property string enteredColor
    property string enteredBorderColor
    property double enteredScale

    // properties to be changed onExit
    property string exitedColor
    property string exitedBorderColor
    property double exitedScale

    property bool hoverEnabled: false

    // Signals
    signal buttonClicked

    Rectangle {
        id: btnRect
        height: parent.height
        width: parent.width
        color: button.backColor
        //anchors.centerIn: redRect
        radius: button.radius
        border.color: button.borderColor
        border.width: button.borderWidth
    }

    MouseArea {
        id: buttonMouseArea
        anchors.fill: btnRect
        hoverEnabled: button.hoverEnabled
        onEntered: {
            btnRect.scale = button.enteredScale
            btnRect.color = button.enteredColor
            btnRect.border.color = button.enteredBorderColor
        }

        onExited: {
            btnRect.scale = button.exitedScale
            btnRect.color = button.exitedColor
            btnRect.border.color = button.exitedBorderColor
        }

        onClicked: {
            buttonClicked();
        }
    }

    Text {
        id: mainText
        font.pixelSize: button.fontSize
        anchors.centerIn: buttonMouseArea
        text: button.text
        color: button.textColor
        wrapMode: Text.wordWrap
    }
}

