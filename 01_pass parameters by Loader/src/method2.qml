import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4

Rectangle {
    id: rect
    color: "red"
    width: 100
    height: 100

    property var fileName;

    Behavior on color {
        NumberAnimation {
            target: rect
            property: "width"
            to: (rect.width + 200)
            duration: 0
        }
    }

    Component.onCompleted: {
        console.log( "fileName:",fileName );
    }
}
