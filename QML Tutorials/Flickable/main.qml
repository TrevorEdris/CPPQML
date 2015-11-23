import QtQuick 2.3
import QtQuick.Window 2.2

Window{
    id: rootWindow
    width: Screen.width
    height: Screen.height
    visible: true

    Item{
        id: rootItem
        width: Screen.width
        height: Screen.height
        focus: true

        Keys.onPressed: {
            if(event.key === Qt.Key_Up){
                event.accepted = true;
                player.y = player.y - 10
            }

            if(event.key === Qt.Key_Down){
                event.accepted = true;
                player.y = player.y + 10
            }

            if(event.key === Qt.Key_Left){
                event.accepted = true;
                player.x = player.x - 10
            }

            if(event.key === Qt.Key_Right){
                event.accepted = true;
                player.x = player.x + 10
            }

        }

        Flickable {
            width: Screen.width
            height: Screen.height
            contentHeight: Screen.height * 4
            contentWidth: Screen.width

            interactive: true
            boundsBehavior: Flickable.StopAtBounds

            contentY: Math.min(contentHeight - height, Math.max(0, player.y - height / 2))

            Image {

                id: field
                source:"Artwork/football_field.png"
                anchors.fill: parent
                sourceSize.width: Screen.width
                sourceSize.height: Screen.height * 4

            }

            Image {
                id: player
                source: "Artwork/mario_running.gif"
                x: Screen.width / 2
                y: Screen.height / 2
            }

        }// End flickable
    }// End item
}// End window

