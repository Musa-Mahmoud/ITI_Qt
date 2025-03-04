import QtQuick
import QtQuick.Controls

Page {
    id: pageHomeId

    Item {
        id: itemLeftPanelId
        x: parent.x
        y: parent.y
        width: parent.width / 6
        height: parent.height

        Image {
            id: imageItiLogoId
            source: "qrc:/assets/logo-iti.svg"
            x: parent.x + (parent.width / 3.5)
            y: parent.y + (parent.height / 16)
            width: parent.width - (parent.width / 3.5)
            height: parent.height / 6
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Item {
        id: itemMiddlePanelId
        x: itemLeftPanelId.x + itemLeftPanelId.width
        y: parent.y
        width: parent.width * 4 / 6
        height: parent.height

        Image {
            id: imgHomeLogoId
            source: "qrc:/assets/icon-home.png"
            y: parent.y + (parent.height / 9)
            width: parent.width / 6
            height:imgHomeLogoId.width
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtSettingsId
            text: qsTr("Settings")
            anchors.horizontalCenter: parent.horizontalCenter
            y: imgHomeLogoId.y + imgHomeLogoId.height + (imgHomeLogoId.height / 2)
            font {
                pixelSize: 40
                bold: true
            }
        }

        Button {
            id: btnCapsLockId
            text: qsTr("CapsLock")
            anchors.horizontalCenter: parent.horizontalCenter
            y: txtSettingsId.y + txtSettingsId.height + (txtSettingsId.height / 1)

            onClicked: {
                stackViewMainId.push("CapsLockPage.qml")
            }
        }
    }

    Item {
        id: itemRightPanelId
        x: itemMiddlePanelId.x + itemMiddlePanelId.width
        y: parent.y
        width: parent.width / 6
        height: parent.height

        Text {
            id: txtNameId
            text: qsTr("By:\nMusa Mahmod")
            y: parent.y + (parent.height * 5 / 6)
            height: parent.height / 6
            font {
                family: fntBlackOpsOne.name
                pixelSize: parent.width / 8
                bold: true
            }
        }
    }
}
