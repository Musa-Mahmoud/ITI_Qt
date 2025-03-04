import QtQuick
import QtQuick.Controls

Window {
    id: windowMainId
    width: 640
    height: 480
    visible: true
    title: qsTr("CapsLock")

    FontLoader {
        id: fntBlackOpsOne
        source: "qrc:/assets/BlackOpsOne-Regular.ttf"
    }

    StackView {
        id: stackViewMainId
        initialItem: "HomePage.qml"
        anchors.fill: parent
    }
}
