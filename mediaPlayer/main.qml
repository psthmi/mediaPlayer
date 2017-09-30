import QtQuick 2.6
import QtQuick.Window 2.2
import QtLocation 5.3
import QtQuick.Controls 2.1




Window {
    visible: true
    width: 1920
    height: 1080
    title: qsTr("Windows Media Player")




    Rectangle{
        id:rect1
       visible:true
       x:0
       y:0
        width:1920
        height:232


        gradient: Gradient {
                  GradientStop { position: 0.0; color: "skyblue" }
                  GradientStop { position: 1.0; color: "white" }

              }


        Image {
            id:icon1
            width: 201
            height: 197


            source: "Dakirby309-Simply-Styled-Windows-Media-Player.ico"
        }

        Text{
                id:text1
                anchors.left: icon1.right
                anchors.top:rect1.top
                anchors.topMargin:23

                text: "Welcome to Windows Media Player"
                anchors.leftMargin: 18


                font.pointSize: 16
           }

    }
    Rectangle{
        id:line
        anchors.top:rect1.bottom
        height:1
        width:1920
        color:"#D5D8DC"
        border.color: "#D5D8DC"
    }

    Rectangle{
        id:rect2

        height:800
        width:1920
        x:155
        y:280

        Text{
            font.pointSize: 10
            id:starting

            text:"Choose the initial settings for Windows Media Player. You can change these settings in the Player later."


        }

        CheckBox{
            anchors.top:starting.bottom
            anchors.topMargin: 15;

            id: control
            text: "Recommendation Settings"
            font.pointSize: 10
            font.family: {color:"black"}
            font.bold: true


            checked: false

            Text{
                anchors.top:control.bottom
                id:recommendtext
                font.pointSize: 10

                text:"Make Windows Media Player the default program for playing media,automatically download\nusage rights and media information to update your media files,and send usage data from the\nPlayer to Microsoft"
               // horizontalAlignment: Text.AlignLeft

            }

            indicator: Rectangle {


                implicitWidth: 26
                implicitHeight: 26
                radius: 26/2
                border.color: "black"

                Rectangle {
                    width: 14
                    height: 14
                    x: 6
                    y: 6
                    radius: height/2
                    color: "black"
                    visible: control.checked
                }
            }



        }
        CheckBox{
            anchors.top:control.bottom
            anchors.topMargin: 100;

            id: control1
            text: "Custom Settings"
            font.pointSize: 10
            font.family: {color:"black"}
            font.bold: true


            checked: false

            Text{
                anchors.top:control1.bottom
                font.pointSize: 10

                text:"Customize privacy,playback, and online store settings"
                horizontalAlignment: Text.AlignRight

            }

            indicator: Rectangle {


                implicitWidth: 26
                implicitHeight: 26
                radius: 26/2
                border.color: "black"

                Rectangle {
                    width: 14
                    height: 14
                    x: 6
                    y: 6
                    radius: height/2
                    color: "black"
                    visible: control1.checked
                }
            }


    }

        Text{
            id:lastText
            anchors.top:control1.bottom
            anchors.topMargin: 50;
            font.pointSize: 10
            text:"Usage data will be sent to Microsoft if you use recommended settings but the information will not be used to\nidentify or contact you."
        }
        Text{
            id:underlineText
            anchors.top:lastText.bottom
            anchors.topMargin: 10;
            font.pointSize: 10
            text:"To learn more about Recommeded settings,read Privacy Statement online"
            color:"blue"
            font.underline: true
        }

        Rectangle{
            id:rectL
            height:50
            width:150
            anchors.top:lastText.bottom
            anchors.right:lastText.right
            anchors.topMargin:100
            border.color:"skyblue"
            color: "#D6EAF8"



            Text{
                id:finish
                text:"Finish"
                font.pointSize: 10

                anchors.centerIn: rectL


            }

    }
}
}

