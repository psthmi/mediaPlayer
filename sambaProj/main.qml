import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    visible: true
    width: 500
    height: 400
    title: qsTr("Quite Skype?")

    Rectangle
    {
        id: rect1
        width: 500
        height: 70
        color: " lightsteelblue"
    }

    Rectangle
    {
        id: rect2
        width: 500
        height: 70
        anchors.bottom: parent.bottom
        color: " lightsteelblue"
    }

    Image {
        id: img
        anchors.top: parent.top
        anchors.topMargin: 5
        anchors.left: parent.left
        anchors.leftMargin: 5
        width: 60
        height: 60
        source: "qrc:/../../Desktop/Skype-logo-S-icon-640x480.png"
    }

    TextEdit {
        id: textEdit1
        text: qsTr(" Sure you want to quit Skype?")
        font.family: "Helvetica"
        font.pointSize: 12
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
    }

    TextEdit {
        id: textEdit2
        text: qsTr(" You won't be able to send or receive instant messages and ")
        font.pointSize: 8
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 100
    }
    TextEdit {
        id: textEdit3
        text: qsTr(" calls if you do.  ")
        font.pointSize: 8
        verticalAlignment: Text.AlignVCenter
        anchors.left: parent.left
        anchors.top: textEdit2.top
        anchors.topMargin: 30
        anchors.leftMargin: 75

    }

    Button
    {
        id:button1
        text: "Cancel"
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.rightMargin: 50
        anchors.bottomMargin: 25
    }

    Button
    {
        id:button2
        text: "Quit"
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.leftMargin: 250
        anchors.bottomMargin: 25
    }

}
