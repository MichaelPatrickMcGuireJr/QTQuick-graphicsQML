import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.6

Window {
    visible: true
    width: 319
    height: 350
    title: qsTr("Hello World")

    property double needleAngle: 0;

    Rectangle {
        x: 0
        y: 1
        width:319
        height:312
        color: "#f63838"
        transformOrigin: Item.Top
        Image {
            source:"UI1_images/speedometer.png"
            id:speedometer
            x:0; y:1
            width:319
            height:312
            opacity: 1
            z: 49.457
        }
        Image {
            source:"UI1_images/arrow.png"
            id:arrow
            x:106 ; y:138
            width:110
            height:106
            z: 71.196
            transform: Rotation{origin.x:53; origin.y:10; angle:needleAngle}
            smooth:true
        }
    }

    Button {
        id: button_down
        x: 10
        y: 314
        text: qsTr("DOWN")
        onClicked: needleAngle -=1
    }

    Button {
        id: button_up
        x: 231
        y: 313
        text: qsTr("UP")
        onClicked: needleAngle +=1
    }


}
