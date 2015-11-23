import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    id: rootWindow
    width: 360
    height: 360
    visible: true
    color: "white"

    Grid{
        spacing: 20
        columns: 3
        rows: 3
        Repeater{
            model: 9

            Rectangle{
                width: rootWindow.width / 3.3
                height: rootWindow.height / 3.3
                border.width: 1
                color: "blue"
                visible: true
            }
        }

    }
}

