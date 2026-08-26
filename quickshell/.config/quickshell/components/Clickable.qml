import QtQuick

MouseArea {
    signal leftClick
    signal rightClick

    anchors.fill: parent

    acceptedButtons: Qt.LeftButton | Qt.RightButton
    cursorShape: Qt.PointingHandCursor

    onClicked: mouse => {
        if (mouse.button == Qt.LeftButton)
            leftClick();
        else if (mouse.button == Qt.RightButton)
            rightClick();
    }
}
