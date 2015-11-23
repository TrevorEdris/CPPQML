import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    visible: true
    width: 360
    height: 360
    color: "#6c0505"

    Rectangle {
        id: rectangle1
        x: 150
        y: 122
        width: 60
        height: 138
        color: "#000000"
    }

    Rectangle {
        id: rectangle2
        x: 162
        y: 132
        width: 36
        height: 35
        color: "#ff0000"
        radius: 20
    }

    Rectangle {
        id: rectangle3
        x: 162
        y: 173
        width: 36
        height: 35
        color: "#f4fb76"
        radius: 20
    }

    Rectangle {
        id: rectangle4
        x: 162
        y: 214
        width: 36
        height: 35
        color: "#04c459"
        radius: 20
    }

}

