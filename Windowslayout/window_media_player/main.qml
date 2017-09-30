import QtQuick 2.8
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0
import QtQuick.Controls 1.4

Window {
    visible: true
    height: 440
    width: 590
    title: "Windows Media Player"

    LinearGradient {
           anchors.fill: parent
           start: Qt.point(0,-100)
           end: Qt.point(0,100)
           gradient: Gradient {
               GradientStop { position: 0.0; color: "lightblue" }
               GradientStop { position: 1.0; color: "white" }
           }
       }
    Image
    {
    anchors.top:parent.top
    anchors.topMargin:-10
    width: 115; height: 120
    source: "wmp.png"

    }
    Rectangle
    {
    id:firstline
    anchors.top:parent.top
    anchors.topMargin:114
    height:1
    width: parent.width
    color: "lightgray"
    }

    Label
    {   anchors.topMargin: 10
        anchors.leftMargin: 100
        anchors.fill: parent
        text: "Welcome to Windows Media Player"
        font.pointSize: 12
        font.bold: true
    }

    Text {
        id: text1
        anchors.top:firstline.bottom
        anchors.topMargin:15
        anchors.left: parent.left
        anchors.leftMargin:15
        text: qsTr("Choose the initial setting for Windows Media Player. You can change these setting in the Player later.")
    }


    RadioButton {
        id: redioButton1
        anchors.top:firstline.bottom
        anchors.topMargin:56
        anchors.left: parent.left
        anchors.leftMargin:85
                text: "Recommended settings"
        onClicked:
        {
        text3.x =50
        }
     }

    Text
    {
        Behavior on x {

                    NumberAnimation {
                        //This specifies how long the animation takes
                        duration: 600
                        to:160

                    }
                }

        id: text3
        anchors.top:firstline.bottom
        anchors.topMargin:75
        anchors.left: parent.left
        anchors.leftMargin:105
        text: qsTr("Make Windows Media Player the defulat program for playing media, automatically download \nusage rights and media information to update you media file, and send usage data form the \nPlayer to Microsoft.")







    }

    RadioButton
    {

    anchors.top:firstline.bottom
    anchors.topMargin:131
    anchors.left: parent.left
    anchors.leftMargin:85
    text: "Custom settings"
    }

    Text
    {
        id: text4
        anchors.top:firstline.bottom
        anchors.topMargin:150
        anchors.left: parent.left
        anchors.leftMargin:105
        text: qsTr("Customize privacy, playback, and online store setting")
    }

    Text
    {
        id: text5
        anchors.top:firstline.bottom
        anchors.topMargin:200
        anchors.left: parent.left
        anchors.leftMargin:15
        text: qsTr("Usage data will be sent to Microsoft if you use recommended setting, but the information will not be used to \nidentify or contact you.")
    }

    Button
    {
    visible: true
    enabled: false
    text: "Finish"
    height:22
    width: 77
    anchors.bottom: parent.bottom
    anchors.right:parent.right
    anchors.bottomMargin:5
    anchors.rightMargin: 5
    }
    }
