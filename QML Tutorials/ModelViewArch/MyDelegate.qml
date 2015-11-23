import QtQuick 2.0
import QtQuick.Window 2.2

Component{

    Item {
        id: container
        width: Screen.width / 2
        height: Screen.height / 10

        Image{
            width: container.width
            height: container.height
            source: "http://www.thetvdb.com/banners/" + banner
            //anchors.left: baseRect.left
            //anchors.verticalCenter: baseRect.verticalCenter
            //anchors.leftMargin: 2
        }
    }

}

