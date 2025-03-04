import QtQuick
import QtQuick.Controls

Page {
    property string capsStingState: (capsLock.capsState === true) ? "on" : "off"

    id: pageCapsLockId

    Image {
        id: imgCapsStateId
        source: (switchCapsLockStateId.checked === true) ? "qrc:/assets/icon-ledon.png" : "qrc:/assets/icon-ledoff.png"
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.y + (parent.height / 6)
        width: parent.width / 6
        height: imgCapsStateId.width
    }

    Switch {
        id: switchCapsLockStateId
        checked: capsLock.capsState
        text: qsTr("CapsLock is: " + capsStingState)
        anchors.horizontalCenter: parent.horizontalCenter
        y: imgCapsStateId.y + imgCapsStateId.height + (parent.height / 8)

        onToggled: {
            capsLock.setCapsState(checked)
            capsStingState = (checked === true) ? "on" : "off"
            imgCapsStateId.source = (checked === true) ? "qrc:/assets/icon-ledon.png" : "qrc:/assets/icon-ledoff.png"
        }
    }

    Button {
        id: btnBackHomeId
        text: qsTr("Back")
        anchors.horizontalCenter: parent.horizontalCenter
        y: switchCapsLockStateId.y + switchCapsLockStateId.height + (parent.height / 8)

        onClicked: {
            stackViewMainId.pop()
        }
    }
}
