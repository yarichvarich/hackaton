import QtQuick 2.12
import QtQuick.Controls 2.12

TextField {
  hoverEnabled: true

  background: Rectangle {
    anchors.fill: parent
    color: "#FFFFFF"
    border.width: parent.hovered ? 2 : (parent.activeFocus ? 3 : 1)
    border.color: parent.activeFocus ? "#55AAFF" : "#CCCCCC"
  }

  onFocusChanged: if (focus) selectAll()
}
