import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Rectangle {
        id: rect1ID
        width: 150
        height: 150
        radius: 10
        color: "yellow"
        anchors.centerIn: parent

        Rectangle {
            id: rect11ID
            width: 125
            height: 125
            anchors.centerIn: parent
            color: "blue"

            Text {
                text: "!"
                anchors.centerIn: parent
            }
        }
    }

    Rectangle {
        id: rect2ID
        width: 150
        height: 150
        radius: 10
        x: rect1ID.x - width - 25
        y: rect1ID.y
        color: "gray"

        Rectangle {
            id: rect21ID
            width: 125
            height: 125
            anchors.centerIn: parent
            color: "green"

            Text {
                text: "world"
                anchors.centerIn: parent
            }
        }
    }

    Rectangle {
        id: rect3ID
        width: 150
        height: 150
        radius: 10
        x: rect2ID.x - width - 25
        y: rect2ID.y
        color: "blue"

        Rectangle {
            id: rect31ID
            width: 125
            height: 125
            anchors.centerIn: parent
            color: "red"

            Text {
                text: "Hello"
                anchors.centerIn: parent
            }
        }
    }

    Rectangle {
        id: rect4ID
        width: 150
        height: 150
        radius: 40
        x: rect1ID.x + rect1ID.width + 25
        y: rect3ID.y
        color: "gray"

        Rectangle {
            id: rect41ID
            width: 125
            height: 125
            radius: 40
            anchors.centerIn: parent
            color: "purple"

            Text {
                text: "Musa"
                anchors.centerIn: parent
            }
        }
    }

    Rectangle {
        id: rect5ID
        width: 150
        height: 150
        radius: 150
        x: rect4ID.x + rect4ID.width + 25
        y: rect4ID.y
        color: "black"

        Rectangle {
            id: rect51ID
            width: 125
            height: 125
            radius: 125
            anchors.centerIn: parent
            color: "pink"

            Text {
                text: "Mahmoud"
                anchors.centerIn: parent
            }
        }
    }
}
