import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Task 2")

    Column {
        spacing: 10

        Row {
            spacing: 10

            Item {
                id: itemTLId
                width: Window.width / 2
                height: Window.height / 2

                Image {
                    id: imgTLId
                    source: "file:ImageWD.png"
                    visible: false
                    width: parent.width
                    height: parent.height
                    anchors.centerIn: parent
                }

                Button {
                    id: btnTLId
                    text: qsTr("Working dir")
                    visible: true
                    anchors.centerIn: parent
                    onClicked: {
                        btnTLId.visible = false
                        imgTLId.visible = true
                    }
                }
            }

            Item {
                id: itemTRId
                width: Window.width / 2
                height: Window.height / 2

                Image {
                    id: imgTRId
                    source: "file:/home/musa/Desktop/ITI/ITI9Month/Repos/ITI_Qt/Task_02/assests/ImageFP.png"
                    visible: false
                    width: parent.width
                    height: parent.height
                    anchors.centerIn: parent
                }

                Button {
                    id: btnTRId
                    visible: true
                    text: qsTr("Full path")
                    anchors.centerIn: parent
                    onClicked: {
                        btnTRId.visible = false
                        imgTRId.visible = true
                    }
                }
            }
        }

        Row {
            Item {
                id: itemBLId
                width: Window.width / 2
                height: Window.height / 2

                Image {
                    id: imgBLId
                    source: "qrc:/assests/ImageER.png"
                    visible: false
                    width: parent.width
                    height: parent.height
                    anchors.centerIn: parent
                }

                Button {
                    id: btnBLId
                    visible: true
                    text: qsTr("Resources")
                    anchors.centerIn: parent
                    onClicked: {
                        btnBLId.visible = false
                        imgBLId.visible = true
                    }
                }
            }

            Item {
                id: itemBRId
                width: Window.width / 2
                height: Window.height / 2
                x: itemTRId.x
                y: itemBLId.y

                Image {
                    id: imgBRId
                    source: "https://i.ibb.co/pjky6gfm/ImageNT.png"
                    visible: false
                    width: parent.width
                    height: parent.height
                    anchors.centerIn: parent
                }

                Button {
                    id: btnBRId
                    visible: true
                    text: qsTr("Internet")
                    anchors.centerIn: parent
                    onClicked: {
                        btnBRId.visible = false
                        imgBRId.visible = true
                    }
                }
            }
        }
    }
}
