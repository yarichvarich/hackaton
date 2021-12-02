import QtQuick 2.12
import QtQuick.Controls 2.12

Text {
    horizontalAlignment: Text.AlignLeft
    verticalAlignment: Text.AlignVCenter
    padding: 15

    MouseArea {
        id: mouse_area
        anchors.fill: parent
        hoverEnabled: true
        onHoveredChanged: parent.font.underline = !parent.font.underline
    }
}
