import QtQuick 2.12

Rectangle {
  id: root
  anchors.fill: parent
  color: "#77FFAA"

  Column {
    anchors.fill: parent
    spacing: 0

    StyledTextInput {
      id: urlbar
      anchors.left: parent.left
      anchors.right: parent.right
      height: parent.height * 1 / 10
      font.pixelSize: 24
      placeholderText: qsTr("url")
    }

    Row {
      anchors.left: parent.left
      anchors.right: parent.right
      height: parent.height * 9 / 10
      spacing: 0

      Column {
        id: history
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        width: parent.width * 1 / 3
        spacing: 0

        Repeater {
          model: 10
          delegate: StyledLink {
            anchors.left: parent.left
            anchors.right: parent.right
            height: parent.height * 1 / 10
            text: qsTr("" + (model.index + 1))
            font.pixelSize: 16
          }
        }
      }

      Column {
        id: content
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        width: parent.width * 2 / 3
        spacing: 0

        Repeater {
          model: 10
          delegate: StyledLink {
            anchors.left: parent.left
            anchors.right: parent.right
            height: parent.height * 1 / 10
            font.pixelSize: 16
            text: qsTr("site #" + (model.index + 1))
          }
        }
      }
    }
  }
}
