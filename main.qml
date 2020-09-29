import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

import "./components"

Window {
    width: 500
    height: 600
    visible: true
    title: qsTr("Calculator")

    ColumnLayout{
        anchors.fill: parent

        Display{
            Layout.fillWidth: true
            Layout.minimumHeight: 80
            Layout.alignment: Qt.AlignTop
        }


        ButtonPanel{
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

    }

}
