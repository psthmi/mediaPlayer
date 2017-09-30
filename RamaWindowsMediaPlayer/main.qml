import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 2.2


Window {
    visible: true
    width: 800
    height: 800
    title: "Windows Media Player"


    Rectangle {
        width: 800
        height: 800
        gradient: Gradient {
                  GradientStop { position: 0.0; color: "light blue" }
                  GradientStop { position: 0.33; color: "white" }
              }
    }

    Rectangle {
        width: 800
        height: 10
        x: 35
        y: 225
        color: "transparent"
        Text{
            text: "Choose the initial settings for Windows Media Player. You can change these settings in the Player later"
            font.family: "Helvetica"
            font.pointSize: 8
            color: "black"
        }
     }
    Rectangle{
        width: 800
        height: 2
        x: 0
        y: 200
        color: "light gray"
    }
    RadioButton {
        x: 130
        y: 250
        text: "Recommended settings"
        font.bold: true
        font.family: "Helvetica"
        font.pointSize: 8
    }

//    Rectangle {
//        width: 50
//        height: 10
//        x: 165
//        y: 250
//        color: "transparent"

//        Text{
//            id: text5
//            width: 600
//            text: "Recommended settings"
//            font.family: "Helvetica"
//            font.bold: true
//            font.pointSize: 8
//            color: "black"
//        }
//}
        Rectangle {
            width: 700
            height: 30
            x: 180
            y: 290
            color: "transparent"

            Text{
                id: text3
                width: 600
                text: "Make Windows Media Player the default program for playing media, automatically download usage rights and media information to update your media files, and send usage data from the Player to Microsoft."
                font.family: "Helvetica"
                wrapMode: Text.WordWrap
                font.pointSize: 8
                color: "black"
            }
    }
        RadioButton {
            x: 130
            y: 370
            text: "Custom settings"
            font.bold: true
            font.family: "Helvetica"
            font.pointSize: 8
        }

//        Rectangle {
//            width: 50
//            height: 10
//            x: 165
//            y: 350
//            color: "transparent"


//            Text {
//                id: text6
//                width: 600
//                text: "Custom settings"
//                font.family: "Helvetica"
//                font.bold: true
//                font.pointSize: 8
//                color: "black"
//            }
//    }

        Rectangle {
            width: 700
            height: 30
            x: 185
            y: 410
            color: "transparent"

            Text{
                id: text4
                width: 600
                text: "Customize privacy, playback, and online store settings."
                font.family: "Helvetica"
                wrapMode: Text.WordWrap
                font.pointSize: 8
                color: "black"
            }
    }
        Rectangle {
            width: 750
            height: 30
            x: 35
            y: 470
            color: "transparent"
            Text{
                width: 750
                text: "Usage data will be sent to Microsoft if you use recommended settings, but the information will not be used to identify or contact you."
                font.family: "Helvetica"
                font.pointSize: 8
                wrapMode: Text.WordWrap
                color: "black"
            }
         }
            Image {
                id: image1
                x: 35
                y: 35
                width: 150
                height: 150
                source: "WMP.png"

            }

            Rectangle {
                x: 200
                y: 35
                width: 500
                height: 20
                color: "transparent"
                Text {
                    id: text2
                    text: "Welcome to Windows Media Player"
                    font.family: "Helvetica"
                    font.pointSize: 12
                    color: "black"
                    font.bold: true
                }
            }

            Button{
                id: control
                x: 675
                y:720
                width:100
                height: 50
                text: "Next"


                 }
}

