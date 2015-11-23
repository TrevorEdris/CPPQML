import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    id: rootWindow
    width: 360
    height: 360
    visible: true
    color: "black"

    Column{
        spacing: 10
        Row{
            spacing: 10
            Rectangle{
                id: rect00
                width: 360 / 3.3
                height: 360 / 3.3
                color: activeFocus ? "red" : "grey"

                focus: true

                KeyNavigation.up: rect20
                KeyNavigation.down: rect10
                KeyNavigation.left: rect02
                KeyNavigation.right: rect01
            }

            Rectangle{
                id: rect01
                width: 360 / 3.3
                height: 360 / 3.3
                color: activeFocus ? "blue" : "grey"

                KeyNavigation.up: rect21
                KeyNavigation.down: rect11
                KeyNavigation.left: rect00
                KeyNavigation.right: rect02
            }

            Rectangle{
                id: rect02
                width: 360 / 3.3
                height: 360 / 3.3
                color: activeFocus ? "green" : "grey"

                KeyNavigation.up: rect22
                KeyNavigation.down: rect12
                KeyNavigation.left: rect01
                KeyNavigation.right: rect00
            }
        }

        Row{
            spacing: 10
            Rectangle{
                id: rect10
                width: 360 / 3.3
                height: 360 / 3.3
                color: activeFocus ? "green" : "grey"

                KeyNavigation.up: rect00
                KeyNavigation.down: rect20
                KeyNavigation.left: rect12
                KeyNavigation.right: rect11
            }

            Rectangle{
                id: rect11
                width: 360 / 3.3
                height: 360 / 3.3
                color: activeFocus ? "red" : "grey"

                KeyNavigation.up: rect01
                KeyNavigation.down: rect21
                KeyNavigation.left: rect10
                KeyNavigation.right: rect12
            }

            Rectangle{
                id: rect12
                width: 360 / 3.3
                height: 360 / 3.3
                color: activeFocus ? "blue" : "grey"

                KeyNavigation.up: rect02
                KeyNavigation.down: rect22
                KeyNavigation.left: rect11
                KeyNavigation.right: rect10
            }
        }

        Row{
            spacing: 10
            Rectangle{
                id: rect20
                width: 360 / 3.3
                height: 360 / 3.3
                color: activeFocus ? "blue" : "grey"

                KeyNavigation.up: rect10
                KeyNavigation.down: rect00
                KeyNavigation.left: rect22
                KeyNavigation.right: rect21
            }

            Rectangle{
                id: rect21
                width: 360 / 3.3
                height: 360 / 3.3
                color: activeFocus ? "green" : "grey"

                KeyNavigation.up: rect11
                KeyNavigation.down: rect01
                KeyNavigation.left: rect20
                KeyNavigation.right: rect22
            }

            Rectangle{
                id: rect22
                width: 360 / 3.3
                height: 360 / 3.3
                color: activeFocus ? "red" : "grey"

                KeyNavigation.up: rect12
                KeyNavigation.down: rect02
                KeyNavigation.left: rect21
                KeyNavigation.right: rect20
            }
        }
    }

}

