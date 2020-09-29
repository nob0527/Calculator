import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15


Item {

    GridLayout{
        anchors.fill: parent
        rows : 5
        columns: 4


        Repeater{
            model: [
                "c", "+/-", "%", "/",
                "7", "8", "9", "*",
                "4", "5", "6", "-",
                "1", "2", "3", "+",
                "0", ".", "="
            ]

            Button{
                Layout.fillHeight: true
                Layout.fillWidth: true
                text: modelData
                font.pixelSize: 30
            }
        }

    }

}
