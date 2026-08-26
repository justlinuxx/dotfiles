import Quickshell
import "./panel/"
import QtQuick
import QtQuick.Layouts
import qs
import qs.components

PanelWindow {
    id: panel

    anchors {
        top: true
        left: true
        right: true
    }

    implicitHeight: 30

    Rectangle {
        anchors.fill: parent
        color: Config.colors.bg

        RowLayout {
            anchors {
                left: parent.left
                verticalCenter: parent.verticalCenter
                leftMargin: 12
            }

            Workspaces {}
        }

        RowLayout {
            anchors.centerIn: parent
            Time {}
        }

        RowLayout {
            anchors {
                right: parent.right
                verticalCenter: parent.verticalCenter
                rightMargin: 12
            }

            spacing: 16

            Bluetooth {}
            Network {}
            Audio {}
            Battery {}
        }
    }
}
