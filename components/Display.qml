import QtQuick 2.0

Rectangle {

    color: "#111111"

    Text {
        id: display
        text: CalcEngine.result
        font.pixelSize: 50
        font.bold: true
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.verticalCenter: parent.verticalCenter
        color: "white"
    }
}
