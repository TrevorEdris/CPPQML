import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.XmlListModel 2.0

Window {
    id: rootWindow
    width: Screen.width / 2
    height: Screen.height / 2
    visible: true

    ListView{
        width: rootWindow.width
        height: rootWindow.height

        spacing: 10
        model: xmlListModel
        delegate: del
    }

    Header{id: head}
    MyDelegate{id: del}
    XmlListModel{
        id: xmlListModel
        source: "http://thetvdb.com/api/GetSeries.php?seriesname=star%20trek"
        query: "/Data/Series"

        XmlRole{ name: "banner"; query: "banner/string()" }

        onStatusChanged:{
            if(status === XmlListModel.Loading){
                console.log("Loading");
            }

            if(status === XmlListModel.Ready){
                console.log("Loaded " + source);
            }

            if(status === XmlListModel.Error){
                console.log("Xml Error: " + errorString());
            }
        }
    }
}

